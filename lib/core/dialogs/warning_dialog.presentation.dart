import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/core/buttons/default_button.presentation.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/responsive/dialog_responsive.dart';

/// @nodoc
class WarningDialog extends StatelessWidget {
  /// @nodoc
  const WarningDialog({
    super.key,
    this.buttonText,
    required this.messages,
    required this.onPressed,
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
                LineIcons.exclamationTriangle,
                color: warning,
                size: getDialogIconSize(mediaQuery),
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
            Row(
              children: <Widget>[
                Expanded(
                  child: DefaultButton(
                    color: Colors.black,
                    fontSize: getDialogButtonFontSize(mediaQuery),
                    height: getDialogButtonHeight(mediaQuery),
                    title: 'CANCEL',
                    onPressed: () => context.router.pop(true),
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    color: warning,
                    fontSize: getDialogButtonFontSize(mediaQuery),
                    height: getDialogButtonHeight(mediaQuery),
                    title: buttonText ?? 'DISMISS',
                    onPressed: onPressed,
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
