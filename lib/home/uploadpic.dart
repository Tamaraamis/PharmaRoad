
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class uploadpic extends StatefulWidget {
  const uploadpic({super.key});

  @override
  State<uploadpic> createState() => _uploadpicState();
}

class _uploadpicState extends State<uploadpic> {
 File? imagefile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffEDFAFF),
appBar: AppBar(
  backgroundColor:Color(0xff41b2d6),
    title: Text("Upload Prescription ",textAlign: TextAlign.center,style: TextStyle(fontSize: 27,color:Color(0xffEDFAFF),fontStyle: FontStyle.italic ),),
    centerTitle: true,
          
    
),
body: SingleChildScrollView(
  child: Column(children: [
    Image.asset("images/women.png",height: 320,width: 500,),

    Row(children: [
     Container(child:Icon(Icons.wysiwyg,size: 55,color:Color(0xff41b2d6),)
     ,margin: EdgeInsets.only(left: 25,top: 45),),
     SizedBox(width: 10,),
     Container(
      margin: EdgeInsets.only(top:45),
      child: Text("Please upload images of your\nprescription",
     style: TextStyle(fontSize: 18,color: Color(0xff41b2d6),fontWeight: FontWeight.bold),),)
    ],),
    SizedBox(height: 35,),
      Container(child: GestureDetector(
        child:Container(
          margin: EdgeInsets.only(top:10,left: 70),
          child: Text("Upload Prescription",style: TextStyle(fontSize: 18,color:Color(0xff41b2d6) ),)),
          onTap: () {
            showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 252, 252, 252),
        //  shape: InputBorder.none,
            actions: [
             Container(
            
              width:double.maxFinite,
              height: 50,
              child:Row(children: [
              Container(
                
                child: Text("Upload Prescription",style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color(0xff41b2d6) ),),),
              SizedBox(width: 63,),
              IconButton(onPressed:(){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.close,color: Color(0xff41b2d6),))
             ],), ),
             SizedBox(height: 25,),
             Row(children: [
              
       Container(
        width: 110,
        height: 50,
        margin: EdgeInsets.only(left: 13),
        decoration: BoxDecoration(
             //color: Color.fromARGB(255, 127, 122, 122),Color.fromARGB(255, 230, 230, 230)
              border: Border.all( color:Color(0xff41b2d6) ,width: 2 
              ),
              borderRadius: BorderRadius.circular(10.0)),
        child: GestureDetector(
          onTap: () {
            _pickImageFromCamera();
          },
          child:Row(children: [
          
        SizedBox(width: 5,),
Icon(Icons.camera_alt_outlined,size: 25,color: Color(0xff41b2d6) ,),
SizedBox(width: 5,),
Text("Camera",style: TextStyle(color: Color(0xff41b2d6) ),),


       ],),)),
              
              SizedBox(width: 10,),

       Container( 
        width: 110,
        height: 50, 
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
             //color: Color.fromARGB(255, 127, 122, 122),Color.fromARGB(255, 230, 230, 230)
              border: Border.all( color:Color(0xff41b2d6) ,width: 2 
              ),
              borderRadius: BorderRadius.circular(10.0)),
        child:GestureDetector(
          onTap: () {
            _pickImageFromGallery();
          },
          child: 
         Row(children: [
          
        SizedBox(width: 5,),
Icon(Icons.add_photo_alternate_outlined,size: 25,color: Color(0xff41b2d6) ,),
SizedBox(width: 5,),
Text("Gallery",style: TextStyle(color: Color(0xff41b2d6) ),),


       ],),))
       
       
       ,],),
          SizedBox(height: 50,)
          
             ],
alignment: Alignment.bottomCenter,

          );

        }
        
        );

          },
                
                 
                 ),
                height: 50,width: 330,margin: EdgeInsets.only(left: 11),decoration: BoxDecoration(
             // color: Colors.white,
              border: Border.all( color: Color(0xff41b2d6) ,width: 2 
              ),
              borderRadius: BorderRadius.circular(15.0))),
  ],),
),
    );
    
  }
  Future _pickImageFromGallery()async{
   final returnedImage= await ImagePicker().pickImage(source:ImageSource.gallery);

  }
   Future _pickImageFromCamera()async{
   final returnedImage= await ImagePicker().pickImage(source:ImageSource.camera);

  }
}