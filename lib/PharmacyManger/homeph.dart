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

  List<String> medicines = [];
  String text = '';

  @override
  void initState() {
    super.initState();
    fetchMedicines();
  }

  Future<void> fetchMedicines() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firestore.collection('Pharmacies').doc(widget.pharmacyId).collection('medicine').get();

      setState(() {
        medicines = querySnapshot.docs.map((doc) => doc['Mname'] as String).toList();
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
      body: ListView.builder(
        itemCount: medicines.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 20,
              shadowColor: Color(0xff41b2d6),
              color: Color(0xffEDFAFF),
              child: ListTile(
                title: Text(medicines[index]),
                trailing: Container(
                  width: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        text = value;
                                      });
                                    },
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff41b2d6),
                                    ),
                                    onPressed: () {
                                      // Update the medicine in Firestore
                                      _firestore
                                          .collection('Pharmacies')
                                          .doc(widget.pharmacyId)
                                          .collection('medicine')
                                          .doc(medicines[index])
                                          .update({'Mname': text});

                                      // Update the local list
                                      setState(() {
                                        medicines[index] = text;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Update"),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(Icons.edit),
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
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff41b2d6),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              final TextEditingController textController = TextEditingController();
              return AlertDialog(
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
                    onPressed: () {
                      // Add the new medicine to Firestore
                      _firestore
                          .collection('Pharmacies')
                          .doc(widget.pharmacyId)
                          .collection('medicine')
                          .doc(textController.text)
                          .set({'Mname': textController.text});

                      // Add the new medicine to the local list
                      setState(() {
                        medicines.add(textController.text);
                      });

                      textController.clear();
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> showDeleteDialog(int index) async {
    return showDialog<void>(
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
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                // Delete the medicine from Firestore
                _firestore
                    .collection('Pharmacies')
                    .doc(widget.pharmacyId)
                    .collection('medicine')
                    .doc(medicines[index])
                    .delete();

                // Delete the medicine from the local list
                setState(() {
                  medicines.removeAt(index);
                });

                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
