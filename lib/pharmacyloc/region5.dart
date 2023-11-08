import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';



class region5 extends StatefulWidget {
  const region5({super.key});

  @override
  State<region5> createState() => _region5State();
}

class _region5State extends State<region5> {
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
      Container(child:Text("حي الفضيلة",style: TextStyle(fontSize: 40,color:Color( 0xff41b2d6),
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
      Container(child:Text("Open  8  AM",style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 26, 107, 32)),),padding: EdgeInsets.only(top: 5) ,)
      
     ],) ),
      SizedBox(width: 66,),
       IconButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            
            actions: [
              Container(child:Text("Call 06 535 3461",style: TextStyle(fontSize: 20),),
              padding: EdgeInsets.only(left:55),),
              
              IconButton(onPressed: (){ 
                
  FlutterPhoneDirectCaller.callNumber('06 535 3461');}, icon: Icon(Icons.phone))],
alignment: Alignment.bottomCenter,
          );

        }
        
        );
      
      },  icon: Icon(Icons.phone,color: Color( 0xff41b2d6),)),
      IconButton(onPressed: (){

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
      
      Text("Freesia Pharmacy    ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
      
      Text("Sodium Pharmacy    ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
      
      Text("Pharmacy One           ",style: TextStyle(fontSize: 25,color: Color(0xff121212),
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
     
      IconButton(onPressed: ()async{
         
    
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