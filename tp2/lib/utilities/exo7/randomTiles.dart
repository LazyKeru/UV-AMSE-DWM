import 'package:flutter/material.dart';
import 'dart:math' as math;

math.Random random = math.Random();

List<Widget>? randomTiles(List<Widget>? tiles, int indexEmpty,Function(int index) setEmptyIndex){
  List<Widget> res = [];
  int index = 0;
  while(0 < tiles!.length){
    index =random.nextInt(tiles.length);
    if(index!=indexEmpty){ //Placing all the none Empty tiles
      res.add(tiles.removeAt(index));
    }
    if(tiles.length==1){ //Placing the Empty tile
      res.insert(index, tiles.removeAt(0));
    }
  }
  setEmptyIndex(index);
  return res;
}