import 'package:flutter/material.dart';

class DropdownProvider extends ChangeNotifier {
   String selectedValue = 'Opt1';

  void setSelectedValue(val) {
    selectedValue = val;
    notifyListeners();
  }

 }
