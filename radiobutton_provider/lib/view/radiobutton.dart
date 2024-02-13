// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiobutton_provider/controller/radio_provider.dart';
import 'package:radiobutton_provider/view/display.dart';

class Radiolistpage extends StatelessWidget {
  const Radiolistpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select '),
      ),
      body: Column(
        children: [
          Consumer<RadioProvider>(
            builder: (context, value, child) {
              return Consumer<RadioProvider>(
                builder: (context, value, child) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RadioListTile(
                        title: Text('others'),
                        value: 'others',
                        groupValue: value.radiovalue,
                        onChanged: (val) => value.selectbutton(val)),

                    RadioListTile(
                      title: Text('female'),
                      value: 'female',
                      groupValue: value.radiovalue,
                      onChanged: ((val) => value.selectbutton(val)),
                    ),
                    RadioListTile(
                      title: Text('male'),
                      value: 'male',
                      groupValue: value.radiovalue,
                      onChanged: ((val) => value.selectbutton(val)),
                    ),
                  ],
                ),
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Displayscreen()));
              },
              child: Text('ADD'))
        ],
      ),
    );
  }
}
