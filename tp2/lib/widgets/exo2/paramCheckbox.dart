import 'package:flutter/material.dart';

class ParamCheckbox extends StatefulWidget {
  const ParamCheckbox(
    { 
      Key? key,
      required this.title,
      required this.value,
      required this.onChanged
    }
  ) : super(key: key);

  final String title;
  final bool value;
  final Function(bool?)? onChanged;

  @override
  _ParamCheckboxState createState() => _ParamCheckboxState();
}

class _ParamCheckboxState extends State<ParamCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally
      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically
      children: [
        Text(widget.title),
        Checkbox(
          value: widget.value, 
          onChanged: widget.onChanged
        )
      ],
      
    );
  }
}