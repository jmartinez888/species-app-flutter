import 'package:flutter/material.dart';

class CustomScrollableSheet extends StatelessWidget {
  const CustomScrollableSheet({
    super.key,
    this.title = '',
    this.sliverBody = const <Widget>[],
    this.floatingActionButton,
    this.bottomNavBar,
  });

  final String? title;
  final List<Widget>? sliverBody;
  final Widget? bottomNavBar;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      snap: true,
      initialChildSize: 0.5,
      maxChildSize: 1.0,
      minChildSize: 0.25,
      snapSizes: [0.5, 1.0],
      builder: (context, scrollController) {
        return Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 56.0),
                    child: CustomScrollView(
                      controller: scrollController,
                      slivers: sliverBody!,
                    ),
                  ),
                  SizedBox(
                    height: 56.0,
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      title: Text(title!),
                      actions: [
                        IconButton(
                          tooltip: 'Atrás',
                          onPressed: () => Navigator.maybePop(context),
                          icon: const Icon(Icons.close_rounded),
                        ),
                        const SizedBox(width: 8.0),
                      ],
                    ),
                  ),
                  if (floatingActionButton != null)
                    Positioned(
                      bottom: 16.0,
                      right: 16.0,
                      child: FloatingActionButton(onPressed: () {}),
                    ),
                ],
              ),
            ),
            SizedBox(
              child: bottomNavBar,
            ),
          ],
        );
      },
    );
  }
}

/* Container(
              height: 56.0,
              child: AppBar(
                title: Text(title!),
                actions: [
                  IconButton(
                    tooltip: 'Atrás',
                    onPressed: () => Navigator.maybePop(context),
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
            ), */