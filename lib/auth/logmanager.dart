import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_2/PharmacyManger/homeph.dart';

class LogM extends StatefulWidget {
  const LogM({Key? key}) : super(key: key);

  @override
  State<LogM> createState() => _LogMState();
}

class _LogMState extends State<LogM> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  var obscureText = true;
  TextEditingController pharmacyIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginUser() async {
    try {
      if (_formKey.currentState!.validate()) {
        final QuerySnapshot<Map<String, dynamic>> result =
            await _firestore.collection('Pharmacies').where(
                  'id',
                  isEqualTo: pharmacyIdController.text.trim(),
                ).get();

        if (result.docs.isEmpty) {
          showSnackBar('Pharmacy ID not found');
          return;
        }

        final QueryDocumentSnapshot<Map<String, dynamic>> pharmacyDoc =
            result.docs.first;
        final String storedPassword = pharmacyDoc['password'];

        if (passwordController.text.trim() == storedPassword) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => PharmacyMedicinesPage(pharmacyDoc.id)),
          );
        } else {
          showSnackBar('Incorrect password');
        }
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: Image.asset("images/ph1.png", height: 300, width: 300),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: pharmacyIdController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Pharmacy ID';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Pharmacy ID",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: obscureText
                          ? const Icon(
                              Icons.visibility_off,
                            )
                          : const Icon(Icons.visibility),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    loginUser();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff41B2D6),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffC7F1FF),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Color(0xffC7F1FF)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
