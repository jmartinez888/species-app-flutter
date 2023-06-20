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
        leading: Icon(Icons.home_filled),
      ),
      body: ListView(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          Icon(Icons.home_filled),
          Text('ABC'),
          OutlinedButton(onPressed: () {}, child: Text('as')),
          FilledButton(onPressed: () {}, child: Text('data')),
          TextField(
            
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home_filled),
          ),
        ],
      ),
    );
  }
}
