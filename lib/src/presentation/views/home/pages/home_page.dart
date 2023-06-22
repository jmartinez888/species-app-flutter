// Material
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Tab> tabs = [
      Tab(text: 'Tab 1'),
      Tab(text: 'Tab 2'),
      Tab(text: 'Tab 3'),
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Center());
  }
}
