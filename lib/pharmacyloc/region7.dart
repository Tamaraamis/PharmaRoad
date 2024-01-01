import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'forMap.dart';

class region7 extends StatefulWidget {
  const region7({super.key});

  @override
  State<region7> createState() => _region7State();
}

class _region7State extends State<region7> {
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
      Container(child:Text("حي الفروسية",style: TextStyle(fontSize: 40,color:Color( 0xff41b2d6),
      fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),margin: EdgeInsets.only(left:50),),
       SizedBox(height: 10,),
      Container(
        child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Sadan Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Open 8 AM",style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 26, 107, 32)),),padding: EdgeInsets.only(top: 5) ,)
      
     ],) ),
      SizedBox(width: 66,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 06 439 8435",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 439 8435');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/HqGd2nrhEJC37r3t5');
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
      
      Text("Al-Rantisi Pharmacy ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
              Row(children: [
                 Container(child:Text("Call 06 420 2151",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 420 2151');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/ZWVZ3Vt3EVJfdxfB8');
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
      
      Text("Seebal Pharmacy      ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
                 Container(child:Text("Call 06 474 7877",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 474 7877');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/3LNupDmSzR6VoFYy7');
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
      
      Text(" Al-Rasem Pharmacy ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
                 Container(child:Text("Call 07 9607 8481",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 9607 8481');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/Nei8mim5unedqLpx8');
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
      
      Text("Pharmacy caveman  ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
              Row(children: [
                 Container(child:Text("Call 07 9876 3721",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 9876 3721');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/5T8pdiDCdkZdtmwq6');
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
      
      Text("Cleopatra Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
                 Container(child:Text("Call 06 420 0545",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 420 0545');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/BK1aLK1s7B2GtKYa9');
      },  icon: Icon(Icons.location_on,color: Color( 0xff41b2d6))),
      ],),),
      
      height: 90,width:370,margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(border: Border.all(width: 2,color: Color(0xff41b2d6)),borderRadius: BorderRadius.circular(20)
      ,color: Color.fromARGB(255, 236, 238, 239)),
      ),
       
       
      
       SizedBox(height: 15,)
        
        ]))

    );
  }
}