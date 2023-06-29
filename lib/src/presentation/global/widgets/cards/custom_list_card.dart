import 'package:flutter/material.dart';

class CustomListCard extends StatelessWidget {
  final void Function()? onTap;
  final String? image;
  final String? title;
  final String? subtitle;
  final String? description;
  final List<Widget>? content;
  const CustomListCard({
    super.key,
    this.image,
    this.title,
    this.subtitle,
    this.description,
    required this.onTap,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.outline, width: 1.0),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Material(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    if (image != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          image!,
                          width: 72,
                          height: 72,
                          fit: BoxFit.cover,
                        ),
                      ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (title != null)
                            Text(
                              title!,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            ),
                          if (subtitle != null)
                            Text(
                              subtitle!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                if (description != null)
                  Text(
                    description!,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant),
                    textAlign: TextAlign.end,
                  ),
                if (content != null) const SizedBox(height: 8.0),
                if (content != null)
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 8.8,
                      alignment: WrapAlignment.end,
                      children: content!,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
