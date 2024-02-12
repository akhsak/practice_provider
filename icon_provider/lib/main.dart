import 'package:flutter/material.dart';
import 'package:icon_provider/cotroller/icon_provider.dart';
import 'package:icon_provider/icon.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => IconProvider(),
      child: MaterialApp(
        home:Iconselectpage()
      ),
    );
  }
}