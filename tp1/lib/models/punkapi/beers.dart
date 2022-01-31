import 'beer.dart';

class Beers{
  List<Beer> beers;
  Beers({
    required this.beers
  });

  factory Beers.fromJson(List<dynamic> json){
    if(json.isEmpty != true){
      List<Beer> _beers = json.map((i)=>Beer.fromJson(i)).toList();
      return Beers(
        beers: _beers,
      );
    }else{
      throw Exception("Error on the json format");
    }
  }
}