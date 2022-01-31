import 'package:flutter/material.dart';
import '../../models/punkapi/beer.dart';

Widget rightTitleSection (Beer beer) => Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Text(
          beer.description,
          style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
        child: Text(
          "Type: " + beer.tagline,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
        child: Text(
          "Firstbrewed: " + beer.firstbrewed,
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 12,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
        child: Text(
          "abv: " + beer.abv.toString(),
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 12,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
        child: Text(
          "ibu: " + beer.ibu.toString(),
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 12,
          ),
        ),
      ),
    ],
  ),
);