import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_application_2/pharmacyloc/forMap.dart';

class SearchDrug extends StatefulWidget {
  const SearchDrug({Key? key}) : super(key: key);

  @override
  State<SearchDrug> createState() => _SearchDrugState();
}

class _SearchDrugState extends State<SearchDrug> {
  TextEditingController searchController = TextEditingController();
  Map<String, List<Map<String, dynamic>>> pharmaciesByMedicine = {};
  StreamController<String> _searchController = StreamController<String>();
  bool isLoading = false;

  CollectionReference pharmacy = FirebaseFirestore.instance.collection("Pharmacies");

  @override
  void initState() {
    super.initState();
    _searchController.stream.listen((searchTerm) {
      retrievePharmacyData(searchTerm);
    });
  }

  void retrievePharmacyData(String searchTerm) async {
    print('Searching for: $searchTerm');
    setState(() {
      isLoading = true;
    });

    pharmaciesByMedicine.clear();
    setState(() {});

    searchTerm = searchTerm.toLowerCase();

    if (searchTerm.isEmpty) {
      setState(() {
        isLoading = false;
      });
      return;
    }

    QuerySnapshot pharmaciesSnapshot = await pharmacy.get();

    for (QueryDocumentSnapshot pharmacyDoc in pharmaciesSnapshot.docs) {
      String pharmacyId = pharmacyDoc.id;

      if (pharmacyDoc.data() is Map<String, dynamic>) {
        Map<String, dynamic> pharmacyData = pharmacyDoc.data() as Map<String, dynamic>;

        if (pharmacyData.containsKey('name') &&
            pharmacyData.containsKey('location') &&
            pharmacyData.containsKey('neighborhood') &&
            pharmacyData.containsKey('phone')) {
          String pharmacyName = pharmacyData['name'];
          String pharmacyLocation = pharmacyData['location'];
          String pharmacyNeighborhood = pharmacyData['neighborhood'];
          String pharmacyPhone = pharmacyData['phone'];

          QuerySnapshot medicinesSnapshot = await FirebaseFirestore.instance
              .collection("Pharmacies")
              .doc(pharmacyId)
              .collection("medicine")
              .where('isVisible', isEqualTo: true)
              .get();

          for (QueryDocumentSnapshot medicineDoc in medicinesSnapshot.docs) {
            if (medicineDoc.data() is Map<String, dynamic>) {
              Map<String, dynamic> medicineData = medicineDoc.data() as Map<String, dynamic>;

              if (medicineData.containsKey('Mname')) {
                String medicineName = medicineData['Mname'].toLowerCase();

                if (medicineName.contains(searchTerm)) {
                  Map<String, dynamic> pharmacyInfo = {
                    'id': pharmacyId,
                    'name': pharmacyName,
                    'location': pharmacyLocation,
                    'neighborhood': pharmacyNeighborhood,
                    'phone': pharmacyPhone,
                  };

                  if (!pharmaciesByMedicine.containsKey(medicineName)) {
                    pharmaciesByMedicine[medicineName] = [];
                  }

                  pharmaciesByMedicine[medicineName]!.add(pharmacyInfo);
                }
              }
            }
          }
        }
      }
    }

    setState(() {
      isLoading = false;
    });
    print('Found pharmacies: $pharmaciesByMedicine');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDFAFF),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      _searchController.add(value);
                    },
                    decoration: const InputDecoration(
                      labelText: "Search Medicine Here",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    retrievePharmacyData(searchController.text);
                    searchController.clear();
                  },
                  icon: Icon(Icons.search),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : pharmaciesByMedicine.isEmpty
                      ? Center(
                          child: Text("No results found."),
                        )
                      : ListView.builder(
                          itemCount: pharmaciesByMedicine.length,
                          itemBuilder: (context, index) {
                            String medicineName = pharmaciesByMedicine.keys.elementAt(index);
                            List<Map<String, dynamic>> pharmacies = pharmaciesByMedicine[medicineName]!;
                            return buildMedicineCard(medicineName, pharmacies);
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMedicineCard(String medicineName, List<Map<String, dynamic>> pharmacies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          "Medicine: ${medicineName.capitalizeFirstLetter()}",
          style: TextStyle(fontSize: 20, color: Color(0xff121212), fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ...pharmacies.map((pharmacyInfo) {
          return buildPharmacyCard(pharmacyInfo);
        }).toList(),
        SizedBox(height: 20),
      ],
    );
  }

  Widget buildPharmacyCard(Map<String, dynamic> pharmacyInfo) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pharmacyInfo['name'] ?? '',
              style: TextStyle(fontSize: 18, color: Color(0xff121212), fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              pharmacyInfo['neighborhood'] ?? '',
              style: TextStyle(fontSize: 12, color: Color(0xff121212), fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              "Open 24 hours",
              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 26, 107, 32)),
            ),
            SizedBox(width: 66),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    showPhoneNumberAlertDialog(context, pharmacyInfo['phone'] ?? '');
                  },
                  icon: Icon(Icons.phone, color: Color(0xff41b2d6)),
                ),
                IconButton(
                  onPressed: () {
                    // Location icon action (you can add an action if needed)
                    MapUtils.openMap(pharmacyInfo['location']);
                  },
                  icon: Icon(Icons.location_on, color: Color(0xff41b2d6)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showPhoneNumberAlertDialog(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Call $phoneNumber?"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close),
            ),
            IconButton(
              onPressed: () async {
                Navigator.pop(context);
                await FlutterPhoneDirectCaller.callNumber(phoneNumber);
              },
              icon: Icon(Icons.phone),
            ),
          ],
          alignment: Alignment.bottomCenter,
        );
      },
    );
  }
}

// Extension to capitalize the first letter of a string
extension StringExtension on String {
  String capitalizeFirstLetter() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

void main() {
  runApp(MaterialApp(
    home: SearchDrug(),
  ));
}
