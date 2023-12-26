import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PharmacyMedicinesPage extends StatefulWidget {
  final String pharmacyId;

  const PharmacyMedicinesPage(this.pharmacyId, {Key? key}) : super(key: key);

  @override
  State<PharmacyMedicinesPage> createState() => _PharmacyMedicinesPageState();
}

class _PharmacyMedicinesPageState extends State<PharmacyMedicinesPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> medicines = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    fetchMedicines();
  }

  Future<void> fetchMedicines() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firestore
              .collection('Pharmacies')
              .doc(widget.pharmacyId)
              .collection('medicine')
              .get();

      setState(() {
        medicines = querySnapshot.docs.map((doc) => {
          ...doc.data() as Map<String, dynamic>,
          'isVisible': true, // Add a default value for visibility
        }).toList();
      });
    } catch (e) {
      print('Error fetching medicines: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy Medicines'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: medicines.length,
              itemBuilder: (context, index) {
                final bool isVisible = medicines[index]['isVisible'] ?? false;

                return matchesSearch(medicines[index]['Mname']) && isVisible
                    ? buildMedicineCard(index)
                    : SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff41b2d6),
        onPressed: () {
          showAddMedicineDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  bool matchesSearch(String medicine) {
  final String searchLower = searchText.toLowerCase();
  final String medicineLower = medicine.toLowerCase();
  return medicineLower.contains(searchLower);
}


  Widget buildMedicineCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        elevation: 20,
        shadowColor: Color(0xff41b2d6),
        color: Color(0xffEDFAFF),
        child: ListTile(
          title: Text(medicines[index]['Mname']),
          trailing: Container(
            width: 70,
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      showUpdateMedicineDialog(index);
                    },
                    icon: Icon(Icons.edit),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      toggleMedicineVisibility(index);
                    },
                    icon: Icon(medicines[index]['isVisible'] ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      showDeleteDialog(index);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showAddMedicineDialog() async {
    final TextEditingController textController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Add Medicine',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xff41b2d6),
            fontWeight: FontWeight.bold,
          ),
        ),
        content: TextField(
          controller: textController,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              try {
                await addMedicine(textController.text);
                textController.clear();
                Navigator.of(context).pop(); // Close the dialog
              } catch (e) {
                print('Error adding medicine: $e');
              }
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  Future<void> showUpdateMedicineDialog(int index) async {
    final TextEditingController textController =
        TextEditingController(text: medicines[index]['Mname']);

    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Update Medicine',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xff41b2d6),
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: textController,
              ),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff41b2d6),
            ),
            onPressed: () async {
              try {
                if (_formKey.currentState?.validate() ?? false) {
                  await updateMedicine(index, textController.text);
                  Navigator.of(context).pop(); // Close the dialog
                }
              } catch (e) {
                print('Error updating medicine: $e');
              }
            },
            child: Text('Edit'),
          ),
        ],
      ),
    );
  }

  Future<void> showDeleteDialog(int index) async {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Medicine'),
          content: Text('Are you sure you want to delete this medicine?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await deleteMedicine(index);
                  Navigator.of(context).pop(); // Close the dialog
                } catch (e) {
                  print('Error deleting medicine: $e');
                }
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  Future<void> addMedicine(String medicineName) async {
    if (medicineName.trim().isNotEmpty) {
      try {
        final DocumentReference<Map<String, dynamic>> newDocRef =
            await _firestore
                .collection('Pharmacies')
                .doc(widget.pharmacyId)
                .collection('medicine')
                .add({
              'Mname': medicineName,
              'isVisible': true, // Set default visibility
            });

        final DocumentSnapshot<Map<String, dynamic>> newDocSnapshot =
            await newDocRef.get();

        setState(() {
          medicines.add({
            ...newDocSnapshot.data() as Map<String, dynamic>,
            'isVisible': true, // Set default visibility
          });
        });
      } catch (e) {
        print('Error adding medicine: $e');
      }
    } else {
      print('Medicine name cannot be null or empty');
    }
  }

  Future<void> updateMedicine(int index, String newName) async {
    try {
      final String oldMedicineName = medicines[index]['Mname'];
      print('Updating medicine: $oldMedicineName to $newName');

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
          .collection('Pharmacies')
          .doc(widget.pharmacyId)
          .collection('medicine')
          .where('Mname', isEqualTo: oldMedicineName)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final DocumentReference<Map<String, dynamic>> docRef =
            _firestore
                .collection('Pharmacies')
                .doc(widget.pharmacyId)
                .collection('medicine')
                .doc(querySnapshot.docs.first.id);

        await docRef.update({'Mname': newName});

        // Update local list
        setState(() {
          medicines[index]['Mname'] = newName;
        });

        print('Medicine updated successfully');
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      print('Error updating medicine: $e');
    }
  }

  Future<void> deleteMedicine(int index) async {
    try {
      final String medicineName = medicines[index]['Mname'];
      print('Deleting medicine: $medicineName');

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
          .collection('Pharmacies')
          .doc(widget.pharmacyId)
          .collection('medicine')
          .where('Mname', isEqualTo: medicineName)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final DocumentReference<Map<String, dynamic>> docRef =
            _firestore
                .collection('Pharmacies')
                .doc(widget.pharmacyId)
                .collection('medicine')
                .doc(querySnapshot.docs.first.id);

        await docRef.delete();

        // Update local list
        setState(() {
          medicines.removeAt(index);
        });

        print('Medicine deleted successfully');
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      print('Error deleting medicine: $e');
    }
  }

  Future<void> toggleMedicineVisibility(int index) async {
    try {
      final String medicineName = medicines[index]['Mname'];
      final bool currentVisibility = medicines[index]['isVisible'] ?? true;

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
          .collection('Pharmacies')
          .doc(widget.pharmacyId)
          .collection('medicine')
          .where('Mname', isEqualTo: medicineName)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final DocumentReference<Map<String, dynamic>> docRef =
            _firestore
                .collection('Pharmacies')
                .doc(widget.pharmacyId)
                .collection('medicine')
                .doc(querySnapshot.docs.first.id);

        await docRef.update({'isVisible': !currentVisibility});

        // Update local list
        setState(() {
          medicines[index]['isVisible'] = !currentVisibility;
        });

        print('Medicine visibility toggled successfully');
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      print('Error toggling medicine visibility: $e');
    }
  }
}
