import 'package:flutter/material.dart';

class CustomGridCard extends StatelessWidget {
  const CustomGridCard({
    Key? key,
    required this.onTap,
    this.title,
    this.subtitle,
    this.actions = const <Widget>[],
    this.backgroundColor,
    this.borderColor,
    this.titleColor,
    required this.image,
  }) : super(key: key);

  final Widget image;
  final String? title;
  final Color? titleColor;
  final String? subtitle;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? borderColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? Theme.of(context).colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        side: BorderSide(
          color: borderColor ?? Theme.of(context).colorScheme.outline,
          width: 1.0,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(
                minHeight: 128.0,
                maxHeight: 512.0,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: titleColor ??
                                Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  if (actions != null) const SizedBox(height: 8.0),
                  if (actions != null)
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        runSpacing: 8.0,
                        spacing: 8.0,
                        alignment: WrapAlignment.end,
                        children: actions!,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
