// ignore_for_file: prefer_const_constructors

import 'package:color/colorpage.dart';
import 'package:color/controller/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const Myapp());
  
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ColorProvider(),
      child: MaterialApp(
        home: Colorpage(),
        
      ),
    );
  }
}