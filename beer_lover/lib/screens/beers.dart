import 'package:flutter/material.dart';
import 'dart:convert';
import '../widgets/buildList.dart';
import '../models/beers.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Beers> fetchBeers() async {
    String data = await rootBundle
      .loadString('database/open-beer-database.json');
    if (data.isEmpty) {
      throw Exception('Failed to load the Beer Json');
    }else{
      return Beers.fromJson(jsonDecode(data));
    }
  }

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
        title: const Text(_title)
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