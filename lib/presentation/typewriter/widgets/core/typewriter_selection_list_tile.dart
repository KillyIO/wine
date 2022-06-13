import 'package:flutter/material.dart';

/// @nodoc
class TypewriterSelectionListTile extends StatelessWidget {
  /// @nodoc
  const TypewriterSelectionListTile({
    super.key,
    required this.onPressed,
    this.selectedItem,
    required this.title,
  });

  /// @nodoc
  final String? selectedItem;

  /// @nodoc
  final String title;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return ColoredBox(
      color: Colors.black,
      child: ListTile(
        onTap: onPressed,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: selectedItem != null
            ? SizedBox(
                width: mediaQuery.width * .5,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    selectedItem ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              )
            : const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
      ),
    );
  }
}
