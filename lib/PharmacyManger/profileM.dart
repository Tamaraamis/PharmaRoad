import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';



class pro extends StatefulWidget {
  const pro({super.key});

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
<<<<<<< HEAD
        title: Text(
=======
        title: const Text(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
          "Profile Manager",
          style: TextStyle(fontSize: 30, color: Color(0xffEDFAFF)),
        ),
        leading: IconButton(
<<<<<<< HEAD
          icon: Icon(
=======
          icon: const Icon(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("homeph");
          },
        ),
        centerTitle: true,
<<<<<<< HEAD
        backgroundColor: Color(0xFF41B2D6),
      ),
      backgroundColor: Color(0xffEDFAFF),
=======
        backgroundColor: const Color(0xFF41B2D6),
      ),
      backgroundColor: const Color(0xffEDFAFF),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
  body: MyListView(Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
<<<<<<< HEAD
            child: CircleAvatar(
              radius: 70,
            ),
          ),
          SizedBox(
=======
            child: const CircleAvatar(
              radius: 70,
            ),
          ),
          const SizedBox(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
            height: 30,
          )
        ],
      )),
    );
  }
}
class MyListView extends StatefulWidget {
  MyListView(Column column);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }
   List<ItemData> items = [
    ItemData(
      title: 'Name',
      subtitle: 'Name',
      icon: Icons.person,
      trailingIcon: Icons.arrow_forward,
    ),
    ItemData(
      title: 'Phone',
      subtitle: 'Phone',
      icon: Icons.phone_android,
      trailingIcon: Icons.arrow_forward,
    ),
    ItemData(
      title: 'Email',
      subtitle: 'Email',
      icon: Icons.mail,
      trailingIcon: Icons.arrow_forward,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 20,
      ),
      Container(
<<<<<<< HEAD
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
=======
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Stack(children: [
              CircleAvatar(
                foregroundImage:
                    _selectedImage != null ? FileImage(_selectedImage!) : null,
<<<<<<< HEAD
                backgroundImage: AssetImage("images/person.png"),
                backgroundColor: Color(0xffc7f1ff),
=======
                backgroundImage: const AssetImage("images/person.png"),
                backgroundColor: const Color(0xffc7f1ff),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                radius: 65,
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      height: 45,
                      width: 47,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
<<<<<<< HEAD
                        color: Color(0xffc7f1ff),
=======
                        color: const Color(0xffc7f1ff),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                      ),
                      child: IconButton(
                        onPressed: () {
                          _pickImage();
                        },
<<<<<<< HEAD
                        icon: Icon(Icons.camera_alt),
                        color: Color.fromARGB(255, 155, 162, 163),
=======
                        icon: const Icon(Icons.camera_alt),
                        color: const Color.fromARGB(255, 155, 162, 163),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                      ))),
            ]),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Expanded(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                        width: 330,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
<<<<<<< HEAD
                            boxShadow: [
=======
                            boxShadow: const [
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                              BoxShadow(
                                offset: Offset(0, 3),
                                color: Color(0xFF41B2D6),
                                spreadRadius: 3,
                                blurRadius: 3,
                              )
                            ]),
                        child: ListTile(
                          trailing: Icon(items[index].trailingIcon),
                          leading: Icon(items[index].icon),
                          title: Text(items[index].title),
                          subtitle: Text(items[index].subtitle),
                          onTap: () {
                            // Navigate to the edit screen when ListTile is tapped
                            if (index == 4) {
                             // Navigator.of(context).pushNamed("perscription");
                            } else
                              navigateToEditScreen(index);
                          },
                        )),
<<<<<<< HEAD
                    SizedBox(
=======
                    const SizedBox(
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
                      height: 20,
                    ),
                  ],
                );
              })),
    ]);
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  // Function to navigate to the edit screen
  void navigateToEditScreen(int index) async {
    // Wait for the user to edit the subtitle and get the updated data
    ItemData updatedItem = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditScreen(item: items[index])),
    );

    // Update the data if the user made changes
    if (updatedItem != null) {
      setState(() {
        items[index] = updatedItem;
      });
    }
  }
}

class EditScreen extends StatefulWidget {
  final ItemData item;

  EditScreen({required this.item});

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late TextEditingController _subtitleController;

  @override
  void initState() {
    super.initState();
    _subtitleController = TextEditingController(text: widget.item.subtitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('Edit Screen'),
        centerTitle: true,
        backgroundColor: Color(0xFF41B2D6),
=======
        title: const Text('Edit Screen'),
        centerTitle: true,
        backgroundColor: const Color(0xFF41B2D6),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
<<<<<<< HEAD
            Text('Edit Subtitle:'),
            TextField(
              controller: _subtitleController,
            ),
            SizedBox(height: 20),
=======
            const Text('Edit Subtitle:'),
            TextField(
              controller: _subtitleController,
            ),
            const SizedBox(height: 20),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
            ElevatedButton(
              onPressed: () {
                // Pass the updated data back to the calling screen
                Navigator.pop(
                  context,
                  ItemData(
                    title: widget.item.title,
                    subtitle: _subtitleController.text,
                    icon: widget.item.icon,
                    trailingIcon: widget.item.trailingIcon,
                  ),
                );
              },
<<<<<<< HEAD
              child: Text('Save'),
=======
              child: const Text('Save'),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
            ),
          ],
        ),
      ),
    );
  }
}

class ItemData {
  final String title;
  final String subtitle;
  final IconData icon;
  final IconData trailingIcon;

  ItemData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.trailingIcon,
  });
}