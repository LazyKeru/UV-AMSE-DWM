import 'package:flutter/material.dart';
import '../../models/punkapi/beer.dart';
import 'leftTitleSection.dart';
import 'rightTitleSection.dart';

Widget beerDetailLayout (Beer beer) => Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    children: [
      Center(
        child: Text(
          beer.name,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Row(
        children: [
          Flexible(
            flex: 1,
            child: leftTitleSection(beer),
          ),
          Flexible(
            flex: 2,
            child: rightTitleSection(beer),
          ),
        ],
      ),
    ],
  ) 
);