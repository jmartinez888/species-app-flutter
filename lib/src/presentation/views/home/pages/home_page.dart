import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/cards/species_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Species'),
      ),
      body: MasonryGridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 6,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => SpeciesCard(
          titleCard: 'Pato Crestudo',
          subtitleCard: 'Sarkidiornis sylvicola',
          cardColor: Colors.red.withOpacity(0.1),
          borderSideColor: Colors.red,
          ratingStarscolor: Colors.red,
          preferenciesButtonsColor: Colors.red,
          iconColorCard: Colors.white,
        ),
      ),
    );
  }
}
