import 'package:flutter/material.dart';
import '../widgets/exo7/paramSlider.dart';
import 'package:tp2/utilities/exo7/GenerateTilesList.dart';
import 'package:tp2/utilities/exo7/initEmptyTile.dart';
import 'package:tp2/utilities/exo7/randomTiles.dart';
import '../widgets/exo7/ButtonActionPlay.dart';


class Taquin extends StatefulWidget {
  const Taquin({ Key? key }) : super(key: key);

  @override
  State<Taquin> createState() => _TaquinState();
}

class _TaquinState extends State<Taquin> {

  static const String _title = 'Taquin - Exo 7';
  static const Color _backgroundcolor = Color.fromRGBO(234, 189, 52, 1);
  // Parameters for the slider
  static const String _sizeName = "Size of taquin game";
  static double _sizeValue = 2;
  static const double _sizeMinValue = 2;
  static const double _sizeMaxValue = 10;
  final int? _sizeDiv = (_sizeMaxValue - _sizeMinValue).toInt();
  void _changeSizeValue(double value){
    setState(() {
      _sizeValue = value;
      tiles = generateTilesList(_sizeValue.toInt(), imageUrl, (Widget tile)=>switchTile(_sizeValue.toInt(), tile));
      tiles = initEmptyTile(tiles);
      indexEmpty = 0;
    });
  }


  // Tiles List
  static List<Widget>? tiles;
  // Init the list for the first time loading
  initGame(){
    _changeSizeValue(_sizeValue);
    return tiles;
  }

  //Location of the empty Tile
  static int indexEmpty = 0;

  switchTile(int _Size, Widget _clickedTile ){
    if(_gameState==false){return;} //if the game is not running, do nothing
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

  //Bool is the game runnning ?
  bool _gameState = false;

  startGame()=>{
    setState(() {
      tiles = randomTiles(tiles, indexEmpty, (int index)=>setState(()=>indexEmpty = index));
      _gameState = true;
    })
  };
  endGame(){
    _changeSizeValue(_sizeValue);
    setState(()=>_gameState=false);
  }

  // The url to fetch all the image
  static String imageUrl = 'https://picsum.photos/512';

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
                  children: tiles ?? initGame(),
              )
            ),
            ParamSlider(
              paramName: _sizeName, 
              paramValue: _sizeValue, 
              paramMaxValue: _sizeMaxValue,
              paramMinValue: _sizeMinValue,
              paramDiv: _sizeDiv,
              isRunning: _gameState,
              changeValue: _changeSizeValue
            ),
            ButtonActionPlay(
              startGame: ()=> startGame(),
              stopGame: ()=> endGame(),
              state: _gameState,
            )
          ]
        )
      )
    );
  }
}