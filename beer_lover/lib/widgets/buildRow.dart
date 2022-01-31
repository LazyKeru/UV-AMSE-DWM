import 'package:flutter/material.dart';
//import '../models/local_json/beer.dart';
import '../models/punkapi/beer.dart';
/// Build Row was adapted for the punkapi json model.
/// This generates a list item for each beer loaded

ListTile buildRow(Beer beer) {
  //final alreadySaved = _saved.contains(beer);
  return ListTile(
    // leading: ,
    title: Text(
      beer.name,
    ),
    subtitle: Text("Style : " + beer.description),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,  
      children: <Widget>[
        Icon(Icons.favorite_border),
        Icon(Icons.local_bar_outlined)
      ],
    ),
    onTap: (){ //Click action
      // Will like the icon
    }
  );
}