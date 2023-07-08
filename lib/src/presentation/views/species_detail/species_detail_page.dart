import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/widgets/buttons/custom_icon_button.dart';
import 'package:species/src/presentation/global/widgets/rating_star_bart.dart';

class SpeciesDetailPage extends StatelessWidget {
  const SpeciesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CustomIconButtom(
              icon: Icons.arrow_back_ios_rounded,
              iconColor: Theme.of(context).colorScheme.onSurface,
              onPressed: () => Navigator.pop(context),
            ),
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.width * (3 / 4),
            floating: false,
            pinned: true,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              title: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.end,
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    CustomIconButtom(
                      icon: Icons.download_rounded,
                      onPressed: () {},
                      backgroundColor: CustomColors.bird,
                      iconColor: Colors.white,
                    ),
                    CustomIconButtom(
                      icon: Icons.share_rounded,
                      onPressed: () {},
                      backgroundColor: CustomColors.bird,
                      iconColor: Colors.white,
                    ),
                    CustomIconButtom(
                      icon: Icons.playlist_add_rounded,
                      onPressed: () {},
                      backgroundColor: CustomColors.bird,
                      iconColor: Colors.white,
                    ),
                    CustomIconButtom(
                      icon: Icons.favorite_border_rounded,
                      onPressed: () {},
                      backgroundColor: CustomColors.bird,
                      iconColor: Colors.white,
                    ),
                  ],
                ),
              ),
              background: GestureDetector(
                onTap: () {},
                child: const FadeInImage(
                  placeholder: AssetImage('assets/images/estructura.png'),
                  image: NetworkImage(
                      "https://www.picsum.photos/seed/picsum/600/800"),
                  fadeInDuration: Duration(milliseconds: 150),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 0.0,
                  bottom: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pato crestudo',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: CustomColors.bird,
                          ),
                    ),
                    Text(
                      'Sarkidiornis sylvicola',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          'von Ihering, H & von Ihering, R, 1907',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      height: 40.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: CustomColors.bird,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            padding: const EdgeInsets.all(0.0),
                            onPressed: () {},
                            icon: const Icon(Icons.play_arrow),
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                  height: 4.0,
                                  color: Colors.grey[400],
                                ),
                                Container(
                                  height: 4.0,
                                  width:
                                      100.0, // Ancho de la línea de reproducción (puede ser variable)
                                  color: Colors.blue,
                                ),
                                const Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: const Text(
                              '0:30', // Duración del audio
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RatingStarBar(
                          color: CustomColors.bird,
                          rating: 4.5,
                          size: 24.0,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Animalia – Chordata – Aves – Anseriformes – Anatidae',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Especie distribuida en América Central y América del Sur, desde Colombia y Venezuela hasta el norte de Argentina y Uruguay, en bosques secundarios, en zonas de matorral denso. Alcanza una longitud de 75 centímetros, siendo los machos más grandes que las hembras. Su cabeza y cuello son de color blanco salpicado en negro. Sus alas son de color negro azulado y el vientre blanquecino. Se caracteriza por la protuberancia que presentan los machos en su pico. Se alimenta de hojas, semillas y pequeños anfibios. Construye su nido en el suelo, entre la vegetación, o en huecos en los árboles. Pone de ocho a dieciseis huevos de color castaño pálido.',
                      style: Theme.of(context).textTheme.bodyMedium!,
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const Spacer(),
                        FilledButton.icon(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(CustomColors.bird),
                          ),
                          icon: const Icon(Icons.keyboard_double_arrow_down),
                          label: const Text('Más información'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
