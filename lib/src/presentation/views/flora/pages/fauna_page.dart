import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/alerts/custom_bottom_sheet.dart';

class FaunaPage extends StatelessWidget {
  const FaunaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fauna'),
        ),
        body: const Column(children: [CustomBottomSheet()]));
  }
}
