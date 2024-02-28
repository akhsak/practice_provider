// // ignore_for_file: prefer_const_constructors, camel_case_types

// import 'package:color/controller/color_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Colorpage extends StatelessWidget {
//   const Colorpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 3, 75, 109),
//         title: Text('color',style:TextStyle(color: Colors.white),),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Consumer<ColorProvider>(builder: (context, value, child) =>
//                CircleAvatar(
//                   radius:50,
//                   backgroundColor: value.a[value.b],
//               ),
//             ),
//             SizedBox(height: 20,),
//             ElevatedButton(onPressed: (){
//               Provider.of<ColorProvider>(context,listen: false).colorchange();
//             }, child: Text('click'))
//           ],
//         ),
//       ),

//     );
//   }
// }
// import 'package:color/controller/color_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Colorpage extends StatelessWidget {
//   const Colorpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ColorProvider>(builder: (context, value, child) =>
//        Scaffold(
//         backgroundColor: value.a.elementAt(value.b),
//         body: Consumer<ColorProvider>(builder: (context, value, child) =>
//            Column(
//             children: [
//               Center(
//                 child: ElevatedButton(onPressed: (){
//                   value.colorchange();
//                 }, child: const Text("click here")),
//               )

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:color/controller/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Colorpage extends StatelessWidget {
  const Colorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorProvider>(
      builder: (context, value, child) => Scaffold(
          backgroundColor: value.a[value.b],
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Provider.of<ColorProvider>(context, listen: false)
                        .colorchange();
                  },
                  child: Text('done'))
            ],
          )),
    );
  }
}
