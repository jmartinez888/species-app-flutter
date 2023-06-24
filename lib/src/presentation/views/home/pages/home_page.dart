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
          cardColor: Theme.of(context).colorScheme.primaryContainer,
          borderSideColor: Theme.of(context).colorScheme.primary,
          ratingStarscolor: Theme.of(context).colorScheme.primary,
          preferenciesButtonsColor: Theme.of(context).colorScheme.primary,
          iconColorCard: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
    );
  }
}
