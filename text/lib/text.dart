import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/controller/text_provider.dart';

class Textpage extends StatelessWidget {
  const Textpage({super.key});

  @override
  Widget build(BuildContext context) {
    final textProvider = Provider.of<TextProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: textProvider.nameController,
            onChanged: (value) => textProvider.textentered(),
          ),
          Consumer<TextProvider>(
              builder: (context, value, child) => Text(value.a))
        ],
      ),
    );
  }
}
