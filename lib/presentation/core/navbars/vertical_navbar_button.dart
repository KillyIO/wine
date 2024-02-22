import 'package:flutter/material.dart';

class VerticalNavbarButton extends StatelessWidget {
  const VerticalNavbarButton({
    required this.color,
    required this.onPressed,
    required this.title,
    required this.width,
    super.key,
  });

  final Color color;

  final VoidCallback onPressed;

  final String title;

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
