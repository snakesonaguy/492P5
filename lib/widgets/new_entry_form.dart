import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class EntryDTO {
  String photoUrl;
  int numItems;
  String locationCord;
}

class NewEntryForm extends StatefulWidget {

  final File image;

  NewEntryForm({Key key, this.image}): super(key: key);

  @override
  _NewEntryFormState createState() => _NewEntryFormState();
}

class _NewEntryFormState extends State<NewEntryForm> {

  LocationData locationData;
  var locationService = Location();

  @override 
  void initState() {
    super.initState();
    retrieveLocation();
  }

  void retrieveLocation() async {   
    try {
      var _serviceEnabled = await locationService.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await locationService.requestService();
        if (!_serviceEnabled) {
          print('Failed to enable service. Returning.');
          return;
        }
      }

      var _permissionGranted = await locationService.hasPermission();
      if (_permissionGranted == PermissionStatus.DENIED) {
        _permissionGranted = await locationService.requestPermission();
        if (_permissionGranted != PermissionStatus.GRANTED) {
          print('Location service permission not granted. Returning.');
        }
      }

      locationData = await locationService.getLocation();
    } 
    on PlatformException catch (e) {
      print('Error: ${e.toString()}, code: ${e.code}');
      locationData = null;
    }
    setState(() {});
  }

  @override 
  Widget build(BuildContext context) {
    if (locationData == null || widget.image == null) {
      return Center(child: CircularProgressIndicator());
    }
    else {
      return SingleChildScrollView(
      child: Image.file(widget.image)
      );
    }
  }
}