import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/cards/card_widgets/card_content.dart';

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
  });

  final Color? cardColor;
  final Color? borderSideColor;
  final String? titleCard;
  final String? subtitleCard;
  final Color? ratingStarscolor;
  final Color? preferenciesButtonsColor;
  final Color? iconColorCard;

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
      child: CardContent(
        borderSideColor: borderSideColor,
        titleCard: titleCard,
        subtitleCard: subtitleCard,
        ratingStarscolor: ratingStarscolor,
        preferenciesButtonsColor: preferenciesButtonsColor,
        iconColorCard: iconColorCard,
      ),
    );
  }
}
