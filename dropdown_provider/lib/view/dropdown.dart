// ignore_for_file: prefer_const_constructors

import 'package:dropdown_provider/controller/dropdown_provider.dart';
import 'package:dropdown_provider/view/display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dropdownpage extends StatelessWidget {
  const Dropdownpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HOME')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<DropdownProvider>(
              builder: (context, value, child) => Column(
                children: [
                  DropdownButton(
                    value: value.selectedValue,
                    items: <String>['Opt1', 'Opt2', 'Opt3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        value.setSelectedValue(newValue);
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenDisplay()));
                      },
                      child: Text('click'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
