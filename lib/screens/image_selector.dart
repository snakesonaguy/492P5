import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:wasteagram/screens/new_entry.dart';
import 'package:wasteagram/widgets/cust_app_bar.dart';


class ImageSelector extends StatelessWidget {

  static const routeName = 'image_selector';


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(title: 'Wasteagram'),
      body: ImageScreen(),
    );
  }
}

class ImageScreen extends StatefulWidget {

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File image;

  void getImage() async {
    image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override 
  Widget build(BuildContext context) {
    if (image == null) {
      return Center(
        child: RaisedButton(
          child: Text('Select Photo'),
          color: Colors.blue,
          onPressed: () {
             getImage();
             addEntry(context, image);
          },
          )
        );
    }
    // else {
    //   return Center(
    //     child: Image.file(image)
    //   );
    // }
  }
}

void addEntry(BuildContext context, File args) {
  Navigator.of(context).pushNamed(NewEntry.routeName, arguments: args);
}