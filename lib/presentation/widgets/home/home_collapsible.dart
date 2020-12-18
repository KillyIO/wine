import 'package:flutter/material.dart';
import 'package:time/time.dart';

/// @nodoc
class HomeCollapsible extends StatefulWidget {
  /// @nodoc
  const HomeCollapsible({Key key, this.child, this.collapse}) : super(key: key);

  /// @nodoc
  final Widget child;

  /// @nodoc
  final bool collapse;

  @override
  _HomeCollapsibleState createState() => _HomeCollapsibleState();
}

class _HomeCollapsibleState extends State<HomeCollapsible>
    with SingleTickerProviderStateMixin {
  AnimationController expandController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _prepareAnimations();
    _runExpandCheck();
  }

  void _prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: 250.milliseconds);
    animation =
        CurvedAnimation(parent: expandController, curve: Curves.fastOutSlowIn);
  }

  void _runExpandCheck() {
    if (widget.collapse) {
      expandController.reverse();
    } else {
      expandController.forward();
    }
  }

  @override
  void didUpdateWidget(HomeCollapsible oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation,
      axis: Axis.horizontal,
      child: widget.child,
    );
  }
}
