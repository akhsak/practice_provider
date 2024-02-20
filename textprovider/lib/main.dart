// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textprovider/controller/provider.dart';
import 'package:textprovider/view/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ChangeProvider(),
      child: MaterialApp(
        home: Homepage(),
      ),
    );
  }
}