import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/utils/responsive.dart';
import 'package:species/src/presentation/global/widgets/buttons/custom_icon_button.dart';
import 'package:species/src/presentation/global/widgets/cards/custom_grid_card.dart';
import 'package:species/src/presentation/global/widgets/rating_star_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          CustomIconButtom(
            icon: Icons.playlist_add_check_rounded,
            onPressed: () {},
            tooltip: 'Checklist',
            backgroundColor: CustomColors.bird,
            iconColor: CustomColors.birdContainer,
          ),
        ],
      ),
      body: MasonryGridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobile(context)
              ? 2
              : isTablet(context)
                  ? 4
                  : isDesktop(context)
                      ? 7
                      : 2,
        ),
        itemCount: 8,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        itemBuilder: (context, index) {
          return CustomGridCard(
            onTap: () {},
            image: FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              placeholder: const AssetImage(
                'assets/images/estructura.png',
              ),
              image: NetworkImage('https://picsum.photos/seed/$index/200/300'),
            ),
            title: 'Title $index',
            subtitle: 'Subtitle $index',
            actions: <Widget>[
              const RatingStars(
                rating: 3.5,
                color: CustomColors.bird,
                size: 16.0,
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
            backgroundColor: CustomColors.birdContainer,
            borderColor: CustomColors.bird,
            titleColor: CustomColors.bird,
          );
        },
      ),
    );
  }
}
