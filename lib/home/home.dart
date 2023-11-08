import 'package:flutter/material.dart';
import 'package:flutter_application_2/home/color.dart';
import 'package:flutter_application_2/home/homeEnd.dart';
import 'package:flutter_application_2/home/searche.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var Sindex = 0;
  List<Widget> widgetpages = [
    const HomeE(),
    const Searchdrug(),

   // Search(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: widgetpages.elementAt(Sindex)
,



      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 23),
        unselectedItemColor: wColor,
        selectedItemColor: wColor,
        backgroundColor: pColor,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            Sindex = index;
          });
        },
        currentIndex: Sindex,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            backgroundColor: pColor,
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            backgroundColor: pColor,
          ),
         
        ],
      ),
    );
  }
}
