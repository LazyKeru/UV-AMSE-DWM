import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/punkapi/beers.dart';
import '../models/punkapi/beer.dart';

const String punkapi = "https://api.punkapi.com/v2/";

Future<Beers> fetchBeers(String request) async {
  final response = await http
    .get(Uri.parse(punkapi+request));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Beers.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load beers from punkapi');
  }
}