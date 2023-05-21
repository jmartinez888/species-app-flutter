import 'package:flutter/material.dart';

class FloraPage extends StatelessWidget {
  const FloraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flora'),
      ),
      body: const Center(
        child: Text('Flora'),
      ),
    );
  }
}
