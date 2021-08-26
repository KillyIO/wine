import 'package:flutter/material.dart';

/// @nodoc
class VerticalNavbarButton extends StatelessWidget {
  /// @nodoc
  const VerticalNavbarButton({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.title,
    required this.width,
  }) : super(key: key);

  /// @nodoc
  final Color color;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String title;

  /// @nodoc
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: SizedBox(
        width: width,
        child: Align(
          child: Wrap(
            runSpacing: 30,
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: title
                .split('')
                .map(
                  (string) => Text(
                    string,
                    style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
