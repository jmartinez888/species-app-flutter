import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/cards/custom_expansion_card.dart';

class FaunaPage extends StatelessWidget {
  const FaunaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fauna'),
        ),
        body: CustomExpansionCard(
          title: "Clasificacion Taxonomica",
          children: [
            ListTile(
              tileColor: Colors.white,
              title: const Text("Reino"),
              subtitle: const Text(
                "Animal",
                textDirection: TextDirection.rtl,
              ),
              onTap: () {},
            ),
            ListTile(
              tileColor: Colors.white,
              title: const Text("Phylum"),
              subtitle: const Text(
                "Chordata",
                textDirection: TextDirection.rtl,
              ),
              onTap: () {},
            )
          ],
        ));
  }
}
