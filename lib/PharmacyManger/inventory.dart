import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PharmacyInventoryPage extends StatefulWidget {
  final String pharmacyId;

  const PharmacyInventoryPage({required this.pharmacyId, Key? key}) : super(key: key);

  @override
  State<PharmacyInventoryPage> createState() => _PharmacyInventoryPageState();
}

class _PharmacyInventoryPageState extends State<PharmacyInventoryPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> medicines = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    fetchMedicines();
  }


  Future<void> fetchMedicines() async {
    String pharmacyId = widget.pharmacyId;
    print("pharmacyId : ${pharmacyId}");

    try {
      CollectionReference pharmacyCollection = _firestore.collection('Pharmacies');
      DocumentReference userDocRef = pharmacyCollection.doc(pharmacyId);
      CollectionReference medicinesCollection = userDocRef.collection('medicine');
      QuerySnapshot querySnapshot = await medicinesCollection.get();

      if (querySnapshot.docs.isNotEmpty) {
        for (QueryDocumentSnapshot doc in querySnapshot.docs) {
          Map<String, dynamic> medicineData = doc.data() as Map<String, dynamic>;
          bool isVisible = medicineData['isVisible'] ?? true;

          if (!isVisible) {
            setState(() {
              medicines.add(medicineData);
            });
          }
        }
      } else {
        print('Pharmacy document not found for ID: $pharmacyId');
      }
    } catch (e) {
      print('Error fetching medicines: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy Inventory'),
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
                final medicine = medicines[index];

                // Check if the medicine name contains the search text
                if (medicine['Mname'].toLowerCase().contains(searchText.toLowerCase())) {
                  return buildMedicineCard(index, medicine);
                } else {
                  // Return an empty container if the medicine should be filtered out
                  return Container();
                }
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

  Widget buildMedicineCard(int index, Map<String, dynamic> medicine) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        elevation: 20,
        shadowColor: Color(0xff41b2d6),
        color: Color(0xffEDFAFF),
        child: ListTile(
          title: Text(medicine['Mname']),
          trailing: Container(
            width: 110,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    showUpdateMedicineDialog(index, medicine);
                  },
                  icon: Icon(Icons.edit),
                ),
                SizedBox(width: 8),
                IconButton(
                  onPressed: () {
                    unhideMedicine(index);
                  },
                  icon: Icon(Icons.visibility),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> unhideMedicine(int index) async {
    try {
      final String medicineName = medicines[index]['Mname'];

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
          .collection('Pharmacies')
          .doc(widget.pharmacyId)
          .collection('medicine')
          .where('Mname', isEqualTo: medicineName)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final DocumentReference<Map<String, dynamic>> docRef = _firestore
            .collection('Pharmacies')
            .doc(widget.pharmacyId)
            .collection('medicine')
            .doc(querySnapshot.docs.first.id);

        await docRef.update({'isVisible': true});

        // Update local lists
        setState(() {
          medicines.removeAt(index);
        });

        print('Medicine unhidden successfully');
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      print('Error unhiding medicine: $e');
    }
  }

  Future<void> showUpdateMedicineDialog(int index, Map<String, dynamic> medicine) async {
    final TextEditingController textController = TextEditingController(text: medicine['Mname']);

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

  Future<void> showDeleteDialog(int index, Map<String, dynamic> medicine) async {
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
                  await deleteMedicine(index, medicine);
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

  Future<void> deleteMedicine(int index, Map<String, dynamic> medicine) async {
    try {
      final String medicineName = medicine['Mname'];

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
          .collection('Pharmacies')
          .doc(widget.pharmacyId)
          .collection('medicine')
          .where('Mname', isEqualTo: medicineName)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final DocumentReference<Map<String, dynamic>> docRef = _firestore
            .collection('Pharmacies')
            .doc(widget.pharmacyId)
            .collection('medicine')
            .doc(querySnapshot.docs.first.id);

        await docRef.delete();

        // Update local lists
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

  Future<void> updateMedicine(int index, String newName) async {
    try {
      final String medicineName = medicines[index]['Mname'];

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
          .collection('Pharmacies')
          .doc(widget.pharmacyId)
          .collection('medicine')
          .where('Mname', isEqualTo: medicineName)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final DocumentReference<Map<String, dynamic>> docRef = _firestore
            .collection('Pharmacies')
            .doc(widget.pharmacyId)
            .collection('medicine')
            .doc(querySnapshot.docs.first.id);

        await docRef.update({'Mname': newName});

        // Update local lists
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

  Future<void> addMedicine(String medicineName) async {
  if (medicineName.trim().isNotEmpty) {
    try {
      print('Pharmacy ID in addMedicine: ${widget.pharmacyId}');

      final DocumentReference<Map<String, dynamic>> pharmacyRef =
          _firestore.collection('Pharmacies').doc(widget.pharmacyId);

      final DocumentReference<Map<String, dynamic>> newDocRef =
          await pharmacyRef.collection('medicine').add({
            'Mname': medicineName,
            'isVisible': true, 
          });

      final DocumentSnapshot<Map<String, dynamic>> newDocSnapshot =
          await newDocRef.get();

      setState(() {
        medicines.add({...?newDocSnapshot.data(), 'isVisible': true});
      });
    } catch (e) {
      print('Error adding medicine: $e');
    }
  } else {
    print('Medicine name cannot be null or empty');
  }
}

}
