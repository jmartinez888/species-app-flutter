import "package:flutter/material.dart";

class CustomNavigationBar extends StatefulWidget {
  // ignore: non_constant_identifier_names
  //final Function Currentindex;
  // ignore: non_constant_identifier_names

  const CustomNavigationBar({
    super.key,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

// ignore: camel_case_types
class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int paginacion = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        child: NavigationBar(
            selectedIndex: paginacion,
            onDestinationSelected: (int index) {
              setState(() {
                paginacion = index;
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
