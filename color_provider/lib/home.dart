import 'package:color_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorprovider = Provider.of<ColorProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: colorprovider.colorcotroller,
           // onChanged: (value) => colorprovider.taketext(),
          ),
          ElevatedButton(
            onPressed: () {
              colorprovider.taketext();
            },
            child: Icon(Icons.add),
          ),
          Consumer<ColorProvider>(
            builder: (context, value, child) => CircleAvatar(
              radius: 50,
              backgroundColor: value.selectedcolor,
            ),
          )
        ],
      ),
    );
  }
}
