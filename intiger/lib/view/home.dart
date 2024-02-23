// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intiger/controller/provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final addprovider = Provider.of<Intigerprovider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Consumer<Intigerprovider>(
              builder: (context, value, child) => Text(value.a.toString())),
          TextField(
            controller: addprovider.text1,
          ),
          TextField(
            controller: addprovider.text2,
          ),
          ElevatedButton(
              onPressed: () {
                addprovider.change();
              },
              child: Text('click here'))
        ],
      ),
    );
  }
}
