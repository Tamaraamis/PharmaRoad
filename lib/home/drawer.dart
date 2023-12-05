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
            if (index==0){
               Navigator.of(context).pushNamed("User");
            }
            else if(index==1){
               Navigator.of(context).pushNamed("profilee");
            }
            else 
            {
              // Navigator.of(context).pushNamed("contactR");
            }
          },
          items: [
            BottomNavigationBarItem(
                label: "HOME",
                icon: Icon(
                  Icons.home,
                ),
                backgroundColor: Color(0xffEDFAFF)
                ),
            BottomNavigationBarItem(
                label: "Profile",
                tooltip: "Profile",
                icon: Icon(Icons.person),
                backgroundColor: Color(0xff41b2d6)),
            BottomNavigationBarItem(
                label: "Warhouses",
                icon: Icon(Icons.warehouse),
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
                  Navigator.of(context).pushNamed("contactR");
                },
              ),
              ListTile(
                title: Text("Log-out"),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context).pushNamed("Welcome");
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
                height: 150,
                width: 200,
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: TextFormField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Search for medicines ",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 1,
                      )),
                    ),
                  )),
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
                              Navigator.of(context).pushNamed("pharmacyloc");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Image.asset(
                                  "images/1906532.png",
                                  height: 100,
                                  width: 80,
                                ),
                                Text(
                                  "Pharmacy locator",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff41b2d6),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        height: 150,
                        width: 155,
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0))),
                  Container(child: GestureDetector(
          onTap: () {Navigator.of(context).pushNamed("uploadpic");},
                 child:Column(children: [
                  SizedBox(height: 9,),
                  //Image.asset("images/1906532.png",height: 100,width: 70,),
                  Icon(Icons.camera_alt_outlined,color: Color(0xff41b2d6),size: 75),
                  SizedBox(height: 4,),
                  Text("Upload Your \nPrescription ",style: TextStyle(fontSize: 18,color: Color(0xff41b2d6),fontWeight: FontWeight.bold),),
                 ],)
                 
                 
                 ),
                height: 150,width: 155,margin: EdgeInsets.only(left: 28),decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all( color: Color(0xff41b2d6) ,width: 2 
              ),
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
                              Navigator.of(context).pushNamed("Searchdrug");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 9,
                                ),
                                Image.asset(
                                  "images/d4.png",
                                  height: 70,
                                  width: 90,
                                  color: Color(0xff41b2d6),
                                ),
                                // Icon(Icons.search,
                                //     color: Color(0xff41b2d6), size: 75),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Find Your Medicine Now",
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
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xff41b2d6), width: 2),
                            borderRadius: BorderRadius.circular(15.0))),
                    Container(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("product");
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Image.asset(
                                  "images/download.png",
                                  height: 100,
                                  width: 120,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Popular Medicine",
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
              )
            ],
          ),
        ));
  }
}
