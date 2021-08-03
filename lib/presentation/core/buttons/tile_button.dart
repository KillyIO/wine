import 'package:flutter/material.dart';

/// @nodoc
class TileButton extends StatelessWidget {
  /// @nodoc
  const TileButton({
    Key? key,
    this.isFirst = false,
    required this.leadingIconData,
    required this.onPressed,
    required this.title,
    required this.trailingIconData,
  }) : super(key: key);

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
    return Container(
      decoration: BoxDecoration(
        border: isFirst
            ? const Border(
                bottom: BorderSide(),
                top: BorderSide(),
              )
            : const Border(
                bottom: BorderSide(),
              ),
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
