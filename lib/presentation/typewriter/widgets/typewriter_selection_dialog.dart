import 'package:flutter/material.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class TypewriterSelectionDialog extends StatelessWidget {
  /// @nodoc
  const TypewriterSelectionDialog({
    Key? key,
    required this.items,
    this.onInfoPressed,
    required this.onPressed,
    required this.selectedItems,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final List<String> items;

  /// @nodoc
  final VoidCallback? onInfoPressed;

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final List<String> selectedItems;

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Dialog(
      elevation: 10,
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        height: mediaQuery.height * 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.black,
              child: ListTile(
                title: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: onInfoPressed != null
                    ? IconButton(
                        icon: const Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        onPressed: onInfoPressed,
                      )
                    : null,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, int index) => Container(
                  color: selectedItems.contains(items[index])
                      ? pastelYellow
                      : Colors.transparent,
                  child: ListTile(
                    title: Text(
                      items[index],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () => onPressed(items[index]),
                  ),
                ),
                itemCount: items.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
