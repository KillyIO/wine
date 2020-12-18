import 'package:flutter/material.dart';

/// @nodoc
class WINEDialogListTile extends StatelessWidget {
  /// @nodoc
  const WINEDialogListTile({
    Key key,
    @required this.hasSelected,
    @required this.onPressed,
    @required this.title,
    @required this.trailingText,
  }) : super(key: key);

  /// @nodoc
  final bool hasSelected;

  /// @nodoc
  final VoidCallback onPressed;

  /// @nodoc
  final String title;

  /// @nodoc
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        onTap: onPressed,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        trailing: hasSelected
            ? const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              )
            : SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    trailingText,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
