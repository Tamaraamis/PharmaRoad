
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class uploadpic extends StatefulWidget {
  const uploadpic({super.key});

  @override
  State<uploadpic> createState() => _uploadpicState();
}

class _uploadpicState extends State<uploadpic> {
 File? imagefile;
 String imageUrl = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffEDFAFF),
appBar: AppBar(
  backgroundColor:const Color(0xff41b2d6),
    title: const Text("Upload Prescription ",textAlign: TextAlign.center,style: TextStyle(fontSize: 27,color:Color(0xffEDFAFF),fontStyle: FontStyle.italic ),),
    centerTitle: true,
          
    
),
body: SingleChildScrollView(
  child: Column(children: [
    Image.asset("images/women.png",height: 320,width: 500,),

    Row(children: [
     Container(child:const Icon(Icons.wysiwyg,size: 55,color:Color(0xff41b2d6),)
     ,margin: const EdgeInsets.only(left: 25,top: 45),),
     const SizedBox(width: 10,),
     Container(
      margin: const EdgeInsets.only(top:45),
      child: const Text("Please upload images of your\nprescription",
     style: TextStyle(fontSize: 18,color: Color(0xff41b2d6),fontWeight: FontWeight.bold),),)
    ],),
    const SizedBox(height: 35,),
      Container(height: 50,width: 330,margin: const EdgeInsets.only(left: 11),decoration: BoxDecoration(
             // color: Colors.white,
              border: Border.all( color: const Color(0xff41b2d6) ,width: 2 
              ),
              borderRadius: BorderRadius.circular(15.0)), child: GestureDetector(
        child:Container(
          margin: const EdgeInsets.only(top:10,left: 70),
          child: const Text("Upload Prescription",style: TextStyle(fontSize: 18,color:Color(0xff41b2d6) ),)),
          onTap: () {
            showDialog(context: context, builder: (context)
        {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        //  shape: InputBorder.none,
            actions: [
             Container(
            
              width:double.maxFinite,
              height: 50,
              child:Row(children: [
              Container(
                
                child: const Text("Upload Prescription",style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color(0xff41b2d6) ),),),
              const SizedBox(width: 63,),
              IconButton(onPressed:(){
                Navigator.of(context).pop();
              }, icon: const Icon(Icons.close,color: Color(0xff41b2d6),))
             ],), ),
             const SizedBox(height: 25,),
             Row(children: [
              
       Container(
        width: 110,
        height: 50,
        margin: const EdgeInsets.only(left: 13),
        decoration: BoxDecoration(
             //color: Color.fromARGB(255, 127, 122, 122),Color.fromARGB(255, 230, 230, 230)
              border: Border.all( color:const Color(0xff41b2d6) ,width: 2 
              ),
              borderRadius: BorderRadius.circular(10.0)),
        child: GestureDetector(
          onTap: () async{
            ImagePicker imagePicker=ImagePicker();
            XFile? file=await ImagePicker().pickImage(source:ImageSource.camera);
           
           print('${file?.path}');

                    if (file == null) return;
           String uniqueFileName=DateTime.now().millisecondsSinceEpoch.toString();
           Reference referenceRoot=FirebaseStorage.instance.ref();
           Reference referenceDirImages=referenceRoot.child('images');
           Reference referenceImageToUpload=referenceDirImages.child(uniqueFileName);
            try {
                      //Store the file
                      await referenceImageToUpload.putFile(File(file!.path));
                      //Success: get the download URL
                      imageUrl = await referenceImageToUpload.getDownloadURL();
                    } catch (error) {
                      //Some error occurred
                    }
          },
          child:const Row(children: [
          
        SizedBox(width: 5,),
Icon(Icons.camera_alt_outlined,size: 25,color: Color(0xff41b2d6) ,),
SizedBox(width: 5,),
Text("Camera",style: TextStyle(color: Color(0xff41b2d6) ),),


       ],),)),
              
              const SizedBox(width: 10,),

       Container( 
        width: 110,
        
        height: 50, 
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
             //color: Color.fromARGB(255, 127, 122, 122),Color.fromARGB(255, 230, 230, 230)
              border: Border.all( color:const Color(0xff41b2d6) ,width: 2 
              ),
              borderRadius: BorderRadius.circular(10.0)),
        child:GestureDetector(
          onTap: ()  async{
            ImagePicker imagePicker=ImagePicker();
            XFile? file=await ImagePicker().pickImage(source:ImageSource.gallery);
           
           print('${file?.path}');

                    if (file == null) return;
           String uniqueFileName=DateTime.now().millisecondsSinceEpoch.toString();
           Reference referenceRoot=FirebaseStorage.instance.ref();
           Reference referenceDirImages=referenceRoot.child('images');
           Reference referenceImageToUpload=referenceDirImages.child(uniqueFileName);
            try {
                      //Store the file
                      await referenceImageToUpload.putFile(File(file!.path));
                      //Success: get the download URL
                      imageUrl = await referenceImageToUpload.getDownloadURL();
                    } catch (error) {
                      //Some error occurred
                    }
          },
          child: 
         const Row(children: [
          
        SizedBox(width: 5,),
Icon(Icons.add_photo_alternate_outlined,size: 25,color: Color(0xff41b2d6) ,),
SizedBox(width: 5,),
Text("Gallery",style: TextStyle(color: Color(0xff41b2d6) ),),


       ],),))
       
       
       ,],),
          const SizedBox(height: 50,)
          
             ],
alignment: Alignment.bottomCenter,

          );

        }
        
        );

          },
                
                 
                 )),
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