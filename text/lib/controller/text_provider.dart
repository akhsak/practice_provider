import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  final nameController = TextEditingController();

  String a = '';
  void textentered() {
    a = nameController.text;
    notifyListeners();
  }
}
