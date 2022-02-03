import 'package:flutter/material.dart';

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: const Text(
          'Beer Catalogue - Flutter Project',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: const Text(
          'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, Web platform, and the web from a single codebase',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: const Text(
          "This is for my tp1 in the UV AMSE DWM. It isn't the most optimized, but I still had fun using callback functions and discovering flutter. It's a tool extremely different from React-Native. It was fun to use",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        )
      ),
    ],
  ),
);