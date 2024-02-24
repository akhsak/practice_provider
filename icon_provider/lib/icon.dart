// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:icon_provider/cotroller/icon_provider.dart';
import 'package:provider/provider.dart';

class Iconselectpage extends StatelessWidget {
  const Iconselectpage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<IconProvider>(context);

    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: provider.iconcotroller,
          ),
          ElevatedButton(
            onPressed: () {
              provider.taketext();
            },
            child: Icon(Icons.add),
          ),
          CircleAvatar(
            radius: 50,
            child: Consumer<IconProvider>(
              builder: (context, value, child) => Center(
                child: value.iconName != null
                    ? Icon(value.selectedicon)
                    : SizedBox(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
