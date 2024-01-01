import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class perscShow extends StatefulWidget {
  const perscShow({super.key});

  @override
  State<perscShow> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<perscShow> {
  late String imageUrl;
  late String imageUrl1;
  final storage = FirebaseStorage.instance;
  @override
  void initState() {
    super.initState();
    // Set the initial value of imageUrl to an empty string
    imageUrl = '';
    imageUrl1 = '';
    //Retrieve the imge grom Firebase Storage
    getImageUrl();
  }

  Future<void> getImageUrl() async {
    // Get the reference to the image file in Firebase Storage
    final ref = storage.ref().child('1703083027211');
    final ref1 = storage.ref().child('1703083027211');
    // Get teh imageUrl to download URL
    final url = await ref.getDownloadURL();
    final url1 = await ref1.getDownloadURL();
    setState(() {
      imageUrl = url;
      imageUrl1 = url1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display image from fiebase "),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 300,
              child: Image(
                image: NetworkImage("$imageUrl"),
                fit: BoxFit.cover,
              )),
          Card(
            child: SizedBox(
                height: 300,
                child: Image(
                  image: NetworkImage(imageUrl1),
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }
}