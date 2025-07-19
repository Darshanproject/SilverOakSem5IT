// import 'package:flutter/material.dart';

// class GrdiExample extends StatefulWidget {
//   const GrdiExample({super.key});

//   @override
//   State<GrdiExample> createState() => _GrdiExampleState();
// }

// class _GrdiExampleState extends State<GrdiExample> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Gird View Example"),
//       ),
//       body:Padding(padding: EdgeInsetsGeometry.symmetric(
//         horizontal: 5,vertical: 5
//       ),
//       child: GridView(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 3
//         ),
//       children: [
//         Container(
//           height: 550,
//           width: double.maxFinite,
//           color: Colors.red,
//         ),
//         Container(
//           height: 550,
//           width: double.maxFinite,
//           color: Colors.green,
//         ),
//         Container(
//           height: 550,
//           width: double.maxFinite,
//           color: Colors.yellow,

//           child: Text("data"),
//         ),
//       ],

//         ),
//       ) ,
//     );
//   }
// }

import 'package:flutter/material.dart';

class GridExample extends StatefulWidget {
  const GridExample({super.key});

  @override
  State<GridExample> createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: EdgeInsetsGeometry.symmetric(
        vertical: 5,horizontal: 5
      ),
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5), itemBuilder: (BuildContext context,int index){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.amber,
            border: Border.all(
              color: Colors.black,
              width: 2
            )
          ),
        );
      }),
      ),
      
    );
  }
}