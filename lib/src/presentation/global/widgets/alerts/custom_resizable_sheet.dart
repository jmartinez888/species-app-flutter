import 'package:flutter/material.dart';

class CustomResizableSheet extends StatefulWidget {
  const CustomResizableSheet({
    super.key,
    this.title = '',
    this.initialChildSize,
    required this.controller,
    required this.closeModalFirst,
    this.resetModal,
    this.sliverBody = const <Widget>[],
  });

  final String? title;
  final double? initialChildSize;
  final DraggableScrollableController controller;
  final bool closeModalFirst;
  final void Function()? resetModal;
  final List<Widget> sliverBody;

  @override
  State<CustomResizableSheet> createState() => _CustomResizableSheetState();
}

class _CustomResizableSheetState extends State<CustomResizableSheet> {
  @override
  Widget build(BuildContext context) {
    final double currentChildSize = widget.initialChildSize ?? 0.5;

    return DraggableScrollableSheet(
      expand: false,
      snap: true,
      initialChildSize: currentChildSize,
      maxChildSize: 1,
      minChildSize: currentChildSize / 2,
      snapSizes: [currentChildSize, 1],
      controller: widget.controller,
      builder: (context, scrollController) {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 56.0,
              ),
              child: CustomScrollView(
                slivers: widget.sliverBody,
              ),
            ),
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              controller: scrollController,
              child: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: Text(widget.title!),
                actions: [
                  IconButton(
                    tooltip: 'Cerrar',
                    onPressed: widget.closeModalFirst
                        ? widget.resetModal
                        : () => Navigator.maybePop(context),
                    icon: const Icon(Icons.close_rounded),
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}