import 'package:flutter/material.dart';

class CustomExpansionCard extends StatelessWidget {
  const CustomExpansionCard(
      {super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(16),
        child: Card(
          color: Colors.orange,
          child: ExpansionTile(title: Text(title), children: children),
        ));

    /*ExpansionTile(
      title: Container(
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(8),
        child: const Text("Expansion Card"),
      ),
      children: const <Widget>[
        ListTile(
          title: Text('Reino'),
          subtitle: Text(
            'Animal',
            textDirection: TextDirection.rtl,
          ),
        ),
        ListTile(
          title: Text('Phylum'),
          subtitle: Text(
            'Chordata',
            textDirection: TexmttDirection.rtl,
          ),
        )
      ],
    );*/
  }
}
