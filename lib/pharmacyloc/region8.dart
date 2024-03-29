import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'forMap.dart';
class region8 extends StatefulWidget {
  const region8({super.key});

  @override
  State<region8> createState() => _region8State();
}

class _region8State extends State<region8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffedfaff),
        appBar: AppBar(
          backgroundColor: Color(0xff41b2d6),
          title: Text(
            "Pharmacy Locator",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Color(0xffEDFAFF),
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text("حي الحمر",
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff41b2d6),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
            margin: EdgeInsets.only(left: 50),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 6, top: 25),
                    child: Column(
                      children: [
                        Text("Samar Pharmacy",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff121212),
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Text(
                            "Open 8 AM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 26, 107, 32)),
                          ),
                          padding: EdgeInsets.only(top: 5),
                        )
                      ],
                    )),
                SizedBox(
                  width: 66,
                ),
                IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 534 3721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 3721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/u1PcwycyAb14VaFC6');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
              ],
            ),),
            height: 90,
            width: 370,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xff41b2d6)),
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 236, 238, 239)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 6, top: 25),
                    child: Column(
                      children: [
                        Text("Aserat Pharmacy       ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff121212),
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Text(
                            "Closes 9 PM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 26, 107, 32)),
                          ),
                          padding: EdgeInsets.only(top: 5, right: 55),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 534 3721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 3721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/u1PcwycyAb14VaFC6');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
              ],
            ),),
            height: 90,
            width: 370,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xff41b2d6)),
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 236, 238, 239)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 6, top: 25),
                    child: Column(
                      children: [
                        Text("Dawaey Pharmacy     ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff121212),
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Text(
                            "Closes 1 AM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 26, 107, 32)),
                          ),
                          padding: EdgeInsets.only(top: 5, right: 55),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
               IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 534 3721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 3721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/u1PcwycyAb14VaFC6');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
              ],
            ),),
            height: 90,
            width: 370,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xff41b2d6)),
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 236, 238, 239)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 6, top: 25),
                    child: Column(
                      children: [
                        Text("Pharmacy One           ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff121212),
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Text(
                            "Closes 12 AM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 26, 107, 32)),
                          ),
                          padding: EdgeInsets.only(top: 5, right: 55),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 534 3721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 3721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/u1PcwycyAb14VaFC6');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
              ],
            ),),
            height: 90,
            width: 370,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xff41b2d6)),
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 236, 238, 239)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 6, top: 25),
                    child: Column(
                      children: [
                        Text("Oraib Pharmacy         ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff121212),
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Text(
                            "Open 24 hours",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 26, 107, 32)),
                          ),
                          padding: EdgeInsets.only(top: 5, right: 55),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
               IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 534 3721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 3721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/u1PcwycyAb14VaFC6');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
              ],
            ),),
            height: 90,
            width: 370,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xff41b2d6)),
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 236, 238, 239)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 6, top: 25),
                    child: Column(
                      children: [
                        Text("CVS Pharmacy           ",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff121212),
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Text(
                            "Closes 10 PM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 26, 107, 32)),
                          ),
                          padding: EdgeInsets.only(top: 5, right: 55),
                        )
                      ],
                    )),
                SizedBox(
                  width: 20,
                ),
                IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 534 3721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 3721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/u1PcwycyAb14VaFC6');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
              ],
            ),),
            height: 90,
            width: 370,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xff41b2d6)),
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 236, 238, 239)),
          ),
          SizedBox(
            height: 15,
          )
        ])));
  }
}
