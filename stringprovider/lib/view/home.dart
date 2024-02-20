import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stringprovider/controller/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final changeprovider = Provider.of<StringProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) => changeprovider.change1(value),
          ),
          TextField(
            onChanged: (value) => changeprovider.change2(value),
          ),
          Consumer<StringProvider>(
              builder: (context, value, child) => Text(value.sumtext)),
        ],
      ),
    );
  }
}
