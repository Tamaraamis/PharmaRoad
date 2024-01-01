import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class profile extends StatefulWidget {
   final FirestoreService _firestoreService = FirestoreService();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

profile({super.key}) {
   
  }

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
<<<<<<< HEAD
=======
  
   
 
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 30, color: Color(0xffEDFAFF)),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("drawer");
          },
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF41B2D6),
      ),
      backgroundColor: Color(0xffEDFAFF),
      body: MyListView(Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            child: CircleAvatar(
              radius: 70,
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      )),
    );
=======
        appBar: AppBar(
                 
       title: const Text("Profile" ,style: TextStyle(fontSize: 30,color:Color(0xffEDFAFF)),),
        leading: IconButton(
      
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              
            ),
            onPressed: () {
              
                  Navigator.of(context).pushNamed("drawer");
            },
          
          ),
         
       
       centerTitle: true,
    backgroundColor: const Color(0xFF41B2D6),
        ),
         backgroundColor: const Color(0xffEDFAFF),
        body: MyListView(
          Column(children: [
            const SizedBox( height: 20,),
                 Container(child:
                const CircleAvatar(
                  
                  radius: 70,
                 
                
                  
                ),
                ),
               const SizedBox(height: 30,)

          ],)
        ),
      );
    
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
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

  // Sample data for demonstration
  List<ItemData> items = [
<<<<<<< HEAD
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
      title: 'Address',
      subtitle: 'Abc.address/city',
      icon: Icons.location_pin,
      trailingIcon: Icons.arrow_forward,
    ),
    ItemData(
      title: 'Email',
      subtitle: 'Email',
      icon: Icons.mail,
      trailingIcon: Icons.arrow_forward,
    ),
    ItemData(
      title: 'Your Prescription',
      subtitle: 'Your Prescription',
      icon: Icons.content_paste,
      trailingIcon: Icons.arrow_forward,
    ),
=======
    ItemData(title: 'Name', subtitle: '',icon:Icons.person, trailingIcon: Icons.arrow_forward,),
    ItemData(title: 'Phone', subtitle: '', icon:Icons. phone_android, trailingIcon: Icons.arrow_forward,),
    ItemData(title: 'Address', subtitle: '',icon:Icons.location_pin, trailingIcon: Icons.arrow_forward,),
    ItemData(title: 'Email',icon:Icons.mail, trailingIcon: Icons.arrow_forward, subtitle: '',),
    ItemData(title: 'Your Prescription',icon:Icons.content_paste, trailingIcon: Icons.arrow_forward, subtitle: '',),

>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
  ];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 20,
      ),
      Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Stack(children: [
              CircleAvatar(
                foregroundImage:
                    _selectedImage != null ? FileImage(_selectedImage!) : null,
                backgroundImage: AssetImage("images/person.png"),
                backgroundColor: Color(0xffc7f1ff),
                radius: 65,
              ),
=======
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
    const SizedBox( height: 20,),
               Container(
                  padding:const EdgeInsets.only(left: 15,right: 15,top: 10) ,
                  child:
                  GestureDetector(onTap: (){
                  
                  },
                  child:  
                    
                      Center(
                       child:Stack(children:[
                            CircleAvatar(
                             
                               foregroundImage: _selectedImage != null ? FileImage(_selectedImage!) :null,
                               backgroundImage:const AssetImage("images/person.png") ,
                              backgroundColor: const Color(0xffc7f1ff),
                       radius: 65,
                       
                     
                       ),
                       
                      
                     // if ( 
                     // selectedImage!=null? Image.file(selectedImage!)
                             
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
                                 color: const Color(0xffc7f1ff),
                                ),
                                child:  IconButton(onPressed: (){
                                _pickImage();
                                }, icon:const Icon(Icons.camera_alt),color:const Color.fromARGB(255, 155, 162, 163),)
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b

              // if (
              // selectedImage!=null? Image.file(selectedImage!)

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
                      ),
                      child: IconButton(
                        onPressed: () {
                          _pickImage();
                        },
                        icon: Icon(Icons.camera_alt),
                        color: Color.fromARGB(255, 155, 162, 163),
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
                            boxShadow: [
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
                              Navigator.of(context).pushNamed("perscription");
                            } else
                              navigateToEditScreen(index);
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );
              })),
    ]);
=======
      
    
                        ),
                        ),
                   

          const SizedBox( height: 20,),
  
    Expanded(
          child:
    
    ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(children:[
         Container(
          width: 330,
            decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Color(0xFF41B2D6),
                        spreadRadius: 3,
                        blurRadius: 3,

                      )

                    ]
                    
                  ),
          child:
        ListTile(
           trailing: Icon(items[index].trailingIcon),
          leading: Icon(items[index].icon),
          title: Text(items[index].title),
          subtitle: Text(items[index].subtitle),
          
          onTap: () {
            if(index==0){
            String name1;
            }
            if(index==1){
            String Phone1;
            }
            if(index==2){
            String Address1;
            }
            if(index==3){
            String Email1;
            }
            // Navigate to the edit screen when ListTile is tapped
             if(index ==4){
       Navigator.of(context).pushNamed("YourPersc");
    }
         else
            navigateToEditScreen(index);
           
          },
        )
        ),
          const SizedBox( height: 20,),
        ],
        );
    
      }
        )
    ),
      
    ]
    );
      
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
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
<<<<<<< HEAD
=======
  

 
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b

  @override
  void initState() {
    super.initState();
    _subtitleController = TextEditingController(text: widget.item.subtitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Screen'),
        centerTitle: true,
<<<<<<< HEAD
        backgroundColor: Color(0xFF41B2D6),
=======
    backgroundColor: const Color(0xFF41B2D6),
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Edit Subtitle:'),
            TextField(
              controller: _subtitleController,
<<<<<<< HEAD
            ),
            SizedBox(height: 20),
=======
             
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
              child: const Text('Save'),
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

<<<<<<< HEAD
  ItemData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.trailingIcon,
  });
=======
  ItemData({required this.title, required this.subtitle,required this.icon, required this.trailingIcon});
>>>>>>> bdf0ce657c704f84003df706684ea0f40b8bc03b
}
class FirestoreService {
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('User');

  Future<void> addUser({
    required String name,
    required String address,
    required String email,
    required String phone,
  }) async {
    try {
      await userCollection.add({
        'name': name,
        'address': address,
        'email': email,
        'phone': phone,
      });
    } catch (e) {
      print('Error adding user: $e');
    }
  }
}