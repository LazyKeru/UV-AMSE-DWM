import 'package:flutter/material.dart';
import 'package:tp2/utilities/exo5/GenerateTilesList.dart';
import '../widgets/exo2/paramSlider.dart';

class GridGenerator extends StatefulWidget {
  const GridGenerator({ Key? key }) : super(key: key);

  @override
  _GridGeneratorState createState() => _GridGeneratorState();
}

class _GridGeneratorState extends State<GridGenerator> {
  static const String _title = 'Génération du plateau de tuiles - Exo 5';
  static const Color _backgroundcolor = Color.fromRGBO(234, 189, 52, 1);

  static String imageUrl = 'https://picsum.photos/512';

  // Parameters for the slider
  static const String _sizeName = "Size of split";
  double _sizeValue = 2;
  static const double _sizeMinValue = 2;
  static const double _sizeMaxValue = 10;
  final int? _sizeDiv = (_sizeMaxValue - _sizeMinValue).toInt();
  void _changeSizeValue(double value)=>setState(()=>_sizeValue=value);


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
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(4),
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: _sizeValue.toInt(),
                  children: generateTilesList(_sizeValue.toInt(), imageUrl) //function which creates a List<Widget>
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