import 'package:flutter/material.dart';

class ParamSlider extends StatefulWidget {
  const ParamSlider(
    { 
      Key? key, 
      required this.paramName, 
      required this.paramValue,
      required this.paramMaxValue,
      required this.paramDiv,
      required this.changeValue
    }
  ) : super(key: key);

  final String paramName;
  final double paramMaxValue;
  final int? paramDiv;
  final double paramValue;
  final Function(double value) changeValue;

  @override
  _ParamSliderState createState() => _ParamSliderState();
}

class _ParamSliderState extends State<ParamSlider> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally
      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically
      children: [
        Text(widget.paramName),
        Slider(
          value: widget.paramValue,
          max: widget.paramMaxValue,
          divisions: widget.paramDiv,
          label: widget.paramValue.round().toString(),
          onChanged: widget.changeValue,
        )
      ],
    );
  }
}