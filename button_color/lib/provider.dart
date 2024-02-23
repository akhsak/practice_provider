import 'package:flutter/material.dart';

class ButtonColorProvider extends ChangeNotifier {
  
  Color circlecolor=Colors.grey;

  void green(){

    circlecolor=Colors.green;
    notifyListeners();
  }

  void red(){
    circlecolor=Colors.red;
    notifyListeners();
  }
  
}