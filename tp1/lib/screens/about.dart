import 'package:flutter/material.dart';
import '../widgets/about/titleSection.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({ Key? key }) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  static const String _title = 'About';
  @override
  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: Colors.black,
      ),
      body: Row(
        children: [
          // Logo
          Flexible(
            child: 
            Image.asset(
              'img/meme.png',
              height: 400,
            ),
          ),
          // title
          Flexible(
            child: 
            textSection,
          )
        ]
      ),
    );
  }
}