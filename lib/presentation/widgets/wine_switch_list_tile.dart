import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:wine/presentation/widgets/wine_switch.dart';
import 'package:wine/utils/palettes.dart';

class WINESwitchListTile extends StatelessWidget {
  final String title;
  final VoidCallback onInfoPressed;
  final bool value;
  final ValueChanged<bool> onChanged;

  const WINESwitchListTile({
    Key key,
    this.title,
    this.onInfoPressed,
    this.value,
    this.onChanged,
  }) : super(key: key);

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
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            IconButton(
              icon: Icon(
                Feather.info,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed: onInfoPressed,
            ),
          ],
        ),
        trailing: WINESwitch(
          value: value,
          onChanged: onChanged,
          activeColor: Palettes.pastelBlue,
        ),
      ),
    );
  }
}
