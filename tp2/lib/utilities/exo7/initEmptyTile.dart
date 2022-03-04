import 'package:flutter/material.dart';

List<Widget>? initEmptyTile(List<Widget>? _tiles){
    Container empty = Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(child: Text("EMPTY"),),
          );
    _tiles?.removeAt(0);
    _tiles!.insert(0, empty);
    return _tiles;
}