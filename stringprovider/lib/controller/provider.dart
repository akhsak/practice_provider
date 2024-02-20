import 'package:flutter/material.dart';

class StringProvider extends ChangeNotifier {
  String text1 = '';
  String text2 = '';

  String get sumtext => '$text1$text2';

  void change1(val) {
    text1 = val;
    notifyListeners();
  }

  void change2(val) {
    text2 = val;
    notifyListeners();
  }
}
