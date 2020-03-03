import 'package:flutter/material.dart';

class CustAppBar extends StatelessWidget with PreferredSizeWidget {

  final String title;

  CustAppBar({Key key, @required this.title}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: Text('$title'),
      );
  } 

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}