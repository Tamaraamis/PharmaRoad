import 'package:flutter_application_2/pharmacyloc/forMap.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchPharmacy extends StatefulWidget {
  const SearchPharmacy({Key? key}) : super(key: key);

  @override
  State<SearchPharmacy> createState() => _SearchPharmacyState();
}

class _SearchPharmacyState extends State<SearchPharmacy> {
    TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> searchResults = [];
  final StreamController<String> _searchController = StreamController<String>();
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
      searchResults.clear(); // Clear previous search results
    });

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

          // Check if the current pharmacy matches the search term (name or neighborhood)
          if (pharmacyName.toLowerCase().contains(searchTerm) ||
              pharmacyNeighborhood.toLowerCase().contains(searchTerm)) {
            Map<String, dynamic> pharmacyInfo = {
              'id': pharmacyId,
              'name': pharmacyName,
              'location': pharmacyLocation,
              'neighborhood': pharmacyNeighborhood,
              'phone': pharmacyPhone,
            };
            searchResults.add(pharmacyInfo);
          }
        }
      }
    }

    setState(() {
      isLoading = false;
    });

    print('Search results: $searchResults');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDFAFF),
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
                      labelText: "Search Pharmacy Here",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    retrievePharmacyData(searchController.text);
                    searchController.clear();
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : searchResults.isNotEmpty
                      ? ListView.builder(
                          itemCount: searchResults.length,
                          itemBuilder: (context, index) {
                            return buildPharmacyCard(searchResults[index]);
                          },
                        )
                      : const Center(
                          child: Text("No results found."),
                        ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPharmacyCard(Map<String, dynamic> pharmacyInfo) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pharmacyInfo['name'] ?? '',
              style: const TextStyle(fontSize: 18, color: Color(0xff121212), fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              pharmacyInfo['neighborhood'] ?? '',
              style: const TextStyle(fontSize: 12, color: Color(0xff121212), fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            const Text(
              "Open 24 hours",
              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 26, 107, 32)),
            ),
            const SizedBox(width: 66),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    showPhoneNumberAlertDialog(context, pharmacyInfo['phone'] ?? '');
                  },
                  icon: const Icon(Icons.phone, color: Color(0xff41b2d6)),
                ),
                IconButton(
                  onPressed: () {
                    MapUtils.openMap(pharmacyInfo['location']);
                  },
                  icon: const Icon(Icons.location_on, color: Color(0xff41b2d6)),
                ),
                IconButton(
                  onPressed: () {
                    showWhatsappAlertDialog(context, pharmacyInfo['phone'] ?? '');
                  },
                  icon: const Icon(Icons.message, color: Color(0xff41b2d6)),
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
              icon: const Icon(Icons.close),
            ),
            IconButton(
              onPressed: () async {
                Navigator.pop(context);
                await FlutterPhoneDirectCaller.callNumber(phoneNumber);
              },
              icon: const Icon(Icons.phone),
            ),
          ],
          alignment: Alignment.center,
        );
      },
    );
  }

  void showWhatsappAlertDialog(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Message $phoneNumber on WhatsApp?"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
            IconButton(
              onPressed: () async {
                Navigator.pop(context);
                sendWhatsAppMessage(phoneNumber);
              },
              icon: const Icon(Icons.message),
            ),
          ],
          alignment: Alignment.center,
        );
      },
    );
  }

  void sendWhatsAppMessage(String phoneNumber) async {
    final whatsappUrl = "https://wa.me/$phoneNumber";
    await launchUrl(Uri.parse(whatsappUrl));
  }
}

// Extension to capitalize the first letter of a string
extension StringExtension on String {
  String capitalizeFirstLetter() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

void main() {
  runApp(const MaterialApp(
    home: SearchPharmacy(),
  ));
}
