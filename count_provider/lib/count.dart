// ignore_for_file: prefer_const_constructors

import 'package:count_provider/controller/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Countpage extends StatelessWidget {
  const Countpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('count app'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
                builder: (context, value, child) =>
                 Text('${value.a}')
                 ),
            Text(
              'click',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CountProvider>(context, listen: false).abc();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
