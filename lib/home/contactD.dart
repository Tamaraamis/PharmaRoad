import 'dart:convert';
import 'package:flutter/material.dart';

class contactd extends StatefulWidget {
  const contactd({super.key});

  @override
  State<contactd> createState() => _contactdState();
}

class _contactdState extends State<contactd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  appBar:AppBar(
    title: Text("Contact Us" ,style: TextStyle(color:Color(0xffEDFAFF)),),
    backgroundColor: Color(0xFF41B2D6),

    centerTitle: true,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(color: Color(0xffEDFAFF),Icons.search))
    ],
  ),

  backgroundColor: Color(0xffEDFAFF),

  
  body: SingleChildScrollView(
    
    child:
    Column(children: [
     Container(
    padding: EdgeInsets.only(left: 13,right: 2),
     margin: EdgeInsets.all(20),
     decoration: BoxDecoration(
      
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)

     ),
height: 750,
      width: 8000,
  
        child: Column(children: [
          Container(
            alignment:Alignment.center ,
            
            child:
          Text("Contact Us ",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
          margin: EdgeInsets.only(top: 15),
         
          ),
          SizedBox(height: 10,),
          
           Container(
            margin: EdgeInsets.all(5),
            child: Text("We continuously strive to enhance your experience and make it more enjoyable. Feel free to reach out to us!\nIf you have any issues, or wish to file a formal complaint, you can always contact us by filling out the below form or via email at customercare@pharmaroad.jo\nOr you can call us at +962788592457.\n\nWe ensure that guests receive feedback within a maximum of 48 hours.",
            
            
            
            style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400),)),
       
      Container(
         height: 60,
       width:1600 ,
       margin: EdgeInsets.only(right: 10,top: 30,left: 10),
       
        child: TextField(
            
          
          
          decoration: const InputDecoration(
            
             border:OutlineInputBorder() ,
            labelText: " Email *" ,labelStyle: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
            alignLabelWithHint: true,
            suffixIcon: Icon(Icons.email,color: Colors.black,)
          ),
        ),
      ),



           Container(
           height:130,
       width:600 ,padding:EdgeInsets.only(top: 5),
       margin: EdgeInsets.only(right: 10,top:25,left: 10),
       child: TextField(
        
        
        maxLines: 20,
        decoration: InputDecoration(
            border:OutlineInputBorder() ,
           // hintText:"Subject *",labelStyle: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,) ,
          labelText: "Subject *",labelStyle: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,),alignLabelWithHint: true,
          suffixIcon: Icon(Icons.subject_outlined,color: Colors.black,),
        
        ),
       ),
           ),



           Container(
          
            height: 50,
            width: 350,
            margin: EdgeInsets.only(right: 10,top:20,left: 10),
            
            child:ElevatedButton(
            
              onPressed: (){

              }
           ,
           child: Text("Send" ,style: TextStyle(color:Color(0xffEDFAFF),fontSize: 17)),)
            ,color:Color(0xFF41B2D6),
           ),
        ])
        
        )],
  ),
    )
    );
    
  }
}