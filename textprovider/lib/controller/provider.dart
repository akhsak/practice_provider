import 'package:flutter/material.dart';

class ChangeProvider extends ChangeNotifier {
  final  text1Controller=TextEditingController();
  final text2Controller=TextEditingController();
  String text1='';
  String text2='';

  String get sumtext=>'$text1$text2';
  void change1(text){
   text1=text;
   notifyListeners();
  }
  void change2(text){
    text2=text;
    notifyListeners();
  }

  
}