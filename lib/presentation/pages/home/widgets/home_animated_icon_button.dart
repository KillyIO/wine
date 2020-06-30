import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class HomeAnimatedIconButton extends StatelessWidget {
  final double height;
  final double width;
  final String animation;
  final String filename;
  final void Function(String) callback;
  final VoidCallback onPressed;

  const HomeAnimatedIconButton({
    Key key,
    this.height,
    this.width,
    this.animation,
    this.filename,
    this.callback,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: GestureDetector(onTap: onPressed, child: FlareActor(filename, animation: animation, callback: callback)),
    );
  }
}
