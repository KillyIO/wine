import 'package:flutter/material.dart';

/// @nodoc
class SettingsSwitchListTile extends StatelessWidget {
  /// @nodoc
  const SettingsSwitchListTile({
    Key key,
    this.onChanged,
    this.subtitle,
    this.title,
    this.value,
  }) : super(key: key);

  /// @nodoc
  final bool value;

  /// @nodoc
  final String subtitle;

  /// @nodoc
  final String title;

  /// @nodoc
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      onChanged: onChanged,
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      value: value ?? false,
    );
  }
}
