import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class WINEInfoDialog extends StatelessWidget {
  /// @nodoc
  const WINEInfoDialog({
    Key key,
    @required this.message,
    this.buttonText,
    @required this.onPressed,
  }) : super(key: key);

  /// @nodoc
  final String message;

  /// @nodoc
  final String buttonText;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.0,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Icon(
                Feather.info,
                color: Palettes.info,
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
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              color: Palettes.info,
              width: double.infinity,
              child: FlatButton(
                onPressed: onPressed,
                child: Text(
                  buttonText ?? 'DISMISS',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
