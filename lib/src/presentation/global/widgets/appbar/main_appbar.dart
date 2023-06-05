import 'package:flutter/material.dart';

//create main appbar

AppBar mainAppBar({
  List<Widget>? actions,
  required bool centerTitle,
  String title = '',
}) {
  return AppBar(
    title: title.isEmpty ? null : Text(title),
    centerTitle: centerTitle,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu),
    ),
    actions: actions,
  );
}
