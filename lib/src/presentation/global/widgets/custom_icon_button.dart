import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({
    super.key,
    this.backgroundColor = CustomColors.whiteOpacity,
    required this.icon,
    this.iconColor,
    required this.onPressed,
  });

  final Color? backgroundColor;
  final IconData icon;
  final Color? iconColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration:
              BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
