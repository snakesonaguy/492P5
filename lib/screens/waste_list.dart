import 'package:flutter/material.dart';
import 'package:wasteagram/screens/image_selector.dart';
import 'package:wasteagram/widgets/cust_app_bar.dart';


class WasteList extends StatefulWidget {

  @override
  _WasteListState createState() => _WasteListState();
}

class _WasteListState extends State<WasteList> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(title: 'Wasteagram - SUM'),
      body: Text('Waste List Screen'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addEntry(context);
        },
        child: Icon(Icons.add),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

void addEntry(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ImageSelector())
  );
}