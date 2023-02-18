import 'package:flutter/material.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

/// @nodoc
class TileButton extends StatelessWidget {
  /// @nodoc
  const TileButton({
    required this.leadingIconData,
    required this.onPressed,
    required this.title,
    required this.trailingIconData,
    super.key,
    this.isFirst = false,
  });

  /// @nodoc
  final bool isFirst;

  /// @nodoc
  final IconData leadingIconData;

  /// @nodoc
  final IconData trailingIconData;

  /// @nodoc
  final String title;

  /// @nodoc
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
