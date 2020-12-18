import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

/// @nodoc
class WINESwitchListTile extends StatelessWidget {
  /// @nodoc
  const WINESwitchListTile({
    Key key,
    @required this.title,
    @required this.onInfoPressed,
    @required this.value,
    @required this.onChanged,
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
    return Container(
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
                Feather.info,
                color: Colors.white,
                size: 20.0,
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
    );
  }
}
