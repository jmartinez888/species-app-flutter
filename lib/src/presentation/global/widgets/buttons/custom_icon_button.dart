import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({
    super.key,
    this.backgroundColor = CustomColors.whiteOpacity,
    required this.icon,
    this.iconColor,
    required this.onPressed,
    this.tooltip,
  });

  final Color? backgroundColor;
  final String? tooltip;
  final IconData icon;
  final Color? iconColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: IconButton(
        tooltip: tooltip,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
