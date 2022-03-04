import 'package:flutter/material.dart';

class CreateTile extends StatefulWidget {
  const CreateTile(
    { 
      Key? key,
      required this.imageUrl,
      required this.alignment,
      required this.size,
      required this.canBeClicked,
      required this.onClick
    }
  ) : super(key: key);

  final Function(Widget tile) onClick;
  final bool canBeClicked;
  final String imageUrl;
  final Alignment alignment;
  final int size;

  @override
  _CreateTileState createState() => _CreateTileState();
}

class _CreateTileState extends State<CreateTile> {


  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
        onTap: ()=>widget.onClick(widget),
        child:
          FittedBox(
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
          )
    );
  }
}