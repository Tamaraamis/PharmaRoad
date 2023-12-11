import 'package:flutter/material.dart';
import 'package:flutter_application_2/home/color.dart';
class HomeE extends StatefulWidget {
  const HomeE({super.key});

  @override
  State<HomeE> createState() => _HomeEState();
}

class _HomeEState extends State<HomeE> {







  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: pColor,
    appBar: AppBar(
    elevation: 0.0,
    backgroundColor: pColor,
    title: const Text("Home Page",style: TextStyle(fontSize: 23),),
    centerTitle: true,

    ),
    body: Container(
      child: Container(
      height: 800,
      width: double.infinity,
      decoration: const BoxDecoration(
      color:wColor,
      borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30)
 )


      ),
   child:ListView(
    padding: const EdgeInsets.only(left: 30,top: 30),
    children: [

InkWell(
       onTap: (){

       Navigator.of(context).pushNamed( "Serach");

       },
   child: const Text("Search Now",
     style: TextStyle(fontSize:35,color: pColor,fontWeight: FontWeight.w500 ),),

      ),
    //  SizedBox(height: 10,),
      SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column( children: [

        Container( 
       
       margin: const EdgeInsets.all(10),
        child: Image.asset("images/d4.png",width: 200,height: 200,color: pColor,),


        ),
      //  SizedBox(height: 10,),

  /* Text("Type of Medicine",
      style: TextStyle(fontSize:19,color: pColor,fontWeight: FontWeight.w500,),textAlign: TextAlign.left,),*/
      SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Row(children: [
        Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset("images/d3.jpg",width: 200,height: 200,),
        

        ),
 Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset("images/d2.jpg",width: 200,height: 200,),
        

        ),
 Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset("images/d6.jpg",width: 200,height: 200,),
        

        ),

       ],),


      ),
     // SizedBox(height: 30,),
      /*InkWell(
       onTap: (){

       Navigator.of(context).pushNamed( "Serach");

       },
   child: Text("Search Now",
     style: TextStyle(fontSize:19,color: pColor,fontWeight: FontWeight.w500 ),),

      ),
      SizedBox(height: 10,),
      SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column( children: [

        Container( 
       
       margin: EdgeInsets.all(20),
        child: Image.asset("images/d4.png",width: 200,height: 200,color: pColor,),


        ),*/
      Container( 
       
       margin: const EdgeInsets.all(10),
        
             child: Image.asset("images/ph.jpg",width: double.infinity,height: 300),

        ),


       ],
      

       ),

      )
       
    ],

   ) ,


      ),

    ),


    );
  }
}