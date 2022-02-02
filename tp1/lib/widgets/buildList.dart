import 'package:flutter/material.dart';
//import '../models/local_json/beers.dart';
import '../models/punkapi/beers.dart';
import './buildRow.dart';


class BeerListView extends StatefulWidget {
  final Beers beers;
  final List<int> favorite;
  const BeerListView({ Key? key, required this.beers, required this.favorite}) : super(key: key);

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
        );
      },
    );
  }
}