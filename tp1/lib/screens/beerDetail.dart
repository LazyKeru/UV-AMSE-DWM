import 'package:flutter/material.dart';
import '../models/punkapi/beer.dart';
import '../widgets/beerDetail/beerView.dart';

/*class BeersDetailWidget extends StatefulWidget {
  final Beer beer;
  const BeersDetailWidget({required this.beer});
  
  @override
  _BeersDetailWidgetState createState() => _BeersDetailWidgetState();
}

class _BeersDetailWidgetState extends State<BeersDetailWidget> {
*/

class BeerDetail extends StatefulWidget {
  final Beer beer;
  final Set<int> favorite;
  final Function(int id) addToFavorite; // CallBack Add to favorite
  final Function(int id) removeFromFavorite; // CallBack Remove from favorite
  final Set<int> tested;
  final Function(int id) addToTested; // CallBack Add to favorite
  final Function(int id) removeFromTested; // CallBack Remove from favorite
  const BeerDetail(
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
  _BeerDetailState createState() => _BeerDetailState();
}

class _BeerDetailState extends State<BeerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: Text(widget.beer.name),
        backgroundColor: Colors.yellow,
      ),
      body: BeerView(
          beer: widget.beer,
          favorite: widget.favorite,
          addToFavorite: widget.addToFavorite,
          removeFromFavorite: widget.removeFromFavorite,
          tested: widget.tested,
          addToTested: widget.addToTested,
          removeFromTested: widget.removeFromTested,
        )
    );                                      // ... to here.
  }
}