import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    this.rating = 0.0,
    required this.color,
    this.size = 16.0,
    this.ignoreGestures = true,
  });

  final double? rating;
  final Color color;
  final double size;
  final bool ignoreGestures;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      ignoreGestures: ignoreGestures,
      initialRating: rating!,
      minRating: 1,
      itemCount: 5,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemSize: size,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star_rounded,
        color: color,
      ),
      unratedColor: Theme.of(context).colorScheme.outline,
      onRatingUpdate: (rating) {},
    );
  }
}
