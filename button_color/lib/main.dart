// ignore_for_file: prefer_const_constructors

import 'package:button_color/home.dart';
import 'package:button_color/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ButtonColorProvider(),
      child: MaterialApp(
        home: ButtonColor(),
        
      ),
    );
  }
}