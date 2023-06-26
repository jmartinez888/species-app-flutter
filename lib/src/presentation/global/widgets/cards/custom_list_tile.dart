import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final void Function()? onTap;
  final Color? background;
  final Widget? leading;
  final String? title;
  final Color? titleColor;
  final Widget? trailing;

  const CustomListTile({
    Key? key,
    this.onTap,
    this.background,
    this.leading,
    this.title,
    this.titleColor,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100.0),
      color: background,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SizedBox(child: leading),
              if (leading != null) const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: titleColor),
                ),
              ),
              if (trailing != null) const SizedBox(width: 8.0),
              SizedBox(child: trailing),
            ],
          ),
        ),
      ),
    );
  }
}
