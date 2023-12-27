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
        backgroundColor: const Color(0xffEDFAFF),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Contact Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Color(0xff41b2d6)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Have Questions?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xff41b2d6)),
                  ),
                  const Text(
                    "We're Here to Help",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xff41b2d6)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 16.0,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                             prefixIcon: Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Name",
                            border: InputBorder.none,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                             prefixIcon: Icon(Icons.email),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Email",
                            border: InputBorder.none,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const TextField(
                          maxLines: 8,
                          decoration: InputDecoration(
                           //  prefixIcon: const Icon(Icons.message),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Message",
                            border: InputBorder.none,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("contact");
                          },
                          height: 60,
                          minWidth: double.infinity,
                          color: const Color(0xff41b2d6),
                          padding: const EdgeInsets.all(10),
                          child: const Text(
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
