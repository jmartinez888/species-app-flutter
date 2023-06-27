import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/widgets/cards/custom_card.dart';
import 'package:species/src/presentation/global/widgets/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          CustomIconButtom(
            backgroundColor: CustomColors.bird,
            iconColor: CustomColors.birdContainer,
            icon: Icons.add,
            onPressed: () {},
          )
        ],
      ),
      body: MasonryGridView.builder(
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 6,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        itemBuilder: (context, index) {
          return CustomItemCard(
            image: 'https://picsum.photos/300/400',
            name: 'Nombre de la especie',
            scientificName: 'Nombre científico',
            backgroundCardColor: CustomColors.birdContainer,
            borderCardColor: CustomColors.bird,
            ratingStars: const [
              Wrap(
                spacing: 4.0,
                children: [
                  Icon(Icons.star_rounded,
                      size: 16.0, color: CustomColors.bird),
                  Icon(Icons.star_rounded,
                      size: 16.0, color: CustomColors.bird),
                  Icon(Icons.star_rounded,
                      size: 16.0, color: CustomColors.bird),
                  Icon(Icons.star_rounded,
                      size: 16.0, color: CustomColors.bird),
                  Icon(Icons.star_rounded,
                      size: 16.0, color: CustomColors.bird),
                ],
              )
            ],
            actions: [
              CustomIconButtom(
                backgroundColor: CustomColors.bird,
                iconColor: CustomColors.birdContainer,
                icon: Icons.playlist_add,
                onPressed: () {},
              ),
              const SizedBox(width: 8.0),
              CustomIconButtom(
                backgroundColor: CustomColors.bird,
                iconColor: CustomColors.birdContainer,
                icon: Icons.favorite_outline_outlined,
                onPressed: () {},
              )
            ],
          );
        },
      ),
    );
  }
}
