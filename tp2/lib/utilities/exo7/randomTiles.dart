import 'package:flutter/material.dart';
import 'dart:math' as math;

math.Random random = math.Random();

List<Widget>? randomTiles(List<Widget>? tiles, Function(int index) setEmptyIndex){
  List<Widget> res = [];
  while(1 < tiles!.length){
    res.add(tiles.removeAt(random.nextInt(tiles.length)));
  }// Removing all the tiles and puting them randomly in another list
  // Now I will add the empty tile in the new list
  int index = random.nextInt(res.length);
  res.insert(index, tiles.first);
  setEmptyIndex(index);
  return res;
}