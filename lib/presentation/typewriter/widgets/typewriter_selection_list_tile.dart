import 'package:flutter/material.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_selection_dialog.dart';

/// @nodoc
class TypewriterSelectionListTile extends StatelessWidget {
  /// @nodoc
  const TypewriterSelectionListTile({
    Key? key,
    required this.items,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final List<String> items;

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        onTap: () => showDialog<void>(
          context: context,
          builder: (_) => TypewriterSelectionDialog(
            items: items,
            onPressed: onPressed,
            title: title,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
