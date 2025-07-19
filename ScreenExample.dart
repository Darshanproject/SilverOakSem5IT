import 'package:flutter/material.dart';

class Screenexample extends StatefulWidget {
  const Screenexample({super.key});

  @override
  State<Screenexample> createState() => _ScreenexampleState();
}

class _ScreenexampleState extends State<Screenexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(8, (context){
                return CircleAvatar(
                  minRadius: 25,
                  backgroundColor: Colors.amber,
                  child: Text("data"),
                );
                })
                
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/32802262/pexels-photo-32802262.jpeg"),fit: BoxFit.fitWidth)
              ),
              height: 250,
              width: 250,
              // child: Image.network('https://www.pexels.com/photo/historic-honfleur-port-with-reflections-32802262/'),
            )
          ],
        ),
      ),
    );
  }
}