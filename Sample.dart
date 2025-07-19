// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SampleFile extends StatefulWidget {
//   const SampleFile({super.key});

//   @override
//   State<SampleFile> createState() => _SampleFileState();
// }

// class _SampleFileState extends State<SampleFile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width-50,
//         child: ListView(
//           children: [
//             Container(
//               height: 550,
//               width: double.maxFinite,
//               color: Colors.red,
//               child: Text("This is your first container",style: TextStyle(fontSize: 52),overflow: TextOverflow.ellipsis,softWrap: true,maxLines: 1,),
//             ),
//             Container(
//               height: 550,
//               width: MediaQuery.of(context).size.width - 50,
//               color: Colors.yellow,
//             ),
//             SizedBox(
//              // height: ScreenUtil().setHeight(10),
//              height: MediaQuery.of(context).size.height / 5,
//             ),
//             Container(
//               height: 550,
//               width: double.maxFinite,
//               color: Colors.green,
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';

class SampleFile extends StatefulWidget {
  const SampleFile({super.key});

  @override
  State<SampleFile> createState() => _SampleFileState();
}

class _SampleFileState extends State<SampleFile> {
  List mydays = ["Darshan","Akshil","Karan","Shubham","Ajay","Dixit","Kesha","Janil","Kiran","Smit","Meet"];
  List color = [Colors.red,Colors.green,Colors.yellow,Colors.blueAccent,Colors.orange,Colors.pink,Colors.purple,Colors.grey,Colors.blueGrey,Colors.brown,Colors.black];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: mydays.length,
        itemBuilder: (BuildContext ,int index){
        return Card(
          color: color[index],
          child: Center(child: Text("${mydays[index]}",style: TextStyle(color:(color[index] == Colors.black?Colors.white:Colors.black) ),)),
        );
      }),
    );
  }
}