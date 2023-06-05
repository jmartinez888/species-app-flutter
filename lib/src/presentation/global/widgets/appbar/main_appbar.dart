import 'package:flutter/material.dart';

//create main appbar

AppBar mainAppBar({
  List<Widget>? actions,
  required bool centerTitle,
  String title = '',
  TabBar? tabBar,
}) {
  return AppBar(
    title: title.isEmpty ? null : Text(title),
    centerTitle: centerTitle,
    actions: actions,
    bottom: tabBar,
  );
}
