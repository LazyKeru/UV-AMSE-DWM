import 'dart:ui';

import 'package:flutter/material.dart';
//import '../models/local_json/beers.dart';
import '../models/punkapi/beers.dart';
import './buildRow.dart';


class BeerListView extends StatefulWidget {
  final Beers beers;
  final Set<int> favorite;
  final Function(int id) addToFavorite; // CallBack Add to favorite
  final Function(int id) removeFromFavorite; // CallBack Remove from favorite
  final Set<int> tested;
  final Function(int id) addToTested; // CallBack Add to favorite
  final Function(int id) removeFromTested; // CallBack Remove from favorite
  const BeerListView(
    { 
      Key? key, 
      required this.beers, 
      required this.favorite,
      required this.addToFavorite, 
      required this.removeFromFavorite,
      required this.tested,
      required this.addToTested,
      required this.removeFromTested
    }
  ) : super(key: key);

  @override
  _BeerListViewState createState() => _BeerListViewState();
}

class _BeerListViewState extends State<BeerListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount:
          widget.beers.beers.length,
      itemBuilder: (BuildContext context, int i) {
        return BeerRow(
          beer: widget.beers.beers[i],
          favorite: widget.favorite,
          addToFavorite: widget.addToFavorite,
          removeFromFavorite: widget.removeFromFavorite,
          tested: widget.tested,
          addToTested: widget.addToTested,
          removeFromTested: widget.removeFromTested,
        );
      },
    );
  }
}