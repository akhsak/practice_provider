// ignore_for_file: prefer_const_constructors

import 'package:dropdown_provider/controller/dropdown_provider.dart';
import 'package:dropdown_provider/view/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
      return ChangeNotifierProvider(create: (context) => DropdownProvider(),
        child: MaterialApp(
          home:Dropdownpage() ,
        ),
      );
    
  }
}