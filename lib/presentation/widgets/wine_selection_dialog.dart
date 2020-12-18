import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

/// @nodoc
class WINESelectionDialog extends StatelessWidget {
  /// @nodoc
  const WINESelectionDialog({
    Key key,
    @required this.title,
    @required this.selections,
    @required this.onPressed,
    this.onInfoPressed,
  }) : super(key: key);

  /// @nodoc
  final String title;

  /// @nodoc
  final List<String> selections;

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final VoidCallback onInfoPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.0,
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black26),
                ),
              ),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (onInfoPressed != null)
                    IconButton(
                      icon: const Icon(Feather.info, color: Colors.black),
                      onPressed: onInfoPressed,
                    ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    for (String item in selections) ...[
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black12),
                          ),
                        ),
                        child: ListTile(
                          onTap: () => onPressed(item),
                          title: Text(
                            item,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
