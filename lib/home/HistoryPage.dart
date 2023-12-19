// history_page.dart
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HistoryPage extends StatelessWidget {
  final String userId;

  const HistoryPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search History'),
      ),
      body: FutureBuilder(
        future: getUserSearchHistory(userId),
        builder: (context, AsyncSnapshot<List<String>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No search history available.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index]),
                  onTap: () {
                    // Perform search again when a history item is tapped
                    Navigator.pop(context, snapshot.data![index]);
                  },
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<String>> getUserSearchHistory(String userId) async {
    // Reference to the user's document
    DocumentReference userRef = FirebaseFirestore.instance.collection('userInfo').doc(userId);

    // Get the user's search history
    DocumentSnapshot userSnapshot = await userRef.get();
    List<String> searchHistory = List<String>.from(userSnapshot['history'] ?? []);

    return searchHistory;
  }
}
