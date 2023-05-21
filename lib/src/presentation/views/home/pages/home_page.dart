// Material
import 'package:flutter/material.dart';
// Colors
import 'package:species/src/presentation/global/colors/colors.dart';
// Widgets
import 'package:species/src/presentation/global/widgets/buttons/custom_button.dart';
// Routes
import 'package:species/src/presentation/routes/routes_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: primaryColor,
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
              customButton(
                context: context,
                text: 'Flora',
                buttonColor: secondaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.fauna);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
