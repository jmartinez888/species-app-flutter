import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
    this.title,
    this.color,
  });

  final String? title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class SubtitleCard extends StatelessWidget {
  const SubtitleCard({
    super.key,
    this.subtitle,
  });

  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle ?? '',
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
