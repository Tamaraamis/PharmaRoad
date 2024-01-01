import 'package:flutter/material.dart';

//import 'package:get/get.dart';

import 'drug_model.dart';

class Drug extends StatefulWidget {
  const Drug({super.key});

  @override
  State<Drug> createState() => _DrugState();
}

class _DrugState extends State<Drug> {
  TextEditingController nameController = TextEditingController();
  TextEditingController pController = TextEditingController();
  List<DrugModel> drug = List.empty(growable: true);

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff41b2d6),
          centerTitle: true,
          title: const Text(
            "Add Drug",
            style: TextStyle(
              fontSize: 30,
              color: Color(0xffEDFAFF),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: nameController,
                    decoration:  const InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: pController,
                    decoration:  const InputDecoration(
                        hintText: "Prescription",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: (() {
                            String name = nameController.text.trim();
                            String per = pController.text.trim();
                            if (name.isNotEmpty && per.isNotEmpty) {
                              setState(() {
                                nameController.text = '';
                                pController.text = '';
                                drug.add(
                                    DrugModel(Name: name, Prescription: per));
                              });
                            }
                          }),
                          child: const Text("Save")),
                      ElevatedButton(
                          onPressed: (() {
                            String name = nameController.text.trim();
                            String per = pController.text.trim();
                            if (name.isNotEmpty && per.isNotEmpty) {
                              setState(() {
                                nameController.text = '';
                                pController.text = '';

                                drug[selectedIndex].Name = name;
                                drug[selectedIndex].Prescription = per;
                                selectedIndex = -1;
                              });
                            }
                          }),
                          child: const Text("Update")),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  drug.isEmpty
                      ? const Text(
                          'No Drug yet...',
                          style: TextStyle(fontSize: 22),
                        )
                      : Expanded(
                          child: ListView.builder(
                          itemCount: drug.length,
                          itemBuilder: (context, index) => getRow(index),
                        ))
                ],
              )),
        ));
  }

  Widget getRow(int index) {
    return Card(
        child: ListTile(
      leading: CircleAvatar(
        backgroundColor: index % 2 == 0 ? const Color(0xffEDFAFF) : const Color(0xff41b2d6),
        foregroundColor: Colors.white,
        child: Text(
          drug[index].Name[0],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(drug[index].Name), Text(drug[index].Prescription)]),
      trailing: SizedBox(
        width: 70,
        child: Row(children: [
          InkWell(
            onTap: () {
              nameController.text = drug[index].Name;
              pController.text = drug[index].Prescription;
              setState(() {
                selectedIndex = index;
              });
            },
            child: const Icon(Icons.edit),
          ),
          InkWell(
            onTap: () {
              setState(() {
                drug.removeAt(index);
              });
            },
            child: const Icon(Icons.delete),
          )
        ]),
      ),
    ));
  }
}
