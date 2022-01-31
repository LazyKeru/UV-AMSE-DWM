import 'package:flutter/material.dart';
import '../models/punkapi/beer.dart';
import '../widgets/beerDetail/beerDetailLayout.dart';

/*class BeersDetailWidget extends StatefulWidget {
  final Beer beer;
  const BeersDetailWidget({required this.beer});
  
  @override
  _BeersDetailWidgetState createState() => _BeersDetailWidgetState();
}

class _BeersDetailWidgetState extends State<BeersDetailWidget> {
*/

class BeersDetailWidget extends StatelessWidget {
  final Beer beer;
  const BeersDetailWidget({required this.beer});

  @override
  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: Text(beer.name),
        backgroundColor: Colors.yellow,
      ),
      body: beerDetailLayout(beer)
    );                                      // ... to here.
  }
}