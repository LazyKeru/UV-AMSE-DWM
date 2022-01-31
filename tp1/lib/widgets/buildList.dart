import 'package:flutter/material.dart';
//import '../models/local_json/beers.dart';
import '../models/punkapi/beers.dart';
import './buildRow.dart';

@override
Widget buildListView(BuildContext context, Beers beers) {
  return ListView.builder(
    padding: const EdgeInsets.all(16),
    itemCount:
        beers.beers.length,
    itemBuilder: (BuildContext context, int i) {
      return buildRow(
        context,
        beers.beers[i]);
    },
  );
}