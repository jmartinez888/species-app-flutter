import 'package:flutter/material.dart';

class FaunaPage extends StatelessWidget {
  const FaunaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fauna'),
      ),
      body: const Center(
        child: Text(
          'Fauna page',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
