class WasteItem {

  final String photoPath;
  final String location;
  final String dateTime;
  final int numItems;

  WasteItem({this.photoPath, this.location, this.dateTime, this.numItems});

  String get getPhotoPath => photoPath;
  String get getLocation => location;
  String get getDateTime => dateTime.toString();
  int get getNumItems => numItems;

  String toString() {
    return 'Photo Path: $photoPath, Location: $location, Date: $dateTime, No. Items: $numItems';
  }

}