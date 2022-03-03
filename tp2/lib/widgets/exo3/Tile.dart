import 'package:flutter/material.dart';
import '../../screens/exo2.dart';

class Tile extends StatefulWidget {
  const Tile(
    { 
      Key? key,
      required this.title,
      required this.subtitle,
      required this.exercice
    }
  ) : super(key: key);

  final String title;
  final String subtitle;
  final Widget exercice;
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return 
          Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint("Tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => widget.exercice)
                  );
                },
                child: ListTile(
                  title: Text(widget.title),
                  subtitle: Text(widget.subtitle),
                  trailing: const Icon(Icons.play_arrow)
                )
              ) 
            );
  }
}