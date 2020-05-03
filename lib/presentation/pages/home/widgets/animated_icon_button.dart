import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

typedef StringCallback = void Function(String);

class AnimatedIconButton extends StatelessWidget {
  final double height;
  final double width;
  final String animation;
  final String filename;
  final StringCallback callback;
  final VoidCallback onPressed;

  const AnimatedIconButton({
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
