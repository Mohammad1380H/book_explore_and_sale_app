import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      if (i <= rating) {
        stars.add(const Icon(Icons.star, color: Colors.yellow,size: 12,));
      } else {
        stars.add(const Icon(Icons.star, color: Colors.grey,size: 12,));
      }
    }
    return Row(children: stars);
  }
}