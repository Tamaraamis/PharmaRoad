import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body:
       Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(15),
child:Column(children: [
SizedBox(height: 20,),
Row(children: [
  Text("WEL",style: TextStyle(color: Color(0xff41B2D6),fontSize: 45),),
  Text("COME",style: TextStyle(color: Color(0xffC7F1FF),fontSize: 45),)
],),
SizedBox(height: 20,),

Image.asset(
                "images/welc.png",
                width: 600,
                height: 400,
                fit: BoxFit.fill,
              ),
//SizedBox(height: 5,),
Text("Time is money",style: TextStyle(color: Color(0xff41B2D6),fontSize: 35),),
Text("Pharma Road to try a series to choose your medicine",style: TextStyle(color: Color(0xffC7F1FF),fontSize: 25),),
SizedBox(height: 20, ),
Center(
 child:ElevatedButton(onPressed: () {
  Navigator.of(context).pushNamed("Users");
},
child: Text("Next"),
style: ElevatedButton.styleFrom(
  primary: Color(0xff41B2D6),
  padding: EdgeInsets.all(15),
  
  elevation: 100,
  textStyle: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xffC7F1FF)),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
),


 ))


],)


      ),
    );
  }
}
