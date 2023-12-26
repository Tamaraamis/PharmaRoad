import 'package:flutter/material.dart';
import 'package:flutter_application_2/home/color.dart';
import '../home/try.dart';
import 'logmanager.dart';

class Users extends StatefulWidget {
  const Users({Key? key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDFAFF),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "You Will Sign Up As",
                style: TextStyle(
                  color: pColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,                 
                ),
              ),
              const SizedBox(height: 30),
              buildUserTypeButton(
                imagePath: "images/p5.png",
                buttonText: "Pharmacy",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LogM()),
                  );
                },
              ),
              const SizedBox(height: 30),
              buildUserTypeButton(
                imagePath: "images/pp1.png",
                buttonText: "Patient",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Log()),
                  );
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUserTypeButton({
    required String imagePath,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: 400,
          ),
          const SizedBox(height: 20),
          Text(
            buttonText,
            style: const TextStyle(fontSize: 30, color: pColor),
          ),
        ],
      ),
    );
  }
}
