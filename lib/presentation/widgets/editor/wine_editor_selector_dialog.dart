import 'package:flutter/material.dart';

import 'package:wine/presentation/widgets/wine_dialog_list_tile.dart';
import 'package:wine/presentation/widgets/wine_selection_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class WINEEditorSelectorDialog extends StatelessWidget {
  /// @nodoc
  const WINEEditorSelectorDialog({
    Key key,
    @required this.hasSelected,
    @required this.selections,
    @required this.title,
    @required this.dialogTitle,
    @required this.trailingText,
    @required this.onPressed,
    this.onInfoPressed,
    this.showErrorMessage = false,
    this.errorMessage = 'Required.',
  }) : super(key: key);

  /// @nodoc
  final bool hasSelected;

  /// @nodoc
  final List<String> selections;

  /// @nodoc
  final String title;

  /// @nodoc
  final String dialogTitle;

  /// @nodoc
  final String trailingText;

  /// @nodoc
  final void Function(String) onPressed;

  /// @nodoc
  final void Function() onInfoPressed;

  /// @nodoc
  final bool showErrorMessage;

  /// @nodoc
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WINEDialogListTile(
          hasSelected: hasSelected,
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            wineShowDialog(
              context: context,
              builder: (_) => WINESelectionDialog(
                title: title,
                selections: selections,
                onPressed: onPressed,
                onInfoPressed: onInfoPressed,
              ),
            );
          },
          title: title,
          trailingText: trailingText,
        ),
        if (showErrorMessage) const SizedBox(height: 5),
        if (showErrorMessage)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.5),
              child: Text(
                errorMessage,
                style: const TextStyle(
                  color: Palettes.error,
                  fontSize: 13.0,
                ),
              ),
            ),
          ),
        const SizedBox(height: 25),
      ],
    );
  }
}
