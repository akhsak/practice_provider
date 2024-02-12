  import 'package:dropdown_provider/controller/dropdown_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenDisplay extends StatelessWidget {
  const ScreenDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Provider.of<DropdownProvider>(context).selectedValue),
      ),

    );
  }
}