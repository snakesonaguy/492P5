import 'package:flutter/material.dart';
import 'package:wasteagram/widgets/cust_app_bar.dart';
import 'package:wasteagram/widgets/new_entry_form.dart';


class NewEntry extends StatelessWidget {

  static const routeName = 'new_entry';

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(title: 'Wasteagram'),
      body: NewEntryForm(),
    );
  }
}