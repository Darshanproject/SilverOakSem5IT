import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(   
        appBar: AppBar(
          title: const Text('My First App'),
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(child: Text("data",style: GoogleFonts.aladin(textStyle: TextStyle(fontSize: 62,color: Colors.blue,fontWeight: FontWeight.w700)),)),
            Center(child: Text("data",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 62,color: Colors.blue,fontWeight: FontWeight.w900)),)),
            Center(child: Text("data")),
            Center(child: Text("data")),
          ],
        ),
        
      ),
    );
  }
}