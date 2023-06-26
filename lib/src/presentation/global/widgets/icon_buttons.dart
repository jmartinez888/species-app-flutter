import 'package:flutter/material.dart';

class PreferenciesButtons extends StatelessWidget {
  const PreferenciesButtons({
    super.key,
    this.color,
    this.iconColor,
  });

  final Color? color;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.playlist_add_rounded,
              color: iconColor,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              color: iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
