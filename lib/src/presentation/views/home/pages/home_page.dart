// Material
import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/widgets/appbar/main_appbar.dart';
// Colors
// Widgets
// Routes

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(
        centerTitle: false,
        title: 'Home',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Home page',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              MaterialButton(onPressed: () {}, child: const Text('data')),
              ElevatedButton(onPressed: () {}, child: const Text('data'))
            ],
          ),
        ),
      ),
    );
  }
}
