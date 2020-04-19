import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

typedef StringCallback = void Function(String);

class AnimatedButton extends StatelessWidget {
  final double height;
  final double width;
  final String animation;
  final String filename;
  final StringCallback callback;
  final VoidCallback onPressed;

  AnimatedButton({
    this.animation,
    this.callback,
    this.filename,
    this.height,
    this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: FlareActor(
          filename,
          animation: animation,
          callback: callback,
        ),
        onTap: onPressed,
      ),
      height: height,
      width: width,
    );
  }
}
