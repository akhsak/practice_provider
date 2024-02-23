import 'package:flutter/material.dart';

class Intigerprovider extends ChangeNotifier {
  
  final text1=TextEditingController();
  final text2=TextEditingController();
 int a=0;
  void change(){
     a=int.parse(text1.text)+int.parse(text2.text);
    notifyListeners();
      
  }
}