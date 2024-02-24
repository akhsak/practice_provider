import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  final colorcotroller = TextEditingController();

  Map<String, Color> colorName = {
    'black': Colors.black,
    'red': Colors.red,
    'green': Colors.green,
    };

  Color? selectedcolor;
  void taketext() {
    String entertext = colorcotroller.text.toLowerCase();
    if (colorName.containsKey(entertext)) {
      selectedcolor = colorName[entertext];
    } else {
      selectedcolor = null;
    }
    notifyListeners();
  }  
}