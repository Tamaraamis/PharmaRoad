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
<<<<<<< HEAD
              Navigator.of(context).pushNamed("drawer");
            } else if (index == 1) {
              Navigator.of(context).pushNamed("profilee");
            }
=======
              Navigator.of(context).pushNamed("User");
            } else if (index == 1) {
              Navigator.of(context).pushNamed("UserProfile");
            } 
            else {}
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
          },
          items: const [
            BottomNavigationBarItem(
                label: "HOME",
                icon: Icon(
                  Icons.home,
                ),
<<<<<<< HEAD
                backgroundColor: Color(0xffEDFAFF)),
=======
                backgroundColor: Color(0xff41b2d6)),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
            BottomNavigationBarItem(
                label: "Profile",
                tooltip: "Profile",
                icon: Icon(Icons.person),
                backgroundColor: Color(0xff41b2d6)),
<<<<<<< HEAD
=======
           
                
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
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
                height: 100,
                width: 200,
              ),
<<<<<<< HEAD
              SizedBox(
=======
              const SizedBox(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
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
                              Navigator.of(context).pushNamed("pharmacyloc");
                            },
                            child: Column(
                              children: [
<<<<<<< HEAD
                                SizedBox(
=======
                                const SizedBox(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
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
                                      fontSize: 15,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
<<<<<<< HEAD
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
=======
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
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("Searchdrug");
                            },
                            child: Column(
                              children: [
<<<<<<< HEAD
                                SizedBox(
=======
                                const SizedBox(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                                  height: 3,
                                ),
                                //Image.asset("images/1906532.png",height: 100,width: 70,),
                                Image.asset(
                                  "images/d4.png",
                                  height: 70,
<<<<<<< HEAD
                                  width: 70,
                                  color: Color(0xff41b2d6),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "      Find Your \n Medicine Now",
=======
                                  width: 80,
                                  color: const Color(0xff41b2d6),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  "  Find Your Medicine Now",
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
<<<<<<< HEAD
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
=======
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
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("uploadpic");
                      },
<<<<<<< HEAD
                      child: Column(
=======
                      child:  Column(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Icon(Icons.camera_alt_outlined,
<<<<<<< HEAD
                              color: Color(0xff41b2d6), size: 55),
=======
                              color: Color(0xff41b2d6), size: 75),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b

                          // Icon(Icons.search,
                          //     color: Color(0xff41b2d6), size: 75),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
<<<<<<< HEAD
                            "Upload Your \nPrescription ",
=======
                            "Upload Your Prescription ",
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff41b2d6),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
<<<<<<< HEAD
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
=======
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
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("product");
                      },
                      child: Column(
                        children: [
<<<<<<< HEAD
                          SizedBox(
=======
                          const SizedBox(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                            height: 3,
                          ),
                          Image.asset(
                            "images/download.png",
<<<<<<< HEAD
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
=======
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
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                                color: Color(0xff41b2d6),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
<<<<<<< HEAD
                      )),
                  height: 130,
                  width: 290,
                  margin: EdgeInsets.only(left: 33),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff41b2d6), width: 2),
                      borderRadius: BorderRadius.circular(15.0))),
              SizedBox(
=======
                      ))),
              const SizedBox(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                height: 10,
              )
            ],
          ),
        ));
  }
}
