import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

/// @nodoc
class AnimatedButton extends StatelessWidget {
  /// @nodoc
  const AnimatedButton({
    required this.animation,
    required this.filename,
    super.key,
    this.callback,
    this.height = 20.0,
    this.onPressed,
    this.width = 20.0,
  });

  /// @nodoc
  final String animation;

  /// @nodoc
  final void Function(String)? callback;

  /// @nodoc
  final String filename;

  /// @nodoc
  final double height;

  /// @nodoc
  final VoidCallback? onPressed;

  /// @nodoc
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
