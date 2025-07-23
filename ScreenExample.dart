import 'package:flutter/material.dart';

class Screenexample extends StatefulWidget {
  const Screenexample({super.key});

  @override
  State<Screenexample> createState() => _ScreenexampleState();
}

class _ScreenexampleState extends State<Screenexample> {
  ///you can create your texteditingcontroller over here 
  TextEditingController nc =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              ///this is your text field
              child: TextField(
                ///you have to use your controller over here 
                controller: nc,
               decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue,width: 4),
                ),
                labelText: "Name",
                hintText: "Enter your name",
               ),
              ),
            ),
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
            ),
            SizedBox(height: 20,),
            ///this is your button to send data to another screen
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MyScreen(nc.text.toString())));
            }, child: Text("Send data"))
          ],
        ),
      ),
    );
  }
}



class MyScreen extends StatefulWidget {
   MyScreen(this.title,{super.key});
  final String? title;

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child: Text(widget.title.toString() ?? 'No data found'),
        ),
      ),
    );
  }
}