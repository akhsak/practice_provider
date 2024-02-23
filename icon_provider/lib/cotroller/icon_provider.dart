import 'package:flutter/material.dart';

class IconProvider extends ChangeNotifier {
  final iconcotroller = TextEditingController();

  Map<String, IconData> iconName = {
    'home':Icons.home ,
    'favorite': Icons.favorite,
    'abc': Icons.abc,
    };

  IconData? selectedicon;
  void taketext() {
    String entertext = iconcotroller.text.toLowerCase();
    if (iconName.containsKey(entertext)) {
      selectedicon = iconName[entertext];
    } else {
      selectedicon = null;
    }
    notifyListeners();
  }
}
