import 'package:flutter/widgets.dart';
import 'package:species/src/presentation/views/fauna/pages/flora_pages.dart';
import 'package:species/src/presentation/views/flora/pages/fauna_page.dart';
import 'package:species/src/presentation/views/home/pages/home_page.dart';
import 'package:species/src/presentation/routes/routes_config.dart';

Map<String, Widget Function(BuildContext context)> get routes {
  return {
    Routes.home: (context) => HomePage(),
    Routes.fauna: (context) => const FaunaPage(),
    Routes.flora: (context) => const FloraPage(),
  };
}
