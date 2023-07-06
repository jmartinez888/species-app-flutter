import 'package:flutter/material.dart';

class CustomExpansionCard extends StatefulWidget {
  final String title;
  final List<Widget> children;

  const CustomExpansionCard({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomExpansionCardState createState() => _CustomExpansionCardState();
}

class _CustomExpansionCardState extends State<CustomExpansionCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: Theme.of(context).colorScheme.secondary, width: 1.0)),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1.0)),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.title.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: widget.children,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
