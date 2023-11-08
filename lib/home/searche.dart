import 'package:flutter/material.dart';

class Searchdrug extends StatefulWidget {
  const Searchdrug({super.key});

  @override
  State<Searchdrug> createState() => _SearchdrugState();
}

class _SearchdrugState extends State<Searchdrug> {
  List<Map<String,dynamic>>pharma=[
     {"id":1,"name":"Ibn-sina","med":"panadol",
  "med1":"diacerin","med2":"entSearchdrugto","med3":"natri","Phone":"(06) 567 2310","loca":"صويلح الكمالية"},
  {"id":2,"name":"Bali",
  "med":"panadol",
  "med1":"galvus",
  "med2":"victoza",
  "med3":"voltfast","Phone":"07 7020 2042","loca":"صويلح الحي الشرقي"},
  {"id":3,"name":"Pharmacy One",
  "med":"panadol",
  "med1":"voltaren"
  ,"med2":"panadol",
  "med3":"aprovel","Phone":"(06) 533 5032","loca":"صويلح الارسال"},
  {"id":4,"name":"Middle East",
  "med":"voltfast",
  "med1":"cetal",
  "med2":"panadol",
  "med3":"galvus-met","Phone":"(06) 462 1699","loca":"صويلح الرحمانية"},
 
  
  ];
  List<Map<String,dynamic>>findPharmacy=[

  ];
  @override
  void initState() {
   findPharmacy=pharma;
    super.initState();
  }
  
  void _runflutter(String enterkey){
    List<Map<String,dynamic>>Searchdrug=[];
if (enterkey.isEmpty)
{
  const Text("No results Found");
}
else{
  Searchdrug=pharma.where((user) =>user['med'].toLowerCase().contains(enterkey.toLowerCase())||user['med1'].toLowerCase().contains(enterkey.toLowerCase()) ||user['med2'].toLowerCase().contains(enterkey.toLowerCase()) ||user['med3'].toLowerCase().contains(enterkey.toLowerCase()) 
  
  
  
  
  ).toList();
  

}
setState(() {
  findPharmacy=Searchdrug;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDFAFF),
body: 
Padding(padding: const EdgeInsets.all(40),
child:Column(children: [
 
            
  const SizedBox(height: 40,),
  TextField(
    
    onChanged: (value) {
      _runflutter(value);
    },
    decoration: const InputDecoration(
    labelText: "Enter medicine you're looking for",suffixIcon: Icon(Icons.search),
    
  ),),
  Expanded(
  
child:ListView.builder(
  
  itemCount: findPharmacy.length,
  itemBuilder: (context, index) => Card(
    key: ValueKey(pharma[index]["id"]),
    color: Colors.white,
    elevation: 4,
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: ListTile(
leading:const Icon(Icons.local_pharmacy,color:Color(0xFF5C9AD4)),
//Text(findPharmacy[index]["id"].toString(),style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 254, 254, 254)),

    
title: Text(findPharmacy[index]["name"],
style: const TextStyle(fontSize: 24,color: Color(0xFF5C9AD4),)),

subtitle:
Column(children: [
  Text('${findPharmacy[index]["Phone"]}',style: const TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
  Text('${pharma[index]["loca"]}',style: const TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
],) 


   ),

  

))),

]),
   ) );

    
    
  }
}