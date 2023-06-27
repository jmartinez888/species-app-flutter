import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/icons/custom_icons.dart';
import 'package:species/src/presentation/global/widgets/cards/custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: const CircleAvatar(
              child: Text('A'),
            ),
            title: Text('Name', style: Theme.of(context).textTheme.titleLarge),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(16.0),
              children: [
                const TitleForListDrawer(text: 'Especies', paddingTop: 0.0),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    CustomIcons.bird,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  background: Theme.of(context).colorScheme.primaryContainer,
                  title: 'Especies',
                  titleColor: Theme.of(context).colorScheme.primary,
                ),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.code_rounded,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: 'Especies',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const TitleForListDrawer(text: 'Mapas'),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: 'Visor',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.map_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: 'Mapas',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const TitleForListDrawer(text: 'Más información'),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.dataset_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: 'Datos biológicos',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.science_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: 'Recursos científicos',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.biotech_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: 'Especialistas',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.question_mark_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: '¿Cómo depositar?',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const TitleForListDrawer(text: 'Desarrolladores'),
                CustomListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.groups_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: 'Staff',
                  titleColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TitleForListDrawer extends StatelessWidget {
  final String text;
  final double paddingTop;
  const TitleForListDrawer(
      {super.key, required this.text, this.paddingTop = 16.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0, top: paddingTop),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary)),
      ),
    );
  }
}
