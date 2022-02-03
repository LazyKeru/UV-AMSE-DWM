import 'package:flutter/material.dart';
import '../providers/fetchPunkapi.dart';
import '../widgets/buildList.dart';
import '../models/punkapi/beers.dart';
import '../utilities/addToList.dart';
import '../utilities/removeFromList.dart';
import '../providers/globalVar.dart' as global;


class BeersWidget extends StatefulWidget {
  const BeersWidget({Key? key}) : super(key: key);
  
  @override
  _BeersWidgetState createState() => _BeersWidgetState();
}

class _BeersWidgetState extends State<BeersWidget> {
  static const String _title = 'Beers';
  late Future<Beers> futureBeers;
  // Set<int> _favorite = <int>{}; // replaced by global.favorite
  // Set<int> _tested = <int>{}; // replaced by global.tested
  @override
  void initState() {
    super.initState();
    futureBeers= fetchBeers("beers?page=2&per_page=80");
  }

  void addToFavorite(int id) => setState(() => global.favorite = addToList(global.favorite, id));
  void removeFromFavorite(int id) => setState(() => global.favorite = removeFromList(global.favorite, id));
  void addToTested(int id) => setState(() => global.tested = addToList(global.tested, id));
  void removeFromTested(int id) => setState(() => global.tested = removeFromList(global.tested, id));

  @override
  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: Colors.yellow,
      ),
      body: FutureBuilder<Beers>(
        future: futureBeers,
        builder: (context, snapshot) {
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
          }else if(snapshot.hasError){
            return Text('Error: ${snapshot.error}');
          }
          //default, show loading spinner
          return const CircularProgressIndicator();
        }

      )
    );                                      // ... to here.
  }
}