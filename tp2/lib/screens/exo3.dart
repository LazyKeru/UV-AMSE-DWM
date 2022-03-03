import 'package:flutter/material.dart';
import '../widgets/exo3/Tile.dart';
import './exo2.dart';

class Menu extends StatefulWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  static const String _title = 'Menu - Exo 3';
  static const Color _backgroundcolor = Color.fromRGBO(234, 189, 52, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          title: const Text(_title),
          backgroundColor: _backgroundcolor,
        ),
      body:
      ListView(
        children: [
          Tile(
              title: "Exercice 2",
              subtitle: "Transformer une image",
              exercice: const TransformImage(),
          ),
          Tile(
              title: "Exercice 4",
              subtitle: "Transformer une image",
              exercice: const TransformImage(),
          )
        ],

      ),
    );
  }
}