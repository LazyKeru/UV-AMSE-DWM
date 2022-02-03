import 'package:flutter/material.dart';
import '../providers/fetchPunkapi.dart';
import '../widgets/buildList.dart';
import '../models/punkapi/beers.dart';
import '../utilities/addToList.dart';
import '../utilities/removeFromList.dart';
import '../providers/globalVar.dart' as global;

class TestedWidget extends StatefulWidget {
  const TestedWidget({Key? key}) : super(key: key);
  
  @override
  _TestedWidgetState createState() => _TestedWidgetState();
}

class _TestedWidgetState extends State<TestedWidget> {
  late Future<Beers> futureTestedBeers = _getBeers();
  // Set<int> _favorite = <int>{}; // replaced by global.favorite
  // Set<int> _tested = <int>{}; // replaced by global.tested

  Future<Beers> _getBeers(){
    String request = "";
    for (int i in global.tested) {
      request = request + i.toString() + "|";
    }
    // checks if request not empty else request type:
    // https://api.punkapi.com/v2/beers?ids=id1|id2|id3|...
    return futureTestedBeers = fetchBeers("beers?ids="+ request);
  }


  // Not the cleanest wait, but it works
  void addToFavorite(int id) => setState(() => global.favorite = addToList(global.favorite, id));
  void removeFromFavorite(int id) => setState(() => global.favorite = removeFromList(global.favorite, id));
  void addToTested(int id) => setState(() => {global.tested = addToList(global.tested, id), futureTestedBeers = _getBeers()});
  void removeFromTested(int id) => setState(() => {global.tested = removeFromList(global.tested, id), futureTestedBeers = _getBeers()});

  static const String _title = 'Tested';

  @override
  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder<Beers>(
        future: futureTestedBeers,
        builder: (context, snapshot) {
          if (global.tested.isEmpty  == true) {
            return const Text('No tested');
          }
          if (snapshot.connectionState != ConnectionState.done) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          if(snapshot.hasData){
            return BeerListView(
              beers: snapshot.data!, 
              favorite: global.favorite,
              addToFavorite: addToFavorite,
              removeFromFavorite: removeFromFavorite,
              tested: global.tested,
              addToTested: addToTested,
              removeFromTested: removeFromTested,
            );
          }
          //default, show loading spinner
          return const CircularProgressIndicator();
        }
      )
    );                                      // ... to here.
  }
}