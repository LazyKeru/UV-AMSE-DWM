import 'package:flutter/material.dart';
import '../widgets/home/titleSection.dart';

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
        title: const Text(_title),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Center(
            child: 
            Image.asset(
              'img/home.png',
              height: 400,
            ),
          ),
          // title
          Center(
            child: titleSection,
          )
        ]
      ),
    );                                      // ... to here.
  }
}