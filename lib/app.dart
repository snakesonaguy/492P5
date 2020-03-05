import 'package:flutter/material.dart';
import 'screens/waste_list.dart';



class App extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Journal',
          home: WasteList(),      
    );
  }
}