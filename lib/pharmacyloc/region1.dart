import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'forMap.dart';

class region1 extends StatefulWidget {
  const region1({super.key});

  @override
  State<region1> createState() => _region1State();
}

class _region1State extends State<region1> {
      final number='0788592457';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedfaff),
appBar: AppBar(
    backgroundColor:Color(0xff41b2d6),
    title: Text("Pharmacy Locator",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color:Color(0xffEDFAFF),fontStyle: FontStyle.italic ),),
    centerTitle: true,
    
    
   ),
       body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(children: [
        SizedBox(height: 20,),
      Container(
        child:Text("حي الكمالية",style: TextStyle(fontSize: 40,color:Color( 0xff41b2d6),
      fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),margin: EdgeInsets.only(left:50),),
       SizedBox(height: 10,),
      Container(
        child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Raiza Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Open 24 hours",style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 26, 107, 32)),),padding: EdgeInsets.only(top: 5) ,)
      
     ],) ),
      SizedBox(width: 66,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 535 3461');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 06 535 3461",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
             ],
  alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
      IconButton(onPressed: (){
  MapUtils.openMap('https://maps.app.goo.gl/XehwPHVtBRKY7ZHL7');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
        
          SizedBox(height: 18,),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Alkamalia Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Closes 10 PM",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 26, 107, 32)),),
      padding: EdgeInsets.only(top: 5,right: 55) ,)
      
     ],) ),
      SizedBox(width: 20,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 9545 1919');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 07 9545 1919",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/3UoGkuAwdBhdJjvB8');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
        
          SizedBox(height: 18,),
          Container(
            
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Dawacom Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
              IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 8066 6701');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 07 8066 6701",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
              ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
      // SizedBox(width: 4,),
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/Dgvx9LHaiEcXFD369');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
     
        
          SizedBox(height: 18,),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Noorseen Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
              IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 477 4668');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 06 477 4668",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
              ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
   MapUtils.openMap('https://maps.app.goo.gl/iEPkkE1X74CqARGN8');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
       
       
          SizedBox(height: 18,),
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Sweileh Pharmacy    ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Closes 9 PM",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 26, 107, 32)),),
      padding: EdgeInsets.only(top: 5,right: 55) ,)
      
     ],) ),
      SizedBox(width: 20,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 1072');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 06 534 1072",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
              ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
         
    MapUtils.openMap('https://maps.app.goo.gl/FJxeUB2HE8fLC1C88');
      },  icon: Icon(Icons.location_on,color: Color(0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
       
       
        
        ]))
      );
  }
}