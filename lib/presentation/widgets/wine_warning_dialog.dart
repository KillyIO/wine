import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/utils/palettes.dart';

class WINEWarningDialog extends StatelessWidget {
  final String message;
  final String buttonText;
  final VoidCallback onPressed;

  const WINEWarningDialog({
    Key key,
    this.message,
    this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.0,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Icon(
                Feather.alert_triangle,
                color: Palettes.warning,
                size: 50.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25.0,
                left: 20.0,
                right: 20.0,
                top: 10.0,
              ),
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: FlatButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text(
                        'CANCEL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Palettes.warning,
                    child: FlatButton(
                      onPressed: onPressed,
                      child: Text(
                        buttonText ?? 'DISMISS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
