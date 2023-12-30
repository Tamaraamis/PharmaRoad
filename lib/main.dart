//main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_2/PharmacyManger/current.dart';
import 'package:flutter_application_2/PharmacyManger/homeph.dart';
import 'package:flutter_application_2/PharmacyManger/profileM.dart';
import 'package:flutter_application_2/auth/welcome.dart';
import 'package:flutter_application_2/home/UserProfile.dart';
import 'package:flutter_application_2/home/YourPersc.dart';
import 'package:flutter_application_2/home/contact-us.dart';
import 'package:flutter_application_2/home/profilee.dart';

import 'package:flutter_application_2/home/searchph.dart';
import 'package:flutter_application_2/poplularmedicine/product.dart';
import 'PharmacyManger/list.dart';
import 'auth/logmanager.dart';
import 'home/contact.dart';
import 'home/drawer.dart';
import 'auth/signup.dart';
import 'auth/users.dart';
import 'home/searche.dart';
import 'home/try.dart';
import 'pharmacyloc/pharmacyloc.dart';
import 'pharmacyloc/region1.dart';
import 'pharmacyloc/region2.dart';
import 'pharmacyloc/region3.dart';
import 'pharmacyloc/region4.dart';
import 'pharmacyloc/region5.dart';
import 'pharmacyloc/region6.dart';
import 'pharmacyloc/region7.dart';
import 'pharmacyloc/region8.dart';
import 'home/uploadpic.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate();


  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null ? const splach() :  const drawer(),
      theme: ThemeData(primaryColor: const Color.fromRGBO(115, 144, 215, 0.86)),
      routes: {
        "Signup": (context) => const Signup(),
        "Users": (context) => const Users(),
        "Searchdrug": (context) => const SearchDrug(),
        "Welcome": (context) => const Welcome(),
        "drawer": (context) => const drawer(),
        "contact": (context) => const Contact(),
        "LoginManger": (context) => const LogM(),
        //"homeph": (context) => const LogM(),
        //"drug":(context) => Drug(),
        "list": (context) => const Medicine(),
        "try": (context) => const Log(),
        "pharmacyloc": (context) => const SearchPharmacy(),
        "region1": (context) => const region1(),
        "region2": (context) => const region2(),
        "region3": (context) => const region3(),
        "region4": (context) => const region4(),
        "region5": (context) => const region5(),
        "region6": (context) => const region6(),
        "region7": (context) => const region7(),
        "region8": (context) => const region8(),
        "uploadpic": (context) => const uploadpic(),
        "contact-us": (context) => const contactR(),
        "profilee": (context) => profile(),
        "product":(context) => const product(),
        "profileM":(context) => const pro(),
        "YourPersc":(context) => const perscShow(),
        "UserProfile":(context) => const UserProfile(),
        
       "homeph": (context) {
  final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

  return Homeph(pharmacyId: args?['id'] ?? '');
},

       
      },
      onGenerateRoute: (settings) {
        if (settings.name == 'current') {
          final Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;

          return MaterialPageRoute(
            builder: (context) => PharmacyMedicinesPage(pharmacyId: args?['id'] ?? ''),
          );
        }


        return null; 
      },
    );
  }

  }

class splach extends StatefulWidget {
  const splach({super.key});
  @override
  State<splach> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splach> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Center(
        child: Container(
          child: Image.asset(
            "images/r.png",
            height: 500,
            width: 700,
          ),
        ),
      ),
    );
  }
}
