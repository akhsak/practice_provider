// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intiger/controller/provider.dart';
import 'package:intiger/view/home.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Intigerprovider() ,
      child: MaterialApp(
        home:Homepage() ,
      ),
    );
  }
}