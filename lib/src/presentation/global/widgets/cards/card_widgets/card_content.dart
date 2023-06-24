import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/cards/card_widgets/card_buttons.dart';
import 'package:species/src/presentation/global/widgets/cards/card_widgets/card_image.dart';
import 'package:species/src/presentation/global/widgets/cards/card_widgets/card_rating_starts.dart';
import 'package:species/src/presentation/global/widgets/cards/card_widgets/cart_text.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.borderSideColor,
    required this.titleCard,
    required this.subtitleCard,
    required this.ratingStarscolor,
    required this.preferenciesButtonsColor,
    required this.iconColorCard,
  });

  final Color? borderSideColor;
  final String? titleCard;
  final String? subtitleCard;
  final Color? ratingStarscolor;
  final Color? preferenciesButtonsColor;
  final Color? iconColorCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      splashColor: borderSideColor?.withOpacity(0.3),
      child: Column(
        children: [
          const ImageCard(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleCard(
                  title: titleCard,
                  color: borderSideColor,
                ),
                SubtitleCard(
                  subtitle: subtitleCard,
                ),
                const SizedBox(height: 8),
                RatingStars(
                  color: ratingStarscolor,
                ),
                const SizedBox(height: 8),
                PreferenciesButtons(
                  color: preferenciesButtonsColor,
                  iconColor: iconColorCard,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
