import 'package:flutter/material.dart';
import 'package:myapp/Sample2.dart';

class MyExample extends StatefulWidget {
  const MyExample({super.key});

  @override
  State<MyExample> createState() => _MyExampleState();
}

class _MyExampleState extends State<MyExample> {
  // String? data;
  dynamic data; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Sample(
              data: data == null ? "No data available" : " $data",
            ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,int index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  data = index;
                });
                print("ON tap event called $index");
              },
              child: ListTile(title: Text("Item".substring(0,4)),subtitle: Text(index.toString()),));
          })
          ],
        ),
      ),
    );
  }
}