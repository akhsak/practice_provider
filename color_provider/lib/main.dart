// ignore_for_file: prefer_const_constructors

import 'package:color_provider/home.dart';
import 'package:color_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ColorProvider(),
      child: MaterialApp(
        home: Homepage(),
      
      ),
    );
  }
}