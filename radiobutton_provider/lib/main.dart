import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiobutton_provider/controller/radio_provider.dart';
import 'package:radiobutton_provider/view/radiobutton.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => RadioProvider(),
      child: MaterialApp(
        home: Radiolistpage(),
      ),
    );
  }
}