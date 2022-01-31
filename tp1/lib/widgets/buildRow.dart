import 'dart:js';

import 'package:flutter/material.dart';
//import '../models/local_json/beer.dart';
import '../models/punkapi/beer.dart';
import '../screens/beerDetail.dart';
/// Build Row was adapted for the punkapi json model.
/// This generates a list item for each beer loaded

@override
Widget buildRow(BuildContext context, Beer beer) {
  return ListTile(
    leading: SizedBox(
      height: 100.0,
      width: 100.0, // fixed width and height
      child: Image.network(beer.imageurl)
    ),
    title: Text(
      beer.name,
    ),
    subtitle: Text("Style : " + beer.description),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,  
      children: const <Widget>[
        Icon(Icons.favorite_border),
        Icon(Icons.local_bar_outlined)
      ],
    ),
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BeersDetailWidget(
            beer: beer
          ),
        ),
      );
    }
  );
}
/*
ListTile buildRow(Beer beer) {
  //final alreadySaved = _saved.contains(beer);
  return ListTile(
    leading: SizedBox(
      height: 100.0,
      width: 100.0, // fixed width and height
      child: Image.network(beer.imageurl)
    ),
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
    onTap: (){ 
      Navigator.push(
        Null,
        MaterialPageRoute(
          builder: (context) =>
              LandingPage(),
        ),
      );
    }
  );
}*/