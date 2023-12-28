import 'package:flutter/material.dart';
import 'package:flutter_application_2/poplularmedicine/data.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffEDFAFF),
      appBar: AppBar(
        backgroundColor: const Color(0xff41b2d6),
        title: const Text(
          "Popular Medicine",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 35,
              color: Color(0xffEDFAFF),
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
      //  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.65),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                       color: Colors.white,
                   borderRadius: BorderRadius.circular(20)

                  ),
                  child:Stack(children: [
                  Image.network (data[index]['image'],height:200,width: 200,),
                    

                  ],),
                )),
                Text(data[index]['name'],style: const TextStyle(fontSize: 25,color:Color(0xff41b2d6), fontWeight: FontWeight.bold ),),
               //  Text(data[index]['class'],style: TextStyle(fontSize: 15,color:Color(0xff41b2d6), fontWeight: FontWeight.bold ),),
              ],
            );
          },
        ),
      ),
    );
  }
}
