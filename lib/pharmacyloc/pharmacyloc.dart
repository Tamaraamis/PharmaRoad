import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class pharmacyloc extends StatefulWidget {
  const pharmacyloc({super.key});

  @override
  State<pharmacyloc> createState() => _pharmacylocState();
}

class _pharmacylocState extends State<pharmacyloc> {
  List<String> itemsList=["حي الكمالية",
  "حي الشرقي","حي الرحمانية",
  "حي البشائر",
  "حي الفضيلة",
  "حي ميسلون",
  "حي الفروسية",
  "حي الحمر"];
  String? selectedItem="حي الكمالية";
  
  //Navigator.of(context).pushNamed("pharmacyloc");
  
  // Define a function to handle the selection
  void handleSelection(String newValue) {
    setState(() {
      selectedItem = newValue;
    });

    // Check the selected value and navigate to the desired page
    if (newValue == 'حي الكمالية') {
      
     Navigator.of(context).pushNamed("region1");
    }
    if (newValue == 'حي الشرقي') {
    Navigator.of(context).pushNamed("region2");
    }
    if (newValue == 'حي الرحمانية') {
    Navigator.of(context).pushNamed("region3");
    }
    if (newValue == 'حي البشائر') {
    Navigator.of(context).pushNamed("region4");
    }
    if (newValue =='حي الفضيلة') {
    Navigator.of(context).pushNamed("region5");
    }
    if (newValue =='حي ميسلون') {
    Navigator.of(context).pushNamed("region6");
    }
    if (newValue =='حي الفروسية') {
    Navigator.of(context).pushNamed("region7");
    }
    if (newValue =='حي الحمر') {
    Navigator.of(context).pushNamed("region8");
    }
   
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       backgroundColor: Color(0xffEDFAFF),
appBar: AppBar(
    backgroundColor:Color(0xff41b2d6),
    title: Text("Pharmacy Locator",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color:Color(0xffEDFAFF),fontStyle: FontStyle.italic ),),
    centerTitle: true,
    
    
   ),
          body:SingleChildScrollView(child: Column(children: [
        SizedBox(height:10,),
       Container(
        margin: EdgeInsets.only(right:10),
        child:Image.asset("images/map1.png",height: 320,width: 500,)),
      SizedBox(height: 50,),
      Container(
        padding: EdgeInsets.all(20),
        
        width: double.infinity,
        child: Text("Choose the Region:",style: TextStyle(fontSize: 10,color: Color(0xff41b2d6)),),margin: EdgeInsets.only(right: 227),
      ),SizedBox(height: 10,),
        Container(
          width: 400,
          margin:EdgeInsets.only(left: 10,right: 10),
          child: SizedBox(width: 200,child: DropdownButtonFormField(
          decoration: InputDecoration(
           enabled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.circular(10),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Color(0xff41b2d6)
              ,width: 3
            )
            )
             // borderSide: BorderSide(width: 10,color: Colors.blue,style: BorderStyle.solid))
         ),
        
          value:selectedItem,
          items: itemsList.map((item) =>DropdownMenuItem(value: item,child: Text(item,style: TextStyle(fontSize: 20,color: Colors.blue)))).toList(),

          
          
           onChanged: (item) {
            setState(() { 
              selectedItem=item;
            });
             handleSelection(item!);
           },),),),
        
        ]),

     ) );
  }
}