import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _textEditingController = TextEditingController();
  String _textFieldContent = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
body: 
       SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Stack(children: [
            Container(
                margin: const EdgeInsets.only(top: 24),
                child: TextFormField(
                  controller: _textEditingController,
                  onTap: () {
                    setState(() {
                      _textFieldContent = _textEditingController.text;
                    });
                    print(_textFieldContent);
                  },
                  decoration: const InputDecoration(
                      hintText: "Enter the medicine ",
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 4,
                      ))),
                )),
            Container(
              margin: const EdgeInsets.only(top: 145),
              child: Image.asset(
                "images/loc.png",
              ),
            )
          ]),
        ]),
      ),



    );



    
  }
}
