import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/responsive/dialog_responsive.dart';

/// @nodoc
class ErrorDialog extends StatelessWidget {
  /// @nodoc
  const ErrorDialog({
    Key? key,
    this.buttonText,
    required this.messages,
    required this.onPressed,
  }) : super(key: key);

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
                LineIcons.exclamationCircle,
                color: error,
                size: getDialogIconSize(mediaQuery),
              ),
            ),
            Text(
              "SOMETHING'S WRONG!",
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
              color: error,
              height: getDialogButtonHeight(mediaQuery),
              width: double.infinity,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonText ?? 'OK',
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
