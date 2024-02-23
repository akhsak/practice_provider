import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  List<Color> a = [Colors.blue, Colors.red, Colors.yellow, Colors.purple];

  int b = 0;

  colorchange() {
    b = (b + 1)%a.length;
    notifyListeners();
  }
}
