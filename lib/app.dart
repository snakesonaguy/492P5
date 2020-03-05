import 'package:flutter/material.dart';
import 'screens/new_entry.dart';
import 'screens/detail_entry.dart';
import 'screens/waste_list.dart';
import 'screens/image_selector.dart';


class App extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Journal',
          home: WasteList(),      
    );
  }
}