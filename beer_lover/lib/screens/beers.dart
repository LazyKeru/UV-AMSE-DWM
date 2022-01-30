import 'package:flutter/material.dart';

class BeersWidget extends StatefulWidget {
  const BeersWidget({Key? key}) : super(key: key);
  
  @override
  _BeersWidgetState createState() => _BeersWidgetState();
}

class _BeersWidgetState extends State<BeersWidget> {
  static const String _title = 'Beers';

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