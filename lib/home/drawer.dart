import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'try.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  //String id = "locater";

  @override
  Widget build(BuildContext context) {
    String getEmail() {
      FirebaseAuth _auth = FirebaseAuth.instance;
      User? user = _auth.currentUser;

      if (user != null) {
        String userEmail = user.email ?? '';
        print('User Email: $userEmail');
        // You can use userEmail as needed in your code.
        return userEmail;
      } else {
        print('User is not authenticated');
        return ''; // or throw an exception, depending on your logic
      }
    }

    return Scaffold(
        backgroundColor: const Color(0xffEDFAFF),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          backgroundColor: const Color(0xff41b2d6),
          onTap: (index) {
            if (index == 0) {
              Navigator.of(context).pushNamed("User");
            } else if (index == 1) {
              Navigator.of(context).pushNamed("UserProfile");
            } 
            else {}
          },
          items: const [
            BottomNavigationBarItem(
                label: "HOME",
                icon: Icon(
                  Icons.home,
                ),
                backgroundColor: Color(0xff41b2d6)),
            BottomNavigationBarItem(
                label: "Profile",
                tooltip: "Profile",
                icon: Icon(Icons.person),
                backgroundColor: Color(0xff41b2d6)),
           
                
          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff41b2d6),
          title: const Text(
            "Pharma Road",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35,
                color: Color(0xffEDFAFF),
                fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Color(0xffEDFAFF),
                  child: Icon(Icons.person),
                ),
                accountName: const Text(""),
                accountEmail: Text(getEmail()),
                decoration: const BoxDecoration(
                  color: Color(0xff41b2d6), // Background color of the header
                ),
              ),
              const ListTile(
                title: Text("Support"),
              ),
              ListTile(
                title: const Text("Login/Register"),
                leading: const Icon(Icons.login),
                onTap: () {
                  Navigator.of(context).pushNamed("try");
                },
              ),
              ListTile(
                title: const Text("Contact Us"),
                leading: const Icon(Icons.person),
                onTap: () {
                  getEmail();
                  Navigator.of(context).pushNamed("contact-us");
                },
              ),
              ListTile(
                title: const Text("Log-out"),
                leading: const Icon(Icons.logout),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushNamed("try");
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/patient.png",
                height: 150,
                width: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                        height: 115,
                        width: 310,
                        margin: const EdgeInsets.only(left: 35),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: const Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("searchph");
                            },
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 1,
                                ),
                                Image.asset(
                                  "images/1906532.png",
                                  height: 80,
                                  width: 80,
                                ),
                                const Text(
                                  "Pharmacy locator",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ))),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 115,
                        width: 310,
                        margin: const EdgeInsets.only(left: 35),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: const Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("Searchdrug");
                            },
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 3,
                                ),
                                //Image.asset("images/1906532.png",height: 100,width: 70,),
                                Image.asset(
                                  "images/d4.png",
                                  height: 70,
                                  width: 80,
                                  color: const Color(0xff41b2d6),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "  Find Your Medicine Now",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ))),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 115,
                  width: 310,
                  margin: const EdgeInsets.only(left: 35),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xff41b2d6), width: 2),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("uploadpic");
                      },
                      child:  Column(
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Icon(Icons.camera_alt_outlined,
                              color: Color(0xff41b2d6), size: 75),

                          // Icon(Icons.search,
                          //     color: Color(0xff41b2d6), size: 75),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Upload Your Prescription ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff41b2d6),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))),
              const SizedBox(
                height: 15,
              ),
              Container(
                  height: 115,
                  width: 310,
                  margin: const EdgeInsets.only(left: 35),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xff41b2d6), width: 2),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("product");
                      },
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Image.asset(
                            "images/download.png",
                            height: 70,
                            width: 70,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            "Popular Medicine",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff41b2d6),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }
}
