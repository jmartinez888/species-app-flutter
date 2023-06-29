import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/utils/responsive.dart';
import 'package:species/src/presentation/global/widgets/buttons/custom_icon_button.dart';
import 'package:species/src/presentation/global/widgets/cards/custom_grid_card.dart';
import 'package:species/src/presentation/global/widgets/rating_star_bar.dart';

class SpeciesGridPage extends StatelessWidget {
  const SpeciesGridPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile(context)
            ? 2
            : isTablet(context)
                ? 4
                : isDesktop(context)
                    ? 5
                    : 2,
      ),
      itemCount: 20,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      itemBuilder: (context, index) {
        return CustomGridCard(
          onTap: () {},
          backgroundColor: CustomColors.birdContainer,
          principalColor: CustomColors.bird,
          title: 'Title $index',
          subtitle: 'Subtitle $index',
          image: FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity,
            placeholder: const AssetImage(
              'assets/images/estructura.png',
            ),
            image: NetworkImage('https://picsum.photos/seed/$index/200/300'),
          ),
          actions: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RatingStars(
                  rating: 2.5,
                  color: CustomColors.bird,
                ),
              ],
            ),
            CustomIconButtom(
              icon: Icons.playlist_add,
              backgroundColor: CustomColors.bird,
              iconColor: CustomColors.birdContainer,
              onPressed: () {},
            ),
            CustomIconButtom(
              icon: Icons.favorite_border_outlined,
              backgroundColor: CustomColors.bird,
              iconColor: CustomColors.birdContainer,
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
