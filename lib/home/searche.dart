import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

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
    _searchController.stream
        .debounceTime(Duration(milliseconds: 500))
        .listen((medicineName) {
      retrievePharmacyData(medicineName);
    });
  }

  void retrievePharmacyData(String medicineName) async {
    setState(() {
      isLoading = true;
    });

    pharmaciesByMedicine.clear();
    setState(() {});

    medicineName = medicineName.toLowerCase();

    if (medicineName.isEmpty) {
      setState(() {
        isLoading = false;
      });
      return;
    }

    QuerySnapshot value = await pharmacy.get();
    for (QueryDocumentSnapshot result in value.docs) {
      QuerySnapshot subcol = await FirebaseFirestore.instance
          .collection("Pharmacies")
          .doc(result.id)
          .collection("medicine")
          .where('Mname', isEqualTo: medicineName)
          .get();

      subcol.docs.forEach((element) {
        Map<String, dynamic> pharmacyInfo = {
          'id': result.id,
          'name': result['name'],
          'location': result['location'],
          'neighborhood': result['neighborhood'],
          'phone': result['phone'],
        };

        if (!pharmaciesByMedicine.containsKey(medicineName)) {
          pharmaciesByMedicine[medicineName] = [];
        }

        pharmaciesByMedicine[medicineName]!.add(pharmacyInfo);
      });
    }

    setState(() {
      isLoading = false;
    });
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
                    // MapUtils.openMap(pharmacyInfo['location']);
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
