import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int a = 0;

  abc() {
    a += 1;
    notifyListeners();
  }
}
