// ignore_for_file: prefer_const_constructors

import 'package:button_color/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonColor extends StatelessWidget {
  const ButtonColor({super.key});

  @override
  Widget build(BuildContext context) {
    final prv = Provider.of<ButtonColorProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ButtonColorProvider>(
              builder: (context, value, child) => CircleAvatar(
                radius: 50,
                backgroundColor: value.circlecolor,
              ),
            ),SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                prv.green();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('green'),
            ),SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                prv.red();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('red'),
            )
          ],
        ),
      ),
    );
  }
}
