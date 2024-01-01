import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  //String id = "locater";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEDFAFF),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          backgroundColor: Color(0xff41b2d6),
          onTap: (index) {
            if (index == 0) {
              Navigator.of(context).pushNamed("drawer");
            } else if (index == 1) {
              Navigator.of(context).pushNamed("profilee");
            }
          },
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
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Color(0xffEDFAFF),
                ),
                accountName: Text("danyah"),
                accountEmail: Text("danyah@gmail.com"),
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
                  Navigator.of(context).pushNamed("try");
                },
              ),
              ListTile(
                title: Text("Contact Us"),
                leading: const Icon(Icons.call),
                onTap: () {
                  Navigator.of(context).pushNamed("contact-us");
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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/patient.png",
                height: 100,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("pharmacyloc");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 1,
                                ),
                                Image.asset(
                                  "images/1906532.png",
                                  height: 80,
                                  width: 80,
                                ),
                                Text(
                                  "Pharmacy locator",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        height: 110,
                        width: 280,
                        margin: EdgeInsets.only(left: 35),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0))),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("Searchdrug");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 3,
                                ),
                                //Image.asset("images/1906532.png",height: 100,width: 70,),
                                Image.asset(
                                  "images/d4.png",
                                  height: 70,
                                  width: 70,
                                  color: Color(0xff41b2d6),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "      Find Your \n Medicine Now",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        height: 135,
                        width: 290,
                        margin: EdgeInsets.only(left: 35),
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
              Container(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("uploadpic");
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Icon(Icons.camera_alt_outlined,
                              color: Color(0xff41b2d6), size: 55),

                          // Icon(Icons.search,
                          //     color: Color(0xff41b2d6), size: 75),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Upload Your \nPrescription ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff41b2d6),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  height: 120,
                  width: 290,
                  margin: EdgeInsets.only(left: 33),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff41b2d6), width: 2),
                      borderRadius: BorderRadius.circular(15.0))),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("product");
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image.asset(
                            "images/download.png",
                            height: 90,
                            width: 90,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Popular Medicine",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff41b2d6),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  height: 130,
                  width: 290,
                  margin: EdgeInsets.only(left: 33),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff41b2d6), width: 2),
                      borderRadius: BorderRadius.circular(15.0))),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }
}
