import 'package:flutter/material.dart';

import '../../../global/widgets/cards/custom_expansion_tile.dart';

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
            CustomExpansionTile(
              title:
                  'Holasdadasdasdassdasdasdasdasfdsfasdfsdfasdfsadgdsgsdgsagsdgsdgsd',
              color: Theme.of(context).colorScheme.secondary,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    const ListTile(
                  title: Text('data'),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.grey,
                ),
                itemCount: 5,
              ),
            ),
          ],
        ));
  }
}
