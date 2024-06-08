import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:food/sevan.dart';
import 'package:food/sevan1.dart';
import 'package:food/third.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'eight.dart';
class six extends StatefulWidget {
  const six({super.key});

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  Uint8List? _image;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedImage = await showDialog<ImageSource>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Select image from:'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, ImageSource.gallery),
            child: Text('Gallery'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, ImageSource.camera),
            child: Text('Camera'),
          ),
        ],
      ),
    );

    if (pickedImage != null) {
      final pickedFile = await picker.pickImage(source: pickedImage);
      if (pickedFile != null) {
        final bytes = await File(pickedFile.path).readAsBytes();
        setState(() {
          _image = bytes;
        });
        _saveImage(bytes);
      }
    }
  }

  Future<void> _saveImage(Uint8List bytes) async {
    final prefs = await SharedPreferences.getInstance();
    final base64String = base64Encode(bytes);
    await prefs.setString('profile_image', base64String);
  }

  Future<void> _loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    final base64String = prefs.getString('profile_image');
    if (base64String != null) {
      setState(() {
        _image = base64Decode(base64String);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //leading: const Text('hjh'),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
             UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                currentAccountPicture: Stack(
                  children: [
                    _image !=null
                  ? CircleAvatar(radius: 80,
                      backgroundImage: MemoryImage(_image!),
                    )
                        : Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: const CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToiRnzzyrDtkmRzlAvPPbh77E-Mvsk3brlxQ&s",
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: -10,
                      child: IconButton(
                        onPressed: _selectImage,
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],), accountName: Text('alagan'), accountEmail: Text('alagan08@gmail.com'),

      ),

                              ListTile(
                                leading: Icon(
                    Icons.home
                                ),
                                title: const Text('Catalog'),
                                onTap: (){
                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: Icon(
                    Icons.help_center
                                ),title: const Text('Language'),
                                onTap: (){
                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: Icon(
                    Icons.add_box_outlined
                                ),
                                title:const Text('Help Center'),
                                onTap: (){
                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: Icon(
                    Icons.settings
                                ),
                                title: const Text('Settings'),
                                onTap: (){
                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: Icon(
                    Icons.touch_app_outlined
                                ),title: const Text('About app'),
                                onTap: (){
                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: Icon(
                    Icons.assignment_ind_outlined
                                ),
                                title: const Text('Log out'),
                                onTap: ()async{
                  bool confirm = await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Logout Confirmation'),
                        content: Text('Are you sure you want to logout?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text('Logout'),
                          ),
                        ],
                      );
                    },
                  );
                  if(confirm){
                  try {
                    final GoogleSignIn goo = new GoogleSignIn();
                    goo.signOut();
                    Navigator.push(context,MaterialPageRoute(builder: (context) => third()  ) );

                  }catch(e){
                    print(e);
                  }}
                                },
                              )
                            ,
    ]            ),),
    
    
        
      
      body: Column(
        children: [
          SizedBox(height:20
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Unique Food Business Ideas For 2024"
              ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(

                image: DecorationImage(
                  image  : AssetImage('assets/img_7.png'),fit: BoxFit.fill,
                ),
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>sevsn1())
                  );
                },
              ),
            ),),
          SizedBox(height:50
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('10 Reasons Why Restaurants Fail & how to Avoid The Mistakes',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),

          Container(height: MediaQuery.of(context).size.height/4,
            width:MediaQuery.of(context).size.width/1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image  : AssetImage('assets/img_8.png'),fit: BoxFit.fill,
              ),
            ),child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>eight())
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
