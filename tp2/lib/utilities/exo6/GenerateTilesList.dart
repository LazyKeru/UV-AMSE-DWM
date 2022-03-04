import 'package:flutter/material.dart';
import 'package:tp2/widgets/exo6/CreateTile.dart';


// Generate a beautifull List<Widget>

List<Widget> generateTilesList(int size, Function(Widget tile) doSomething){
  List<Widget> res = [];
  int index = 0;
  for(double i=-1; i <= 1; i += 2 / ( size - 1)){
    for(double j=-1; j <= 1; j += 2 / ( size - 1)){
      index++;
      debugPrint("Generating tile: (" + i.toString() + "," + j.toString() + ")");
      res.add(
        CreateTile(
          doSomething: doSomething,
          number: index,
          canBeClicked: false,
        )
      );
    }
  }
  return res;
}