import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({
    super.key,
    required this.image,
    required this.name,
    required this.scientificName,
    required this.ratingStars,
    required this.actions,
    required this.backgroundCardColor,
    required this.borderCardColor,
    this.onTap,
  });

  final String image;
  final String name;
  final String scientificName;
  final List<Widget> ratingStars;
  final List<Widget> actions;
  final Color backgroundCardColor;
  final Color borderCardColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundCardColor,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        side: BorderSide(color: borderCardColor, width: 1.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              child: FadeInImage(
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/estructura.png'),
                image: NetworkImage(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: CustomColors.bird,
                            ),
                      ),
                      Text(
                        scientificName,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: ratingStars,
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: actions,
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
