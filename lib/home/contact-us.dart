import 'package:flutter/material.dart';

class contactR extends StatefulWidget {
  const contactR({super.key});

  @override
  State<contactR> createState() => _contactRState();
}

class _contactRState extends State<contactR> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
  appBar:AppBar(
    title: Text("Contact Us" ,style: TextStyle(fontSize:27,color:Color.fromARGB(255, 253, 252, 252),fontWeight: FontWeight.bold),),
    backgroundColor: Color(0xFF41B2D6),
    leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 255, 254, 254),
              
            ),
            onPressed: () {
               Navigator.of(context).pushNamed("drawer");
            },
          
          ),

    centerTitle: true,
    
  ),

  backgroundColor: Color(0xffEDFAFF),
   body: SingleChildScrollView(
    child: Container(
    
     margin: EdgeInsets.all(20),
     decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)

     ),
      height: 750,
      width: 5700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //alignment:Alignment.center ,
            height: 200,
            width: 500,
            child:Image.asset("images/contact.png")
          
          ,margin: EdgeInsets.only(top: 15),
         
          ),
          Container(
            alignment: Alignment.center,
            margin:EdgeInsets.only(top:20 ,right: 20,left: 20) ,
            child: Text("We're committed to improving your experience.For any concerns or formal complaints, reach out to us through the form or email customercare@pharmaroad.jo. Call us at +962788592457. Expect feedback within 48 hours.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)


          ),
          Container(
         height: 50,
       width:600 ,
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
           height:150,
       width:600 ,
       margin: EdgeInsets.only(right: 10,top:20,left: 10),
       child: TextField(
    
        maxLines: 10,
        decoration: InputDecoration(
            border:OutlineInputBorder() ,
          labelText: "Subject *",labelStyle: TextStyle(fontSize: 20,color:  Colors.black,fontWeight: FontWeight.bold,),
          alignLabelWithHint: true,
          suffixIcon: Icon(Icons.subject_outlined,color: Colors.black,),
        ),
       ),
           ),
           
           Container(
            height: 55,
            width: 350,
          
            margin: EdgeInsets.only(right: 10,top:20,left: 10),
            child:
           ElevatedButton(
            onPressed: () {
              
            },
              style: ElevatedButton.styleFrom(
             primary: Color(0xFF41B2D6), // لون الزر
            ),
              
         
           child: Text("Send" ,style: TextStyle(color:Colors.black,fontSize: 15)),)
            
           ),

        
        ]
   ),
   ),
   ),
   );
  }
}