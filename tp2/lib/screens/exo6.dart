import 'package:flutter/material.dart';
import '../widgets/exo2/paramSlider.dart';
import 'package:tp2/utilities/exo7/initEmptyTile.dart';
import 'package:tp2/utilities/exo6/GenerateTilesList.dart';
import 'package:tp2/widgets/exo6/CreateTile.dart';

class AnimatedTiles extends StatefulWidget {
  const AnimatedTiles({ Key? key }) : super(key: key);

  @override
  State<AnimatedTiles> createState() => _AnimatedTilesState();
}

class _AnimatedTilesState extends State<AnimatedTiles> {
  static const String _title = 'AnimatedTiles - Exo 6';
  static const Color _backgroundcolor = Color.fromRGBO(234, 189, 52, 1);

  static String imageUrl = 'https://picsum.photos/512';

  // Parameters for the slider
  static const String _sizeName = "Size of split";
  static double _sizeValue = 2;
  static const double _sizeMinValue = 2;
  static const double _sizeMaxValue = 10;
  final int? _sizeDiv = (_sizeMaxValue - _sizeMinValue).toInt();

  // Update the grid
  void _changeSizeValue(double value){
    debugPrint("Loading new Tile set");
    setState(()=>_sizeValue=value);
    setState(()=> tiles=generateTilesList(_sizeValue.toInt(), (Widget tile)=>switchTile(_sizeValue.toInt(), tile)));
    setState(()=> tiles=initEmptyTile(tiles));
    setState(()=> indexEmpty=0);
  }

  //Location of the empty Tile
  static int indexEmpty = 0;

  // Need to have the Tiles generate just once
  //static List<Widget> tiles = generateTilesList(_sizeValue.toInt(), ()=>tiles.insert(1, tiles.removeAt(0)));
  static List<Widget>? tiles;
  // Action to Swap tiles

  switchTile(int _Size, Widget _clickedTile ){
    int? _idClickTile = tiles?.indexOf(_clickedTile); // finding the index of the clickedTile
    if(_idClickTile == null){throw"error mate";}
    if(indexEmpty - 1 == _idClickTile){ //Clicked the switchTile to his left
      tiles?.insert(_idClickTile, tiles!.removeAt(indexEmpty));
      setState(()=> indexEmpty = _idClickTile);
    }
    if(indexEmpty + 1 == _idClickTile){ //Clicked the switchTile to his left
      tiles?.insert(indexEmpty, tiles!.removeAt(_idClickTile));
      setState(()=> indexEmpty = _idClickTile);
    }
    if(indexEmpty - _Size == _idClickTile){ //Clicked the switchTile at the top
      tiles?.insert(_idClickTile, tiles!.removeAt(indexEmpty));
      tiles?.insert(indexEmpty, tiles!.removeAt(_idClickTile + 1));
      setState(()=> indexEmpty = _idClickTile);
    }
    if(indexEmpty + _Size == _idClickTile){ //Clicked the switchTile at the bottom
      tiles?.insert(indexEmpty, tiles!.removeAt(_idClickTile));
      tiles?.insert(_idClickTile, tiles!.removeAt(indexEmpty + 1));
      setState(()=> indexEmpty = _idClickTile);
    }
    setState(()=> tiles);
  }

  //The SetState doesn't make it reload
  initGame(){
    _changeSizeValue(_sizeValue);
    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          title: const Text(_title),
          backgroundColor: _backgroundcolor,
        ),
      body:
      Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 500,
              width: 500,
              child: 
                GridView.count(
                  // Added a Unique key, or the gridView didn't update on setState
                  key: UniqueKey(),
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(4),
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: _sizeValue.toInt(),
                  children: tiles ?? initGame()
              )
            ),
            ParamSlider(
              paramName: _sizeName, 
              paramValue: _sizeValue, 
              paramMaxValue: _sizeMaxValue,
              paramMinValue: _sizeMinValue,
              paramDiv: _sizeDiv,
              changeValue: _changeSizeValue
            )
          ]
        )

      
      )
    );
  }
}