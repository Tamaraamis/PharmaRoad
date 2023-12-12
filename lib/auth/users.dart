import 'package:flutter/material.dart';
import 'package:flutter_application_2/home/color.dart';
import '../home/try.dart';
import 'logmanager.dart' ;

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEDFAFF),
        body: //Center
            Container(
          margin: const EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(150)),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "You Will Sign Up As",
                    style: TextStyle(
                        color: pColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        wordSpacing: 1),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "images/p5.png",
                    height: 150,
                    width: 400,
                  ),
                  MaterialButton(
                    onPressed: () {
                      // Navigator.of(context) .pushNamed("Login");
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogM()));
                    },

                    elevation: 20,
                    height: 10,
                    minWidth: 200,

                    child: const Text("Pharmacy",
                        style: TextStyle(fontSize: 30, color: pColor)),
                    // splashColor: Colors.blue,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    "images/pp1.png",
                    height: 150,
                    width: 400,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Log()));
                    },
                    elevation: 20,
                    height: 10,
                    minWidth: 200,
                    splashColor: Colors.blue,
                    child: const Text(
                      "Patient",
                      style: TextStyle(fontSize: 30, color: pColor),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    "images/pharm.png",
                    height: 150,
                    width: 450,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Log()));
                    },
                    elevation: 20,
                    height: 10,
                    minWidth: 200,
                    splashColor: Colors.blue,
                    child: const Text(
                      "Distributor",
                      style: TextStyle(fontSize: 30, color: pColor),
                    ),
                  ),
                ],
              )),
        ));
  }
}
