import 'package:flutter/material.dart';

/// @nodoc
class TypewriterSwitchListTile extends StatelessWidget {
  /// @nodoc
  const TypewriterSwitchListTile({
    Key? key,
    required this.title,
    required this.onInfoPressed,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  /// @nodoc
  final String title;

  /// @nodoc
  final VoidCallback onInfoPressed;

  /// @nodoc
  final bool value;

  /// @nodoc
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        color: Colors.black,
        child: ListTile(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: onInfoPressed,
              ),
            ],
          ),
          trailing: Switch(
            value: value,
            onChanged: onChanged,
            inactiveTrackColor: Colors.grey[700],
            inactiveThumbColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
