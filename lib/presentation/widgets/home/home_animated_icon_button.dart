import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

/// @nodoc
class HomeAnimatedIconButton extends StatelessWidget {
  /// @nodoc
  const HomeAnimatedIconButton({
    Key key,
    this.height,
    this.width,
    this.animation,
    this.filename,
    this.callback,
    this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final double height;

  /// @nodoc
  final double width;

  /// @nodoc
  final String animation;

  /// @nodoc
  final String filename;

  /// @nodoc
  final void Function(String) callback;

  /// @nodoc
  final VoidCallback onPressed;

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
