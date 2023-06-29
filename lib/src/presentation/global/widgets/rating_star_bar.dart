import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    required this.rating,
    required this.color,
    required this.size,
  });

  final double rating;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      ignoreGestures: true,
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 16,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: color,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
