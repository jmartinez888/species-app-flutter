import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  final String? title;
  final bool? deployable;
  final double? minSize;
  final Widget? body;
  final Widget? floating;
  final Widget? bottomBar;
  const CustomBottomSheet({
    super.key,
    this.title,
    this.deployable = false,
    this.minSize = 256,
    this.body,
    this.floating,
    this.bottomBar,
  });
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleSheetSize() {
    setState(() {
      _isExpanded = !_isExpanded;
    });

    if (_isExpanded) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: _isExpanded ? MediaQuery.of(context).size.height : widget.minSize,
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: Text(widget.title ?? ''),
            actions: [
              if (widget.deployable == true)
                IconButton(
                  tooltip: _isExpanded ? 'Plegar' : 'Desplegar',
                  onPressed: _toggleSheetSize,
                  icon: Icon(_isExpanded
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up),
                ),
              if (widget.deployable == true) const SizedBox(width: 8.0),
              IconButton(
                tooltip: 'Cerrar',
                onPressed: () => Navigator.maybePop(context),
                icon: const Icon(Icons.close_rounded),
              ),
              const SizedBox(width: 8),
            ],
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: widget.floating,
                ),
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: widget.body,
                ),
              ],
            ),
          ),
          SizedBox(child: widget.bottomBar),
        ],
      ),
    );
  }
}
