import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/widgets/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          CustomIconButtom(
            backgroundColor: CustomColors.bird,
            iconColor: CustomColors.birdContainer,
            icon: Icons.add,
            onPressed: () {},
          )
        ],
      ),
      body: const Center(),
    );
  }
}
