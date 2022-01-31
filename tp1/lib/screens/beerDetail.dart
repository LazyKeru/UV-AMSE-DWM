import 'package:flutter/material.dart';

class BeersDetailWidget extends StatefulWidget {
  const BeersDetailWidget({Key? key}) : super(key: key);
  
  @override
  _BeersDetailWidgetState createState() => _BeersDetailWidgetState();
}

class _BeersDetailWidgetState extends State<BeersDetailWidget> {

  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: const Text("Working"),
        backgroundColor: Colors.blue,
      ),
      body: Text("Working")
    );                                      // ... to here.
  }
}