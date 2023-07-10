import 'package:flutter/material.dart';

void customShowModalSheet(
  BuildContext context, {
  required Widget child,
  final isScrollControlled = false,
}) =>
    showModalBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      useSafeArea: true,
      isScrollControlled: isScrollControlled,
      builder: (context) {
        return child;
      },
    );
