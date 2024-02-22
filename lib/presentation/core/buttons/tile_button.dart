import 'package:flutter/material.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

class TileButton extends StatelessWidget {
  const TileButton({
    required this.leadingIconData,
    required this.onPressed,
    required this.title,
    required this.trailingIconData,
    super.key,
    this.isFirst = false,
  });

  final bool isFirst;

  final IconData leadingIconData;

  final IconData trailingIconData;

  final String title;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return DecoratedBox(
      decoration: BoxDecoration(
        border: getTileButtonBorder(mediaQuery, isFirst: isFirst),
      ),
      child: ListTile(
        leading: Icon(
          leadingIconData,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: Icon(
          trailingIconData,
        ),
        onTap: onPressed,
      ),
    );
  }
}
