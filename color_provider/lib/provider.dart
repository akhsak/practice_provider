import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  final iconcotroller = TextEditingController();

  Map<String, Color> iconName = {
    'black': Colors.black,
    'red': Colors.red,
    'green': Colors.green,
    };

  Color? selectedcolor;
  void taketext() {
    String entertext = iconcotroller.text.toLowerCase();
    if (iconName.containsKey(entertext)) {
      selectedcolor = iconName[entertext];
    } else {
      selectedcolor = null;
    }
    notifyListeners();
  }
  
}