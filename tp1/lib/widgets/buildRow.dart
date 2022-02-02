//import 'dart:html';

import 'package:flutter/material.dart';
//import '../models/local_json/beer.dart';
import '../models/punkapi/beer.dart';
import '../screens/beerDetail.dart';
/// Build Row was adapted for the punkapi json model.
/// This generates a list item for each beer loaded

class BeerRow extends StatefulWidget {
  final Beer beer;
  final Set<int> favorite;
  final Function(int id) addToFavorite; // CallBack Add to favorite
  final Function(int id) removeFromFavorite; // CallBack Remove from favorite
  final Set<int> tested;
  final Function(int id) addToTested; // CallBack Add to favorite
  final Function(int id) removeFromTested; // CallBack Remove from favorite
  const BeerRow(
    { 
      Key? key, 
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
  _BeerRowState createState() => _BeerRowState();
}

class _BeerRowState extends State<BeerRow> {
  @override
  Widget build(BuildContext context) {
    var alreadyFavored = widget.favorite.contains(widget.beer.id);
    var alreadyTested = widget.tested.contains(widget.beer.id);
    return ListTile(
      leading: SizedBox(
        height: 100.0,
        width: 100.0, // fixed width and height
        child: Image.network(widget.beer.imageurl)
      ),
      title: Text(
        widget.beer.name,
      ),
      subtitle: Text("Style : " + widget.beer.description),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,  
        children: <Widget>[
          IconButton(
            icon: Icon(
              alreadyFavored ? Icons.favorite : Icons.favorite_border
            ),
            onPressed: () {
              alreadyFavored ? debugPrint("Remove from favorite") : debugPrint("Add to favorite");
              var temp = widget.beer.id;
              debugPrint("Beer id: $temp");
              alreadyFavored ? widget.removeFromFavorite(widget.beer.id) : widget.addToFavorite(widget.beer.id); 
            }
          ),
          IconButton(
            icon: Icon(
              alreadyTested ? Icons.local_bar : Icons.local_bar_outlined
            ),
            onPressed: () {
              alreadyTested ? debugPrint("Remove from tested") : debugPrint("Add to tested");
              var temp = widget.beer.id;
              debugPrint("Beer id: $temp");
              alreadyTested ? widget.removeFromTested(widget.beer.id) : widget.addToTested(widget.beer.id); 
            }
          )
        ],
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BeersDetailWidget(
              beer: widget.beer
            ),
          ),
        );
      }
    );  
  }
}