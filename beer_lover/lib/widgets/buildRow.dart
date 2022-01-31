import 'package:flutter/material.dart';
import '../models/beer.dart';

ListTile buildRow(Beer beer) {
  //final alreadySaved = _saved.contains(beer);
  return ListTile(
    title: Text(
      beer.fields.name,
    ),
    trailing: Icon(     // NEW from here...
      // alreadySaved ? Icons.favorite : Icons.favorite_border,
      Icons.favorite_border,
      // color: alreadySaved ? Colors.red : null,
      color: Colors.red,
      // semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
    ),
    onTap: (){ //Click action
      // Will like the icon
    }
  );
}