import 'package:button_color/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonColor extends StatelessWidget {
  const ButtonColor({super.key});

  @override
  Widget build(BuildContext context) {
    final prv=Provider.of<ButtonColorProvider>(context,listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ButtonColorProvider>(builder: (context, value, child) => 
               CircleAvatar(
                radius: 30,
                backgroundColor:value.circlecolor ,
              ),
              
            ),
            ElevatedButton(onPressed: (){
              prv.green();
            },
             child: Text('green'),
             ),
            ElevatedButton(onPressed: (){
              prv.red();
            }, 
            child: Text('red'),
            )
          ],
        ),
      ),
      
    );
  }
}