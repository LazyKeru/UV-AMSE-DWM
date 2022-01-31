import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/local_json/beers.dart';

Future<Beers> fetchBeers() async {
    String data = await rootBundle
      .loadString('database/open-beer-database.json');
    if (data.isEmpty) {
      throw Exception('Failed to load the Beer Json');
    }else{
      return Beers.fromJson(jsonDecode(data));
    }
  }