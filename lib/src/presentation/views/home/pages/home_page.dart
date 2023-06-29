import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/buttons/custom_button.dart';
import 'package:species/src/presentation/global/widgets/navigations/custom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Container(
          child: const Center(
            child: Text('Home Page'),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar());
  }
}
