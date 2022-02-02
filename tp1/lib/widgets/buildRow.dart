//import 'dart:html';

import 'package:flutter/material.dart';
//import '../models/local_json/beer.dart';
import '../models/punkapi/beer.dart';
import '../screens/beerDetail.dart';
/// Build Row was adapted for the punkapi json model.
/// This generates a list item for each beer loaded

class BeerRow extends StatefulWidget {
  final Beer beer;
  final List<int> favorite;
  final Function() addToFavorite; // CallBack Add to favorite
  final Function() removeFromFavorite; // CallBack Remove from favorite
  const BeerRow(
    { 
      Key? key, 
      required this.beer, 
      required this.favorite, 
      required this.addToFavorite, 
      required this.removeFromFavorite
    }
  ) : super(key: key);

  @override
  _BeerRowState createState() => _BeerRowState();
}

class _BeerRowState extends State<BeerRow> {
  @override
  Widget build(BuildContext context) {
    var alreadyTested = widget.favorite.contains(widget.beer.id);
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
              alreadyTested ? Icons.favorite : Icons.favorite_border
            ),
            onPressed: () {
              setState(
                () { 
                  alreadyTested ? widget.favorite.add(widget.beer.id) : widget.favorite.remove(widget.beer.id); 
                  var temp = widget.beer.id;
                  debugPrint("Beer id: $temp");
                  var otemp = widget.favorite;
                  debugPrint("Favorite: $otemp");
                }
              );
            }
          ),
          IconButton(
            icon: Icon(
              alreadyTested ? Icons.local_bar : Icons.local_bar_outlined
            ),
            onPressed: () {
              alreadyTested ? widget.favorite.add(widget.beer.id) : widget.favorite.remove(widget.beer.id);
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