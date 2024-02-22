import 'package:flutter/material.dart';

class TypewriterSwitchListTile extends StatelessWidget {
  const TypewriterSwitchListTile({
    required this.title,
    required this.onInfoPressed,
    required this.value,
    required this.onChanged,
    super.key,
  });

  final String title;

  final VoidCallback onInfoPressed;

  final bool value;

  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ColoredBox(
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
