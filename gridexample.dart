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
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridExample extends StatefulWidget {
  const GridExample({super.key});

  @override
  State<GridExample> createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  String image1 = 'assets/image1.jpg';
  String image2 = 'assets/image2.jpg';
  String image3 = 'assets/image3.jpg';
  String image4 = 'assets/image4.jpg';
  String image5 = 'assets/image5.jpg';
  List mylist = ['assets/image1.jpg','assets/image2.jpg','assets/image3.jpg','assets/image4.jpg','assets/image5.jpg'];
  // List myimages = ['https://www.pexels.com/photo/woman-posing-by-ocean-cliffs-at-sunset-31861417/','https://www.pexels.com/photo/willie-wagtail-on-railing-18714944/','https://www.pexels.com/photo/a-bowl-of-figs-on-a-table-27819255/','https://www.pexels.com/photo/man-walking-on-deck-of-ship-sailing-in-ocean-8045905/','https://www.pexels.com/photo/traditional-fabric-dyeing-process-32339924/'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Gird Example"),
      ),
      body: Padding(padding: EdgeInsetsGeometry.symmetric(
        vertical: 5,horizontal: 5
      ),
      child: GridView.builder(
        itemCount: mylist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5), itemBuilder: (BuildContext context,int index){
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> CardDetails(myimage: mylist[index],number: index)));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.amber,
              border: Border.all(
                color: Colors.black,
                width: 2
              ),
              image: DecorationImage(image: AssetImage(mylist[index],),fit: BoxFit.cover)
            ),
            // child: Image.asset(myimages[index]),
          ),
        );
      }),
      ),
      
    );
  }
}


class CardDetails extends StatelessWidget {
   CardDetails({super.key,this.myimage,this.number});
  String? myimage;
  int? number;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Card Screen"),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Image.asset(myimage!),
          ),
          Container(
            child: Text("data  $number"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>GridExample()));
          }, child: Text("Go Back"))
        ],
      ),
    );
  }
}
