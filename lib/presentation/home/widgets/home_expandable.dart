import 'package:flutter/material.dart';
import 'package:time/time.dart';

/// @nodoc
class HomeExpandable extends StatefulWidget {
  /// @nodoc
  const HomeExpandable({
    Key? key,
    required this.child,
    this.expanded = false,
  }) : super(key: key);

  /// @nodoc
  final Widget child;

  /// @nodoc
  final bool expanded;

  @override
  _HomeExpandableState createState() => _HomeExpandableState();
}

class _HomeExpandableState extends State<HomeExpandable>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    expandController =
        AnimationController(vsync: this, duration: 250.milliseconds);
    animation =
        CurvedAnimation(parent: expandController, curve: Curves.fastOutSlowIn);
    _runExpand();
  }

  @override
  void didUpdateWidget(HomeExpandable oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpand();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  void _runExpand() {
    if (widget.expanded) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axis: Axis.horizontal,
      axisAlignment: 1.0,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
