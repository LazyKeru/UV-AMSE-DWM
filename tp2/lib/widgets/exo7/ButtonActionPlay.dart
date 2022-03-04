import 'package:flutter/material.dart';

class ButtonActionPlay extends StatefulWidget {
  const ButtonActionPlay(
    { 
      Key? key,
      required this.startGame,
      required this.stopGame,
      required this.state
    }   
  ) : super(key: key);

  final bool state;
  final Function()? stopGame;
  final Function()? startGame;

  @override
  _ButtonActionPlayState createState() => _ButtonActionPlayState();
}

class _ButtonActionPlayState extends State<ButtonActionPlay> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: widget.state ? widget.stopGame : widget.startGame,
        tooltip: "Start playing",
        child: Icon(widget.state ? Icons.pause : Icons.play_arrow),
      ),

    );
  }
}