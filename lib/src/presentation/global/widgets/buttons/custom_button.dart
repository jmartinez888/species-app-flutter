import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';

Widget customButton({
  required BuildContext context,
  String text = '',
  Function()? func,
  onPressed,
  // Color buttonColor = buttonColor,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      // backgroundColor: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: whiteColor,
      ),
    ),
  );
}
