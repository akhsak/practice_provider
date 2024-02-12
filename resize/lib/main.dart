// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resize/controller/rezise_provider.dart';
import 'package:resize/resize.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ResizeProvider(),
      child: MaterialApp(
        home: Reasizepage(),
      ),
    );
  }
}