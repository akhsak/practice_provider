import 'package:flutter/material.dart';

class ResizeProvider extends ChangeNotifier {
  bool resize=true;
  void changesize(){
    resize=!resize;
    notifyListeners();

  }
}