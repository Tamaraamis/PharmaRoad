import 'package:flutter/material.dart';

class Homeph extends StatefulWidget {
  const Homeph({super.key});

  @override
  State<Homeph> createState() => _HomephState();
}

class _HomephState extends State<Homeph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEDFAFF),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          backgroundColor: Color(0xff41b2d6),
          items: [
            BottomNavigationBarItem(
                label: "HOME",
                icon: Icon(
                  Icons.home,
                ),
                backgroundColor: Color(0xffEDFAFF)),
            BottomNavigationBarItem(
                label: "Profile",
                tooltip: "Profile",
                icon: Icon(Icons.person),
                backgroundColor: Color(0xff41b2d6)),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff41b2d6),
          title: Text(
            "Pharma Road",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              color: Color(0xffEDFAFF),
            ),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Image.asset(
                    "images/p5.png",
                    height: 150,
                    width: 400,
                  ), //Icon(Icons.person),
                  backgroundColor: Color(0xffEDFAFF),
                ),
                accountName: Text(""),
                accountEmail: Text(""),
                decoration: BoxDecoration(
                  color: Color(0xff41b2d6), // Background color of the header
                ),
              ),
              ListTile(
                title: Text("Support"),
              ),
              ListTile(
                title: Text("Login/Register"),
                leading: const Icon(Icons.login),
                onTap: () {
                  Navigator.of(context).pushNamed("LoginManger");
                },
              ),
              ListTile(
                title: Text("Log-out"),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context).pushNamed("User");
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Medicine Classifications",
                  style: TextStyle(color: Color(0xff41B2D6), fontSize: 30)),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("list");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Image.asset(
                                  "images/d2.jpg",
                                  height: 100,
                                  width: 80,
                                ),
                                Text(
                                  "Syrups",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        height: 150,
                        width: 155,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0))),
                    Container(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("list");
                            },
                            child: Column(
                              children: [
                                // SizedBox(height: 10,),
                                Image.asset(
                                  "images/d6.jpg",
                                  height: 100,
                                  width: 120,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Needles",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        height: 150,
                        width: 155,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        child: GestureDetector(
                            onTap: () {
                             Navigator.of(context).pushNamed("list");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 9,
                                ),
                                Image.asset(
                                  "images/d3.jpg",
                                  height: 100,
                                  width: 120,
                                ),
                                Text(
                                  "Capsules",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        height: 150,
                        width: 155,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0))),
                    Container(
                        child: GestureDetector(
                            onTap: () {
                             Navigator.of(context).pushNamed("list");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Image.asset(
                                  "images/z1.jpg",
                                  height: 100,
                                  width: 140,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Pills",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        height: 150,
                        width: 155,
                        margin: EdgeInsets.only(left: 28),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
