import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirestoreService _firestoreService = FirestoreService();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
 File? _selectedImage;
  String? _imageDownloadUrl;
  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
     
      // Update the UI
      setState(() {
        _selectedImage = File(pickedImage.path);
      });

     
    }
  }

  @override
   void initState() {
    super.initState();
    _loadUserData();
  }
Future<void> _loadUserData() async {
    try {
      // Get the UID of the signed-in user
      String uid = FirebaseAuth.instance.currentUser!.uid;

      // Fetch user data from Firestore
      UserData userData = await _firestoreService.getUserData(uid);

      // Update text controllers with fetched data
      nameController.text = userData.name;
      addressController.text = userData.address;
      emailController.text = userData.email;
      phoneController.text = userData.phone;
    } catch (e) {
      print('Error loading user data: $e');
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(fontSize: 30, color: Color(0xffEDFAFF))),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("drawer");
          },
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF41B2D6),
      ),
      body:SingleChildScrollView(child:Column(
        children: [
          SizedBox(height: 35),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      foregroundImage: _selectedImage != null ? FileImage(_selectedImage!) : null,
                      backgroundImage: const AssetImage("images/person.png"),
                      backgroundColor: const Color(0xffc7f1ff),
                      radius: 65,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 45,
                        width: 47,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          color: const Color(0xffc7f1ff),
                        ),
                        child: IconButton(
                          onPressed: () {
                            _pickImage();
                            if (_imageDownloadUrl != null) {
                saveImageDownloadUrlToFirestore(_imageDownloadUrl!);
              }
                          },
                          icon: const Icon(Icons.camera_alt),
                          color: const Color.fromARGB(255, 155, 162, 163),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            child: TextField(
              controller: nameController,
           
             decoration: const InputDecoration(
              
                                      prefixIcon: Icon(Icons.person),
                                      hintText: "Name",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
            ),
            
          width: 330,
          height: 60,
            decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Color(0xFF41B2D6),
                        spreadRadius: 3,
                        blurRadius: 3,

                      )
            
                    ]
                   
           ) 
           
            ),
             const SizedBox(height: 20),
          Container(
            child: TextField(
              controller: emailController,
             decoration: const InputDecoration(
              
                                      prefixIcon: Icon(Icons.email),
                                     
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
            ),
            
          width: 330,
          height: 60,
            decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Color(0xFF41B2D6),
                        spreadRadius: 3,
                        blurRadius: 3,

                      )
            
                    ]
                   
           ) 
           
            ),
             const SizedBox(height: 20),
          Container(
            child: TextField(
              controller: phoneController,
             decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.phone_android),
                                      hintText: "Phone",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
            ),
            
          width: 330,
          height: 60,
            decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Color(0xFF41B2D6),
                        spreadRadius: 3,
                        blurRadius: 3,

                      )
            
                    ]
                   
           ) 
           
            ),
             const SizedBox(height: 20),
          Container(
            child: TextField(
              controller: addressController,
             decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.location_on_sharp),
                                      hintText: "Address",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
            ),
            
          width: 330,
          height: 60,
            decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Color(0xFF41B2D6),
                        spreadRadius: 3,
                        blurRadius: 3,

                      )
            
                    ]
                   
           ) 
           
            ),
          
             const SizedBox(height: 20),
         
           Container(
             decoration: BoxDecoration(
                    color:Color(0xFF41B2D6), 
                    borderRadius: BorderRadius.circular(10),),
            
            width: 90,
            child:
         
           TextButton(
                                      onPressed: (){
                                         _firestoreService.addUser(
                  name: nameController.text,
                  address: addressController.text,
                  email: emailController.text,
                  phone: phoneController.text,
            );},
                                      
                                      child: const Text(
                                        "Save",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),)


        ],
      ) ,)
       
    );
  }

  // Function to save the image download URL to Firestore
  Future<void> saveImageDownloadUrlToFirestore(String imageUrl) async {
    try {
      // Replace 'your_user_id' with the actual user ID or any identifier you use
      final userId = 'your_user_id';

      // Update the 'user' collection in Firestore with the image download URL
      await FirebaseFirestore.instance.collection('users').doc(userId).update({
        'profileImage': imageUrl,
      });

      // Show a success message or perform any other action
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Image saved successfully')));
    } catch (error) {
      // Handle errors
      print('Error saving image: $error');
    }
  }
}
class FirestoreService {
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('Users');

  Future<void> addUser({
    required String name,
    required String address,
    required String email,
    required String phone,
  }) async {
    try {
      // Use the UID as the document ID
      String uid = FirebaseAuth.instance.currentUser!.uid;

      await userCollection.doc(uid).set({
        'name': name,
        'address': address,
        'email': email,
        'phone': phone,
      });
    } catch (e) {
      print('Error adding user: $e');
    }
  }

  Future<UserData> getUserData(String uid) async {
    try {
      DocumentSnapshot userDoc = await userCollection.doc(uid).get();
      Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;
      return UserData(
        name: userData['name'],
        address: userData['address'],
        email: userData['email'],
        phone: userData['phone'],
      );
    } catch (e) {
      print('Error getting user data: $e');
      throw e;
    }
  }


}
class UserData {
  final String name;
  final String address;
  final String email;
  final String phone;

  UserData({
    required this.name,
    required this.address,
    required this.email,
    required this.phone,
  });
}