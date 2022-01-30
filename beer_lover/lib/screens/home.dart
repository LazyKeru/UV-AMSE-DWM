import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);
  
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  static const String _title = 'Home';

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