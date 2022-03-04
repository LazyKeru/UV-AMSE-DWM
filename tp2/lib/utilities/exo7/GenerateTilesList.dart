import 'package:flutter/material.dart';
import 'package:tp2/widgets/exo7/CreateTile.dart';

List<Widget> generateTilesList(int size, String imageUrl, Function(Widget tile) onClick ){
  List<Widget> res = [];
  for(double i=-1; i <= 1; i += 2 / ( size - 1)){
    for(double j=-1; j <= 1; j += 2 / ( size - 1)){
      debugPrint("Generating tile: (" + i.toString() + "," + j.toString() + ")");
      res.add(
        CreateTile(
          imageUrl: imageUrl,
          alignment: Alignment(j, i),
          /** 
           Alignement
           x: 1.0 to -1.0
           y: 1.0 to -1.0
           **/
          size: size,
          canBeClicked: false,
          onClick: onClick
        )
      );
    }
  }
  return res;
}