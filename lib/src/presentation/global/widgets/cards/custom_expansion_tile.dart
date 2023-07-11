import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String? title;
  final Widget? child;
  final Color? background;
  final Color? border;
  const CustomExpansionTile({
    super.key,
    this.title,
    required this.child,
    this.background,
    this.border,
  });

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late CurvedAnimation _easeInAnimation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    _easeInAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _iconTurns = Tween<double>(begin: 0.0, end: 0.5).animate(_easeInAnimation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded && _controller.isDismissed;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          width: 1,
          color: widget.border ?? Colors.transparent,
        ),
      ),
      child: AnimatedBuilder(
        animation: _controller.view,
        builder: (context, child) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.circular(16.0),
                color:
                    widget.background ?? Theme.of(context).colorScheme.primary,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.0),
                  onTap: _toggleExpansion,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.title ?? '',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        RotationTransition(
                          turns: _iconTurns,
                          child: Icon(
                            Icons.expand_more,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ClipRect(
                child: Align(
                  heightFactor: _easeInAnimation.value,
                  child: child,
                ),
              ),
            ],
          );
        },
        child: closed ? null : widget.child,
      ),
    );
  }
}
