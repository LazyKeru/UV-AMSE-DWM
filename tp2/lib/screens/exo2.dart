import 'package:flutter/material.dart';
import '../widgets/exo2/ImageTrsf.dart';
import '../widgets/exo2/paramSlider.dart';
import '../widgets/exo2/paramCheckbox.dart';
import '../widgets/exo2/ButtonActionPlay.dart';
import 'dart:async';


class TransformImage extends StatefulWidget {
  const TransformImage({ Key? key }) : super(key: key);

  @override
  _TransformImageState createState() => _TransformImageState();
}

class _TransformImageState extends State<TransformImage> {
  static const String _title = 'Transform image - Exo 2';
  static const Color _backgroundcolor = Color.fromRGBO(234, 189, 52, 1);
  
  // Parameters for the sliders
  /// Rotate X
  static const String _rotateX = "Rotate X";
  double _rotateXValue = 0;
  static const double _rotateXMaxValue = 360;
  static const int? _rotateXDiv = null;
  void _changeXValue(double value)=>setState(()=>_rotateXValue=value);

  /// Rotate Z
  static const String _rotateZ = "Rotate Z";
  double _rotateZValue = 0;
  static const double _rotateZMaxValue = 360;
  static const int? _rotateZDiv = null;
  void _changeZValue(double value)=>setState(()=>_rotateZValue=value);

  /// Mirror
  static const String _mirror = "Mirror";
  bool _mirrorValue = false;
  void _changeMirrorValue(bool ? value)=>setState(()=>_mirrorValue = value !);

  /// Scale
  static const String _scale = "Scale";
  double _scaleValue = 1;
  static const double _scaleMaxValue = 5;
  static const int _scaleDiv = 5;
  void _changeScaleValue(double value)=>setState(()=>_scaleValue=value);

  
  /// Auto Incrementation :
  // This variable determines whether the timer runs or not
  bool _isRunning = false;

  void _startAnimation(){
    setState(()=>_isRunning = true);
    Timer.periodic(
      const Duration(milliseconds: 50),
      (Timer _animation){
        if(!_isRunning){
          _animation.cancel();
        }
        _automaticUpdate(_rotateXValue, _rotateXMaxValue, _changeXValue);
        _automaticUpdate(_rotateZValue, _rotateZMaxValue, _changeZValue);
      }
    );
  }

  void _automaticUpdate(double value, double max, Function changeValue){
    switch (value < max) {
        case true:
         changeValue(value + 1);
          break;
        default:
          changeValue(0);
      }
  }

  void _stopAnimation()=>setState(()=>_isRunning = false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: _backgroundcolor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageTrsf(
            x: _rotateXValue, 
            z: _rotateZValue, 
            mirror: _mirrorValue,
            scale: _scaleValue
          ),
          ParamSlider(
            paramName: _rotateX, 
            paramValue: _rotateXValue, 
            paramMaxValue: _rotateXMaxValue,
            paramDiv: _rotateXDiv,
            changeValue: _changeXValue
          ),
          ParamSlider(
            paramName: _rotateZ, 
            paramValue: _rotateZValue, 
            paramMaxValue: _rotateZMaxValue,
            paramDiv: _rotateZDiv,
            changeValue: _changeZValue
          ),
          ParamCheckbox(
            title: _mirror,
            value: _mirrorValue, 
            onChanged: _changeMirrorValue
          ),
          ParamSlider(
            paramName: _scale, 
            paramValue: _scaleValue, 
            paramMaxValue: _scaleMaxValue,
            paramDiv: _scaleDiv,
            changeValue: _changeScaleValue
          ),
          ButtonActionPlay(
            startAnimation: ()=>_startAnimation(),
            stopAnimation: ()=>_stopAnimation(),
            state: _isRunning,
          )
        ],
      ),
    );
  }
}