import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
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
        primaryColor: secondaryColor,
        buttonTheme: const ButtonThemeData(
          buttonColor: customButtonColor,
          textTheme: ButtonTextTheme.primary,
        ),
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
      ),
      routes: routes,
      initialRoute: Routes.home,
    );
  }
}
