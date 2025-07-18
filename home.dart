import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeage extends StatefulWidget {
  const homeage({super.key});

  @override
  State<homeage> createState() => _homeageState();
}

class _homeageState extends State<homeage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          // width: double.maxFinite,
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              color: Colors.red,
              width: 5.0
            ),
            borderRadius: BorderRadius.circular(160.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 25,
                blurStyle: BlurStyle.outer,
                color: Colors.black,
                spreadRadius: 2
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("data",style: GoogleFonts.aladin(textStyle: TextStyle(fontSize: 62,color: Colors.blue,fontWeight: FontWeight.w700)),)),
              Center(child: Text("data",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 62,color: Colors.blue,fontWeight: FontWeight.w900)),)),
              Center(child: Text("data")),
              Center(child: Text("data")),
            ],
          ),
        ),
      ),

    );
  }
}
