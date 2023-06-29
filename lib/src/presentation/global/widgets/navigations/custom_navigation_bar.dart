import "package:flutter/material.dart";

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
  });
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        child: NavigationBar(
            selectedIndex: indexPage,
            onDestinationSelected: (int index) {
              setState(() {
                indexPage = index;
              });
            },
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
              NavigationDestination(icon: Icon(Icons.search), label: 'Buscar'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border), label: 'Favoritos'),
              NavigationDestination(icon: Icon(Icons.list), label: 'Listas'),
            ]),
      ),
    );
  }
}
