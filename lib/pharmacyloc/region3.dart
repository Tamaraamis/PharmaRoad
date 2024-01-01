import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'forMap.dart';
class region3 extends StatefulWidget {
  const region3({super.key});

  @override
  State<region3> createState() => _region3State();
}

class _region3State extends State<region3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Color(0xffedfaff),
appBar: AppBar(
    backgroundColor:Color(0xff41b2d6),
    title: Text("Pharmacy Locator",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color:Color(0xffEDFAFF),fontStyle: FontStyle.italic ),),
    centerTitle: true,
    
    
   ),
       body:SingleChildScrollView(child:Column(children: [
        SizedBox(height: 20,),
      Container(child:Text("حي الرحمانية",style: TextStyle(fontSize: 40,color:Color( 0xff41b2d6),
      fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),margin: EdgeInsets.only(left:50),),
       SizedBox(height: 10,),
      Container(
        child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Ghazi Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Open 24 hours",style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 26, 107, 32)),),padding: EdgeInsets.only(top: 5) ,)
      
     ],) ),
      SizedBox(width: 66,),
        IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 534 4721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 4721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/1ZLcYN2WRChaMnP78');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
        
          SizedBox(height: 15,),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Siyam Pharmacy      ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
     Column(children: [
          Container(child:Text("Closes 10 PM",style: TextStyle(fontSize: 16,
          color:Color.fromARGB(255, 26, 107, 32)),),padding: EdgeInsets.only(top: 6) ,margin: EdgeInsets.only(right: 35),)
      
      ],)
     ],) ),
      SizedBox(width: 20,),
      IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 533 0505",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 533 0505');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/E2JAVh4n6ui7yK746');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
        
          SizedBox(height: 15,),
          Container(
        child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Asper Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Open 24 hours",style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 26, 107, 32)),),padding: EdgeInsets.only(top: 5) ,)
      
     ],) ),
      SizedBox(width: 66,),
        IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 07 9065 6666",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 9065 6666');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/XHFVpFYPigxBbuoeA');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
        
          SizedBox(height: 15,),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Alshawaa Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Closes 12 AM",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 26, 107, 32)),),
      padding: EdgeInsets.only(top: 5,right: 55) ,)
      
     ],) ),
      SizedBox(width: 20,),
          IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 535 3955",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 06 535 3955');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/PoPcJtdnKPVPuwAd6');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
     
        
          SizedBox(height: 15,),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Azalia Pharmacy      ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Closes 2 AM",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 26, 107, 32)),),
      padding: EdgeInsets.only(top: 5,right: 55) ,)
      
     ],) ),
      SizedBox(width: 20,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 537 0688",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 537 0688');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/T2Hv9mYfeneM8WET8');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
       
       
          SizedBox(height: 15,),
         
       
       
        
        ]))

    );
  }
}