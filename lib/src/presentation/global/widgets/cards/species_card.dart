import 'package:flutter/material.dart';

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
      child: InkWell(
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
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
      child: FadeInImage(
        fit: BoxFit.cover,
        placeholder: AssetImage(
          'assets/images/estructura.png',
        ),
        image: NetworkImage('https://picsum.photos/seed/picsum/300/400'),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
    this.title,
    this.color,
  });

  final String? title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class SubtitleCard extends StatelessWidget {
  const SubtitleCard({
    super.key,
    this.subtitle,
  });

  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle ?? '',
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(
          5,
          (index) => Icon(
                Icons.star_rounded,
                color: color,
              )),
    );
  }
}

class PreferenciesButtons extends StatelessWidget {
  const PreferenciesButtons({
    super.key,
    this.color,
    this.iconColor,
  });

  final Color? color;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.playlist_add_rounded,
              color: iconColor,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
