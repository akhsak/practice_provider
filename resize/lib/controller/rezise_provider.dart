import 'package:flutter/material.dart';

class ResizeProvider extends ChangeNotifier {
  bool resize=true;
  changesize(){
    resize=!resize;
    notifyListeners();

  }
}