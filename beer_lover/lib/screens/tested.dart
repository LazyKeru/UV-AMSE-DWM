import 'package:flutter/material.dart';

class TestedWidget extends StatefulWidget {
  const TestedWidget({Key? key}) : super(key: key);
  
  @override
  _TestedWidgetState createState() => _TestedWidgetState();
}

class _TestedWidgetState extends State<TestedWidget> {
  
  static const String _title = 'Tested';

  @override
  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: const Text(_title)
      ),
      body: const Center(
          child: Text('To add more'),
        ),
    );                                      // ... to here.
  }
}