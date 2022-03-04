import 'package:flutter/material.dart';
import 'dart:math' as math;

math.Random random = math.Random();

class CreateTile extends StatefulWidget {
  const CreateTile(
    { 
      Key? key,
      required this.number,
      required this.doSomething,
      required this.canBeClicked,
      this.color
    }
  ) : super(key: key);

  final bool canBeClicked;
  final Function(CreateTile tile) doSomething;
  final int number;
  final Color? color;

  @override
  _CreateTileState createState() => _CreateTileState();
}

class _CreateTileState extends State<CreateTile> {



  @override
  Widget build(BuildContext context) {
    return 
      InkWell(
        onTap: ()=>widget.doSomething(widget),
        child: 
          Container(
            decoration: BoxDecoration(
              border: widget.canBeClicked ? Border.all(color: Colors.red) : null,
              color: widget.color ?? Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255)),
            ),
            child:
              Center(
                child: 
                  Text("Tile number" + widget.number.toString())
              )
          )
      );
  }
}