import 'package:flutter/material.dart';
import '../../models/punkapi/beer.dart';

class FavoriteTested extends StatefulWidget {
  final Beer beer;
  final Set<int> favorite;
  final Function(int id) addToFavorite; // CallBack Add to favorite
  final Function(int id) removeFromFavorite; // CallBack Remove from favorite
  final Set<int> tested;
  final Function(int id) addToTested; // CallBack Add to favorite
  final Function(int id) removeFromTested; // CallBack Remove from favorite
  const FavoriteTested(
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
  _FavoriteTestedState createState() => _FavoriteTestedState();
}

class _FavoriteTestedState extends State<FavoriteTested> {
  @override
  Widget build(BuildContext context) {
    var alreadyFavored = widget.favorite.contains(widget.beer.id);
    var alreadyTested = widget.tested.contains(widget.beer.id);
    return Row(
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
            setState(() {}); //force reload
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
            setState(() {}); //force reload
          }
        )
      ],
    );
  }
}