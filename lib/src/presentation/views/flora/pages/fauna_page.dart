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
        body: Column(
          children: [
            CustomExpansionCard(title: "Hola", children: [
              ListTile(
                title: const Text("Reino"),
                subtitle: const Text(
                  "Animal",
                  textDirection: TextDirection.rtl,
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Reino"),
                subtitle: const Text(
                  "Animal",
                  textDirection: TextDirection.rtl,
                ),
                onTap: () {},
              )
            ])
          ],
        ));
  }
}
