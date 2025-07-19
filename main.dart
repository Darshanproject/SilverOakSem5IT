import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Sample.dart';
import 'package:myapp/ScreenExample.dart';
import 'package:myapp/home.dart';

import 'gridexample.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screenexample()
    );
  }
}