import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/rating_starts.dart';

class SpeciesCard extends StatelessWidget {
  const SpeciesCard({
    super.key,
    this.cardColor,
    this.borderSideColor,
    this.titleCard,
    this.subtitleCard,
    this.ratingStarscolor,
    this.preferenciesButtonsColor,
    this.iconColorCard,
    this.imagePlaceholder,
    this.imageUrl,
  });

  final Color? cardColor;
  final Color? borderSideColor;
  final String? titleCard;
  final String? subtitleCard;
  final Color? ratingStarscolor;
  final Color? preferenciesButtonsColor;
  final Color? iconColorCard;
  final String? imagePlaceholder;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: cardColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderSideColor!,
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Column(
          children: [
            _cardImage(imagePlaceholder: imagePlaceholder, imageUrl: imageUrl),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleCard ?? '',
                        style: TextStyle(
                          color: borderSideColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        subtitleCard ?? '',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  RatingStars(
                    color: ratingStarscolor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _cardImage({
  final String? imagePlaceholder,
  final String? imageUrl,
}) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
    child: FadeInImage(
      fit: BoxFit.cover,
      placeholder: AssetImage(
        imagePlaceholder!,
      ),
      image: NetworkImage(imageUrl!),
    ),
  );
}
