// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/controller/text_provider.dart';
import 'package:text/text.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) =>TextProvider() ,
      child: MaterialApp(
        home: Textpage()
      ),
    );
  }
}