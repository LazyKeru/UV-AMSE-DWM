import 'package:flutter/material.dart';

class ButtonActionPlay extends StatefulWidget {
  const ButtonActionPlay(
    { 
      Key? key,
      required this.startAnimation
    }   
  ) : super(key: key);

  final Function()? startAnimation;

  @override
  _ButtonActionPlayState createState() => _ButtonActionPlayState();
}

class _ButtonActionPlayState extends State<ButtonActionPlay> {

  void _startAnimation(){
    widget.startAnimation;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: widget.startAnimation,
        tooltip: "Start Automatic animation",
        child: const Icon(Icons.pause),
      ),

    );
  }
}