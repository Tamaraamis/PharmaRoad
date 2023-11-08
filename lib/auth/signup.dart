import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff41b2d6)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Signup",
                            style: TextStyle(color: Color(0xffEDFAFF), fontSize: 40),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcome Back",
                            style: TextStyle(color:Color(0xffEDFAFF) , fontSize: 18),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffEDFAFF),
                                          blurRadius: 20,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xff41b2d6)))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                       prefixIcon: const Icon(Icons.email),
                                        hintText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xff41b2d6)))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.person),
                                        hintText: "Username",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xff41b2d6)))),
                                    child: TextField(
                                      obscureText: obscureText,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.lock),
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
                                                : const Icon(Icons.visibility)),
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                      child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              const Text(
                                                "Have Account?",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.grey),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pushNamed(
                                                      "try"); // اسم routes الي انشأته
                                                },
                                                child: const Text(
                                                  " ClickHere",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 18),
                                                ),
                                              )
                                            ],
                                          ))),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                      height: 50,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 50),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Color(0xff41b2d6)),
                                      child: Center(
                                          child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed("try");
                                        },
                                        child: Text(
                                          "Signup",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))),
                                ]),
                              )
                            ],
                          )),
                    ),
                  ))
                ])));
  }
}
