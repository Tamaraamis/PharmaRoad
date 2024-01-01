import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
<<<<<<< HEAD
      body:SingleChildScrollView(
     child:  Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(15),
child:Column(children: [
SizedBox(height: 20,),
Row(children: [
  Text("WEL",style: TextStyle(color: Color(0xff41B2D6),fontSize: 45),),
  Text("COME",style: TextStyle(color: Color(0xffC7F1FF),fontSize: 45),)
],),
SizedBox(height: 20,),
=======
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
             Row(
              children: [
                Text(
                  "WEL",
                  style: TextStyle(color: Color(0xff41B2D6), fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  "COME",
                  style: TextStyle(color: Color(0xffC7F1FF), fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset(
              "images/welc.png",
              width: 600,
              height: 350,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            const Text(
              "Time is money",
              style: TextStyle(color: Color(0xff41B2D6), fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Pharma Road to try a series to choose your medicine",
              style: TextStyle(color: Color(0xffC7F1FF), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("Users");
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff41B2D6),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                elevation: 10,
                textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xffC7F1FF)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b

              ),
<<<<<<< HEAD
//SizedBox(height: 5,),
Text("Time is money",style: TextStyle(color: Color(0xff41B2D6),fontSize: 35),),
Text("Pharma Road to try a series to choose your medicine",style: TextStyle(color: Color(0xffC7F1FF),fontSize: 25),),
SizedBox(height: 5,),
Center(
 child:ElevatedButton(onPressed: () {
  Navigator.of(context).pushNamed("User");
},
child: Text("Next",style: TextStyle(color: Color(0xffC7F1FF)),),
style: ElevatedButton.styleFrom(
  primary: Color(0xff41B2D6),
  padding: EdgeInsets.all(15),
  
  elevation: 100,
  textStyle: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xffC7F1FF)),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
),


 ))


],)


=======
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
      ),
    ));
  }
}
