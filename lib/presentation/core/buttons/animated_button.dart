import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    required this.animation,
    required this.filename,
    super.key,
    this.callback,
    this.height = 20.0,
    this.onPressed,
    this.width = 20.0,
  });

  final String animation;

  final void Function(String)? callback;

  final String filename;

  final double height;

  final VoidCallback? onPressed;

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onPressed,
        child: FlareActor(
          filename,
          animation: animation,
          callback: callback,
        ),
      ),
    );
  }
}
