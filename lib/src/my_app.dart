import 'package:flutter/material.dart';
import 'package:species/src/presentation/routes/routes.dart';
import 'package:species/src/presentation/routes/routes_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: routes,
      initialRoute: Routes.home,
    );
  }
}
