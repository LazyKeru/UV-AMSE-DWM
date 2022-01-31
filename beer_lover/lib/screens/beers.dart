import 'package:flutter/material.dart';
import '../providers/fetchPunkapi.dart';
import '../widgets/buildList.dart';
import '../models/punkapi/beers.dart';

class BeersWidget extends StatefulWidget {
  const BeersWidget({Key? key}) : super(key: key);
  
  @override
  _BeersWidgetState createState() => _BeersWidgetState();
}

class _BeersWidgetState extends State<BeersWidget> {
  static const String _title = 'Beers';
  late Future<Beers> futureBeers;

  @override
  void initState() {
    super.initState();
    futureBeers= fetchBeers();
  }

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
            return buildListView(snapshot.data!);
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