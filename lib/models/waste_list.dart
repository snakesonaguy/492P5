import 'package:wasteagram/models/waste_item.dart';

class WasteList {

  WasteList({this.wasteEntries});

  var wasteEntries = List<WasteItem>();

  WasteItem getEntry(int index) {
    return wasteEntries[index];
  }
  void addEntry(WasteItem entry) {
    wasteEntries.add(entry);
  }

  int getLength() {
    return wasteEntries.length;
  }
  
  String printList() {
    String stuff = wasteEntries.toString();
    return stuff;
  }

  bool isEmpty() {
    if (wasteEntries.length <= 0) {
      return true;
    } 
    else {
      return false;
    }
  }
}