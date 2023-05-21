import 'package:flutter/widgets.dart';
import 'package:species/src/presentation/modules/fauna/pages/flora_pages.dart';
import 'package:species/src/presentation/modules/flora/pages/fauna_page.dart';
import 'package:species/src/presentation/modules/home/pages/home_page.dart';
import 'package:species/src/presentation/routes/routes_config.dart';

Map<String, Widget Function(BuildContext context)> get routes {
  return {
    Routes.home: (context) => const HomePage(),
    Routes.fauna: (context) => const FaunaPage(),
    Routes.flora: (context) => const FloraPage(),
  };
}
