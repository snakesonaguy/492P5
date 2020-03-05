import 'package:flutter/material.dart';
import 'screens/new_entry.dart';
import 'screens/detail_entry.dart';
import 'screens/waste_list.dart';
import 'screens/image_selector.dart';


class App extends StatelessWidget {

  
  static final routes = {
    WasteList.routeName: (context) => WasteList(),
    NewEntry.routeName: (context) => NewEntry(),
    DetailEntry.routeName: (context) => DetailEntry(),
    ImageSelector.routeName: (context) => ImageSelector()
  };
  
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Journal',
          initialRoute: '/',
          routes: App.routes,      
    );
  }
}