import 'package:flutter/material.dart';
import '../../models/punkapi/beer.dart';
import 'leftSection.dart';
import 'rightSection.dart';
import 'favoriteTested.dart';

class BeerView extends StatefulWidget {
  final Beer beer;
  final Set<int> favorite;
  final Function(int id) addToFavorite; // CallBack Add to favorite
  final Function(int id) removeFromFavorite; // CallBack Remove from favorite
  final Set<int> tested;
  final Function(int id) addToTested; // CallBack Add to favorite
  final Function(int id) removeFromTested; // CallBack Remove from favorite
  const BeerView(
    { 
      Key ? key,
      required this.beer,
      required this.favorite, 
      required this.addToFavorite, 
      required this.removeFromFavorite,
      required this.tested,
      required this.addToTested,
      required this.removeFromTested
    }
  ) : super(key: key);

  @override
  _BeerViewState createState() => _BeerViewState();
}

class _BeerViewState extends State<BeerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Center(
            child: FavoriteTested(
              beer: widget.beer,
              favorite: widget.favorite,
              addToFavorite: widget.addToFavorite,
              removeFromFavorite: widget.removeFromFavorite,
              tested: widget.tested,
              addToTested: widget.addToTested,
              removeFromTested: widget.removeFromTested,
            ), 
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: LeftSection(
                  beer: widget.beer
                ),
              ),
              Flexible(
                flex: 2,
                child: RightSection(
                  beer: widget.beer
                ),
              ),
            ],
          ),
        ],
      ) 
    );
  }
}