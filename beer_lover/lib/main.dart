import 'package:flutter/material.dart';
import 'widgets/navBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Beer Lover';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: NavBar(),
    );
  }
}

