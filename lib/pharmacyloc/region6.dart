import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'forMap.dart';

class region6 extends StatefulWidget {
  const region6({super.key});

  @override
  State<region6> createState() => _region6State();
}

class _region6State extends State<region6> {
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
      Container(child:Text("حي ميسلون",style: TextStyle(fontSize: 40,color:Color( 0xff41b2d6),
      fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),margin: EdgeInsets.only(left:50),),
       SizedBox(height: 10,),
      Container(
        child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Hend Pharmacy ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      
      Column(children: [
          Container(child:Text("Open 9 AM",style: TextStyle(fontSize: 16,
          color:Color.fromARGB(255, 26, 107, 32)),),padding: EdgeInsets.only(top: 6) ,)
      
      ],)
    
     ],) ),
      SizedBox(width: 66,),
        IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Row(children: [
                 Container(child:Text("Call 07 7658 5246",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 7658 5246');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/sMfkR2bYAaXehShD6');
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
      
      Text("Pharmacy Ten           ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
                 Container(child:Text("Call 06 200 6851",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 200 6851');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/ZfW5DjTDd6g37wnYA');
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
      
      Text("Ibn sina Pharmacy    ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Column(children: [
          Container(child:Text("Closes 12 AM",style: TextStyle(fontSize: 16,
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
                 Container(child:Text("Call 06 489 0442",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 489 0442');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/CDUjcWzixcVg4onr5');
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
      
      Text("Lychee Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
     Column(children: [
          Container(child:Text("Closes 1 AM",style: TextStyle(fontSize: 16,
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
                 Container(child:Text("Call 07 9878 4542",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 9878 4542');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/72AXtJJjEMBsHcEJ6');
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
      
      Text("AlRebat Pharmacy    ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Column(children: [
          Container(child:Text("Closes 11 PM",style: TextStyle(fontSize: 16,
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
                 Container(child:Text("Call 07 8835 6211",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 8835 6211');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/H1dbAqAGFgNhWwZ4A');
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
      
      Text("Pharmacy Lifetime   ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
     Column(children: [
          Container(child:Text("Open 8 AM",style: TextStyle(fontSize: 16,
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
                 Container(child:Text("Call 06 420 6191",style: TextStyle(fontSize: 20),),
             ),
             SizedBox(width: 55,),
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 420 6191');}, icon: Icon(Icons.phone)),
             
             
              ],)
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/hcNFCtRkWVmbJLXL6');
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