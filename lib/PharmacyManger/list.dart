import 'package:flutter/material.dart';

class Medicine extends StatefulWidget {
  const Medicine({super.key});

  @override
  State<Medicine> createState() => MedicineState();
}

class MedicineState extends State<Medicine> {
  List<String> data = [
    'Cough Syrup',
    'Antacid Suspension',
    'Liquid Antibiotics',
    'Oral Suspension',
    'Elixir',
    'Pediatric Drops',
    'Liquid Antihistamine',
    'Liquid Pain Reliever',
  ];
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff41b2d6),
        centerTitle: true,
        title: const Text(
          "Medicine Inventory",
          style: TextStyle(
            fontSize: 30,
            color: Color(0xffEDFAFF),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                  elevation: 20,
                  shadowColor: const Color(0xff41b2d6),
                  color: const Color(0xffEDFAFF),
                  child: ListTile(
                    title: Text(data[index]),
                    trailing: Container(
                      width: 70,
                      child: Row(
                        children: [
                          Expanded(
                              child: IconButton(
                                  onPressed: (() {
                                    showDialog(
                                      context: context,
                                      builder: (context) => SimpleDialog(
                                        children: [
                                          TextField(
                                            onChanged: (value) {
                                              setState(() {
                                                text = value;
                                              });
                                            },
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: const Color(0xff41b2d6)),
                                              onPressed: (() {
                                                setState(() {
                                                  data[index] = text;
                                                });
                                                Navigator.pop(context);
                                              }),
                                              child: const Text("Update"))
                                        ],
                                      ),
                                    );
                                  }),
                                  icon: const Icon(Icons.edit))),
                          Expanded(
                              child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      data.removeAt(index);
                                    });
                                  }),
                                  icon: const Icon(Icons.delete))),
                        ],
                      ),
                    ),
                  )),
            );
          })),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff41b2d6),
        onPressed: () {
          // Show a dialog to input a new item
          showDialog(
            context: context,
            builder: (context) {
              final TextEditingController textController =
                  TextEditingController();
              return AlertDialog(
                title: const Text(
                  'Add Medicine',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff41b2d6),
                      fontWeight: FontWeight.bold),
                ),
                content: TextField(
                  controller: textController,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add the item to the list and close the dialog
                      setState(() {
                        data.add(textController.text);
                      });
                      textController.clear();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
