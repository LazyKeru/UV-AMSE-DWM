import 'package:flutter/material.dart';
import 'dart:math' as math;
/**********************************************************************/
/**********************************************************************/
/***********  NOT USED ! WILL NOT BE FINISHED BEFORE 9AM   ************/
/**********************************************************************/
/**********************************************************************/

math.Random random = math.Random();

class Tile extends StatelessWidget {
  Tile(
      this.canBeClicked,
      this.doSomething,
      this.number,
  );

  bool canBeClicked; // Is it next to empty ?
  Function() doSomething;
  int number;
  Color? color;

  setColor(){
    color ??= Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: ()=>doSomething(),
        child: 
          Container(
            decoration: BoxDecoration(
              border: canBeClicked ? Border.all(color: Colors.red) : null,
              color: color ?? setColor(),
            ),
            child:
              Center(
                child: 
                  Text("Tile number " + number.toString())
              )
          )
      );
  }
}