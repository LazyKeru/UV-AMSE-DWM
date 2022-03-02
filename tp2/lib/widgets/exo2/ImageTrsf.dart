import 'dart:math';

import 'package:flutter/material.dart';

class ImageTrsf extends StatefulWidget {
  const ImageTrsf(
    { 
      Key? key,
      required this.x,
      required this.z,
      required this.mirror,
      required this.scale
    }
  ) : super(key: key);

  final double x;
  final double z;
  final bool mirror;
  final double scale;
  @override
  _ImageTrsfState createState() => _ImageTrsfState();
}

class _ImageTrsfState extends State<ImageTrsf> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(color: const Color(0xff7c94b6)),
        height: Image.asset("img/meme.png").height,
        width: Image.asset("img/meme.png").width,
        child: Transform(
          transform: Matrix4(
            1, 0, 0, 0,
            0, 1, 0, 0,
            0, 0, 1, 0,
            0, 0, 0, 1
          )
          ..rotateX(pi / 180 * widget.x)
          ..rotateZ(pi / 180 *  widget.z)
          ..rotateY(widget.mirror ? pi : 0)
          ..scale(widget.scale),
          child: Image.asset("img/meme.png"),
          alignment: FractionalOffset.center,
        )
      )
    );
  }
}