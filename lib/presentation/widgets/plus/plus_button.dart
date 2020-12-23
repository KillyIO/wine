import 'package:flutter/material.dart';

/// @nodoc
class PlusButton extends StatelessWidget {
  /// @nodoc
  PlusButton({
    Key key,
    this.isFirst = false,
    this.leadingIconData,
    this.onPressed,
    this.title,
    this.trailingIconData,
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
            fontSize: 15.0,
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
