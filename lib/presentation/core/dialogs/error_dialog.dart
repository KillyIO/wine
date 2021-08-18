import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/palette.dart';

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

  double _getDialogWidth(Size size) {
    final deviceType = getDeviceType(size);
    final refinedSize = getRefinedSize(size);

    switch (deviceType) {
      case DeviceScreenType.desktop:
        if (refinedSize == RefinedSize.small) {
          return size.width * .35;
        }
        return size.width * .2;
      case DeviceScreenType.tablet:
        return size.width * .5;
      default:
        return size.width * .5;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Dialog(
      elevation: 10,
      child: Container(
        color: Colors.white,
        width: _getDialogWidth(mediaQuery),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Icon(
                LineIcons.exclamationCircle,
                color: error,
                size: 75,
              ),
            ),
            const Text(
              "SOMETHING'S WRONG!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 23,
                left: 22.5,
                right: 22.5,
                top: 12,
              ),
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
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.5,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              color: error,
              height: dialogButtonDefaultHeight,
              width: double.infinity,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonText ?? 'DISMISS',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.5,
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
