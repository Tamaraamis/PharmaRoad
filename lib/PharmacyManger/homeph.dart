//managerhome
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
        backgroundColor: const Color(0xffEDFAFF),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          backgroundColor: const Color(0xff41b2d6),
          onTap: (index) {
            if (index == 0) {
              Navigator.of(context).pushNamed("homeph");
            } else if (index == 1) {
              Navigator.of(context).pushNamed("profileM");
            }
          },
          items: const [
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
          backgroundColor: const Color(0xff41b2d6),
          title: const Text(
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
                  backgroundColor: const Color(0xffEDFAFF),
                  child: Image.asset(
                    "images/p5.png",
                    height: 150,
                    width: 400,
                  ),
                ),
                accountName: const Text(""),
                accountEmail: const Text(""),
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
                  Navigator.of(context).pushNamed("LoginManger");
                },
              ),
              ListTile(
                title: const Text("Log-out"),
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
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                              height: 220,
                              width: 290,
                              margin: const EdgeInsets.only(left: 35),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xff41b2d6), width: 2),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("current");
                                  },
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 1,
                                      ),
                                      Image.asset(
                                        "images/invt3.png",
                                        height: 180,
                                        width: 330,
                                      ),
                                      const Text(
                                        "Current Medications",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff41b2d6),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 250,
                              width: 290,
                              margin: const EdgeInsets.only(left: 35),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xff41b2d6), width: 2),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("list");
                                  },
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      //Image.asset("images/1906532.png",height: 100,width: 70,),
                                      Image.asset(
                                        "images/invt4.png",
                                        height: 200,
                                        width: 300,
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const Text(
                                        "Inventory",
                                        style: TextStyle(
                                            fontSize: 20,
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
                  ],
                ),
              )
            ])));
  }
}
