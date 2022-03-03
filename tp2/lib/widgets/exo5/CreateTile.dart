import 'package:flutter/material.dart';

class CreateTile extends StatefulWidget {
  const CreateTile(
    { 
      Key? key,
      required this.imageUrl,
      required this.alignment,
      required this.size,
    }
  ) : super(key: key);

  final String imageUrl;
  final Alignment alignment;
  final int size;

  @override
  _CreateTileState createState() => _CreateTileState();
}

class _CreateTileState extends State<CreateTile> {
  static const Color _backgroundcolor = Color.fromRGBO(234, 189, 52, 1);


  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: 
          Align(
            alignment: widget.alignment,
            widthFactor: 1 / widget.size,
            heightFactor: 1 / widget.size,
            child: Image.network(widget.imageUrl),
          ),
        ),
      ),
    );
  }
}