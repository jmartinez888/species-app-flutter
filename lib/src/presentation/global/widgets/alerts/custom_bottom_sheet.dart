import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    this.title = '',
    this.body = const <Widget>[],
    this.floatingActionButton,
  });

  final String? title;
  final List<Widget>? body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 56.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: floatingActionButton == null ? 16.0 : 88.0,
                ),
                sliver: SliverList.list(
                  children: body!,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 56.0,
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Text(title!),
            actions: [
              IconButton(
                tooltip: 'Cerrar',
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
            child: floatingActionButton!,
          ),
      ],
    );
  }
}
