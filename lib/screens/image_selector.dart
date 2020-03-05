import 'package:flutter/material.dart';
import 'package:wasteagram/widgets/cust_app_bar.dart';


class ImageSelector extends StatelessWidget {

  static const routeName = 'image_selector';

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(title: 'Wasteagram'),
      body: Text('Image Selector Screen')
    );
  }
}