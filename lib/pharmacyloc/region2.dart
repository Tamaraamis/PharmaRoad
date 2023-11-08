import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'forMap.dart';
class region2 extends StatefulWidget {
  const region2({super.key});

  @override
  State<region2> createState() => _region2State();
}

class _region2State extends State<region2> {
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
      Container(child:Text("حي الشرقي",style: TextStyle(fontSize: 40,color:Color( 0xff41b2d6),
      fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),margin: EdgeInsets.only(left:50),),
       SizedBox(height: 10,),
     
          Container(
            child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Ibn-Ouf Pharmacy    ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Open 24 hours",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 26, 107, 32)),),
      padding: EdgeInsets.only(top: 5,right: 55) ,)
      
     ],) ),
      SizedBox(width: 20,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
               IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 3721');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 06 534 3721",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
             ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
MapUtils.openMap('https://maps.app.goo.gl/u1PcwycyAb14VaFC6');
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
      
      Text("Hanadi Pharmacy     ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
                
  FlutterPhoneDirectCaller.callNumber('06 533 6950');}, icon: Icon(Icons.phone)),
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
MapUtils.openMap('https://maps.app.goo.gl/MHbywBKG7A3rAJM98');
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
      
      Text("Hiyam Pharmacy      ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Closes 1 AM",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 26, 107, 32)),),
      padding: EdgeInsets.only(top: 5,right: 55) ,)
      
     ],) ),
      SizedBox(width: 20,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('07 8889 7230');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 07 8889 7230",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
              ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
   MapUtils.openMap('https://maps.app.goo.gl/dZg8FhjkhwKLsGSE9');
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
      
      Text("Adrenaline Pharmacy",style: TextStyle(fontSize: 24,color: Color(0xff121212),
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
                
  FlutterPhoneDirectCaller.callNumber('06 534 5857');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 06 534 5857",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
              ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
         
    MapUtils.openMap('https://maps.app.goo.gl/C2LtnzN5NPwnyYnt9');
      },  icon: Icon(Icons.location_on,color: Color(0xff41b2d6))),
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
      
      Text("AlShawwa Pharmacy",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
                
  FlutterPhoneDirectCaller.callNumber('06 535 3955');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 06 535 3955",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
              ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
         
    MapUtils.openMap('https://maps.app.goo.gl/SYPTRjotgxntNpWb6');
      },  icon: Icon(Icons.location_on,color: Color(0xff41b2d6))),
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
       
       SizedBox(height: 15,),
        Container(
          child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child:Row(children: [Container(
        padding: EdgeInsets.only(left: 6,top: 25),
        child: Column(children: [
      
      Text("Najib Pharmacy         ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
      fontWeight: FontWeight.w500)),
      Container(child:Text("Opens 8 AM",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 26, 107, 32)),),
      padding: EdgeInsets.only(top: 5,right: 55) ,)
      
     ],) ),
      SizedBox(width: 20,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 534 7632');}, icon: Icon(Icons.phone)),
              Container(child:Text("Call 06 534 7632",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(right:70),),
              
              ],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
     
      IconButton(onPressed: (){
         
    MapUtils.openMap('https://maps.app.goo.gl/z8dKhAMs9ktX64DZ6');
      },  icon: Icon(Icons.location_on,color: Color(0xff41b2d6))),
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