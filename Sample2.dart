import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
   Sample({super.key,
    this.data});
  final String? data;
  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: 
              Center(child: Text(
                 widget.data == null? 'No data available' :
                "data ${widget.data}"),),
            );
  }
}