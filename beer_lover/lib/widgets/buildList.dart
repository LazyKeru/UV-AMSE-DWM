import 'package:flutter/material.dart';
import '../models/beers.dart';
import './buildRow.dart';


ListView buildListView(Beers beers) {
  return ListView.builder(
    padding: const EdgeInsets.all(16),
    itemCount:
        beers.beers.length,
    itemBuilder: (BuildContext context, int i) {
      return buildRow(beers.beers[i]);
    },
  );
}