// ignore_for_file: prefer_const_constructors

import 'package:count_provider/controller/count_provider.dart';
import 'package:count_provider/count.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Countpage(),
      ),
    );
  }
}
