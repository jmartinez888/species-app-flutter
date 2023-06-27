import 'package:flutter/widgets.dart';
import 'package:species/src/presentation/views/fauna/pages/flora_pages.dart';
import 'package:species/src/presentation/views/flora/pages/fauna_page.dart';
import 'package:species/src/presentation/views/home/pages/home_page.dart';
import 'package:species/src/presentation/routes/routes_config.dart';
import 'package:species/src/presentation/views/login/login_page.dart';
import 'package:species/src/presentation/views/register/register_page.dart';

Map<String, Widget Function(BuildContext context)> get routes {
  return {
    Routes.home: (context) => const HomePage(),
    Routes.fauna: (context) => const FaunaPage(),
    Routes.flora: (context) => const FloraPage(),
    Routes.login: (context) => const LoginPage(),
    Routes.register: (context) => const RegisterPage(),
  };
}
