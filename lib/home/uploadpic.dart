import 'package:flutter/material.dart';

class uploadpic extends StatefulWidget {
  const uploadpic({super.key});

  @override
  State<uploadpic> createState() => _uploadpicState();
}

class _uploadpicState extends State<uploadpic> {
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
          child: Text("Upload More Prescription",style: TextStyle(fontSize: 18,color:Color(0xff41b2d6) ),)),
          onTap: () {
            showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 252, 252, 252),
            actions: [
             
             Row(children: [
              Container(child: Text("Upload Prescription",style:TextStyle(fontWeight: FontWeight.bold),),),
              SizedBox(width: 88,),
              IconButton(onPressed:(){}, icon: Icon(Icons.close,))
             ],),
             SizedBox(height: 10,),
       Container(
        width: 110,
        height: 50,
        margin: EdgeInsets.only(right: 135),
        decoration: BoxDecoration(
             // color: Colors.white,
              border: Border.all( color: Colors.white ,width: 2 
              ),
              borderRadius: BorderRadius.circular(10.0)),
        child: Row(children: [
          
        SizedBox(width: 5,),
Icon(Icons.camera_alt,size: 25,),
SizedBox(width: 5,),
Text("Camera")
       ],),),
          SizedBox(height: 30,)
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
}