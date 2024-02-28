
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizechange/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeprovider=Provider.of<SizeProvider>(context,listen: false);
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller:sizeprovider.numberController,
            onChanged: (value) => sizeprovider.sizechange(),

          ),
          const SizedBox(height: 20),
          Consumer<SizeProvider>(builder: (context, value, child) => 
             Container(
                    height:value.selcted?.toDouble()??20,
                    width: value.selcted?.toDouble()??20,
                    color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}