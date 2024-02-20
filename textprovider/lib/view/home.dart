// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textprovider/controller/provider.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final changeprv=Provider.of<ChangeProvider>(context,listen: false);
    TextEditingController text1=TextEditingController();
    TextEditingController  text2=TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: text1,
          ),
          TextField(controller: text2,),
          ElevatedButton(onPressed: (){
            changeprv.change1(text1.text);
            changeprv.change2(text2.text);
          }, child: Text('click')),
          Consumer<ChangeProvider>(builder:(context, value, child) => Text(value.sumtext)),
        ],
      ),

    );
  }
}