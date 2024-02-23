import 'package:flutter/material.dart';

class SizeProvider extends ChangeNotifier {
  
  final numberController = TextEditingController();

  int? selcted;

  void sizechange() {
    selcted = int.parse(numberController.text);
    notifyListeners();
  }
}
