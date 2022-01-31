import 'package:flutter/material.dart';

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: const Text(
          'Beer Catalogue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Text(
        'brought to you by LazyKeru',
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
      Text(
        'powered by flutter',
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
    ],
  ),
);