import 'package:flutter/material.dart';
import '../../models/punkapi/beer.dart';

Widget leftTitleSection (Beer beer) => Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 200.0,
        height: 300.0,
        child:
          Image(
            image: NetworkImage(beer.imageurl)
          ),
      )
    ],
  ),
);