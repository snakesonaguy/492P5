import 'package:flutter/material.dart';
import 'dart:io';
import 'package:wasteagram/widgets/cust_app_bar.dart';
import 'package:wasteagram/widgets/new_entry_form.dart';


class NewEntry extends StatelessWidget {

  File image;

  NewEntry({this.image});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(title: 'Wasteagram'),
      body: NewEntryForm(image: image),
    );
  }
}