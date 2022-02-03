import 'package:flutter/material.dart';
import '../../models/punkapi/beer.dart';

class LeftSection extends StatelessWidget {
  final Beer beer;
  const LeftSection(
    { 
      Key? key,
      required this.beer,
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            beer.name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 200.0,
            height: 300.0,
            child:
              Image(
                image: NetworkImage(beer.imageurl)
              ),
          )
        ],
      ),
    );
  }
}