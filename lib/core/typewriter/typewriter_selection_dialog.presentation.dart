import 'package:flutter/material.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class TypewriterSelectionDialog extends StatelessWidget {
  /// @nodoc
  const TypewriterSelectionDialog({
    super.key,
    required this.items,
    this.onInfoPressed,
    required this.onPressed,
    this.selectedItem,
    this.selectedItems,
    required this.title,
  });

  /// @nodoc
  final List<String> items;

  /// @nodoc
  final VoidCallback? onInfoPressed;

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final String? selectedItem;

  /// @nodoc
  final List<String>? selectedItems;

  /// @nodoc
  final String title;

  Color _itemColor(String item) {
    if (selectedItem != null) {
      return selectedItem == item ? pastelYellow : Colors.transparent;
    }
    if (selectedItems != null) {
      return selectedItems!.contains(item) ? pastelYellow : Colors.transparent;
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ColoredBox(
              color: Colors.black,
              child: ListTile(
                tileColor: Colors.black,
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
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, int i) => ColoredBox(
                color: _itemColor(items[i]),
                child: ListTile(
                  title: Text(
                    items[i],
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () => onPressed(items[i]),
                ),
              ),
              itemCount: items.length,
              separatorBuilder: (_, __) => const Divider(
                color: Colors.black,
                height: 0,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
