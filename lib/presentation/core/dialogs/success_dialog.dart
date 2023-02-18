import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/responsive/dialog_responsive.dart';

/// @nodoc
class SuccessDialog extends StatelessWidget {
  /// @nodoc
  const SuccessDialog({
    required this.messages,
    required this.onPressed,
    super.key,
    this.buttonText,
  });

  /// @nodoc
  final String? buttonText;

  /// @nodoc
  final List<String> messages;

  /// @nodoc
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Dialog(
      elevation: 10,
      child: Container(
        color: Colors.white,
        width: getDialogWidth(mediaQuery),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: getDialogIconPadding(mediaQuery),
              child: Icon(
                LineIcons.checkCircle,
                color: success,
                size: getDialogIconSize(mediaQuery),
              ),
            ),
            Text(
              'SUCCESS!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: getDialogTitleFontSize(mediaQuery),
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: getDialogMessagePadding(mediaQuery),
              child: Column(
                children: <Widget>[
                  for (var i = 0; i < messages.length; i++)
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: i == messages.length - 1 ? 0 : 10,
                      ),
                      child: Text(
                        messages[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getDialogMessageFontSize(mediaQuery),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              color: success,
              height: getDialogButtonHeight(mediaQuery),
              width: double.infinity,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonText ?? 'CONTINUE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getDialogButtonFontSize(mediaQuery),
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
