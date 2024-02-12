// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resize/controller/rezise_provider.dart';

class Reasizepage extends StatelessWidget {
  const Reasizepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ResizeProvider>(builder: (context, value, child) => 
               Container(
                color: Color.fromARGB(255, 24, 117, 160),
                height: value.resize?200:100,
                width:value.resize? 200:100,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
            Provider.of<ResizeProvider>(context,listen: false).changesize();
            }, child: Text('click'))
          ],
        ),
      ),
    );
  }
}
