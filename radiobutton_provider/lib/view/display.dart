import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiobutton_provider/view/controller/radio_provider.dart';

class Displayscreen extends StatelessWidget {
  const Displayscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Provider.of<RadioProvider>(context).radiovalue),
      ),
      
    );
  }
}