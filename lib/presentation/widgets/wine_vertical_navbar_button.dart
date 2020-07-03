import 'package:flutter/material.dart';

class WINEVerticalNavbarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;
  final double width;

  const WINEVerticalNavbarButton({
    Key key,
    @required this.onPressed,
    @required this.title,
    @required this.color,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: SizedBox(
        width: width,
        child: Align(
          alignment: Alignment.center,
          child: Wrap(
            runSpacing: 30,
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: title
                .split("")
                .map((string) => Text(string, style: TextStyle(color: color, fontWeight: FontWeight.w500)))
                .toList(),
          ),
        ),
      ),
    );
  }
}
