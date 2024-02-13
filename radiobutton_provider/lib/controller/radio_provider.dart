import 'package:flutter/material.dart';

class RadioProvider extends ChangeNotifier {
  String radiovalue='';
  
  void selectbutton(val){
        radiovalue=val;
        notifyListeners();
  }
}