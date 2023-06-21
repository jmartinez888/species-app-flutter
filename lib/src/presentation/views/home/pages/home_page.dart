// Material
import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/icons/custom_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Center());
  }
}
