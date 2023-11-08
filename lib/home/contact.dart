import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEDFAFF),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Contact Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Color(0xff41b2d6)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Have Questions?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xff41b2d6)),
                  ),
                  Text(
                    "We're Here to Help",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xff41b2d6)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                             prefixIcon: const Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Name",
                            border: InputBorder.none,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                             prefixIcon: const Icon(Icons.email),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Email",
                            border: InputBorder.none,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          maxLines: 8,
                          decoration: InputDecoration(
                           //  prefixIcon: const Icon(Icons.message),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Message",
                            border: InputBorder.none,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("contact");
                          },
                          height: 60,
                          minWidth: double.infinity,
                          color: Color(0xff41b2d6),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
