//main.dart
import 'package:flutter/material.dart';
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
        "list": (context) => Medicine(),
        "try": (context) => Log(),
        "pharmacyloc": (context) => pharmacyloc(),
        "region1": (context) => region1(),
        "region2": (context) => region2(),
        "region3": (context) => region3(),
        "region4": (context) => region4(),
        "region5": (context) => region5(),
        "region6": (context) => region6(),
        "region7": (context) => region7(),
        "region8": (context) => region8(),
        "uploadpic": (context) => uploadpic(),
        //"contactD": (context) => contactd(),
        "product":(context) => product(),
        "contact-us":(context) => contactR(),
        "profilee":(context) => profile(),
        "profileM":(context) => pro(),
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
