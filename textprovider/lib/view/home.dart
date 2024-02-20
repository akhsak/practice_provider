// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textprovider/controller/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final changeprv = Provider.of<ChangeProvider>(context, listen: false);

    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: changeprv.text1Controller,
          ),
          TextField(controller: changeprv.text2Controller),
          ElevatedButton(
              onPressed: () {
                changeprv.change1(changeprv.text1Controller.text);
                changeprv.change2(changeprv.text2Controller.text);
              },
              child: Text('click')),
          Consumer<ChangeProvider>(
              builder: (context, value, child) => Text(value.sumtext)),
        ],
      ),
    );
  }
}
