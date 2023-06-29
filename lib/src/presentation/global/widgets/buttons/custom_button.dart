import 'package:flutter/material.dart';

Widget customButton({
  required BuildContext context,
  String text = '',
  Function()? func,
  onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(),
    ),
  );
}
