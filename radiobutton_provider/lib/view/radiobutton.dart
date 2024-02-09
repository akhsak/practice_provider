import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiobutton_provider/view/controller/radio_provider.dart';
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
          Consumer<RadioProvider>(builder: (context, value, child) {
               return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               RadioListTile(title: Text('female')
                ,value: 'female', groupValue: value.radiovalue, onChanged:((val) =>value.selectbutton(val)),
               ),
                RadioListTile(title: Text('male'),
                  value: 'male', groupValue: value.radiovalue, onChanged:((val) => value.selectbutton(val)),
                ),
              ],
            );
          },
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Displayscreen()));
          }, child: Text('ADD'))
        ],
      ),
  
    );
  }
}