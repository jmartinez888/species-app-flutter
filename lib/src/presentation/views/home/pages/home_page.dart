import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/widgets/navigations/custom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: MaterialButton(
            color: CustomColors.birdContainer,
            onPressed: () {
              Navigator.pushNamed(context, '/species-detail');
            },
            child: const Text('Species Details Page'),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar());
  }
}
