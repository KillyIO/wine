import 'package:flutter/material.dart';

import 'package:wine/presentation/widgets/wine_dialog_list_tile.dart';
import 'package:wine/presentation/widgets/wine_selection_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/utils/palettes.dart';

class WINEEditorSelectorDialog extends StatelessWidget {
  final bool hasSelected;
  final Map<String, String> selections;
  final String title;
  final String dialogTitle;
  final String trailingText;
  final void Function(String) onPressed;
  final void Function() onInfoPressed;
  final bool showErrorMessage;
  final String errorMessage;

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
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(errorMessage, style: TextStyle(color: Palettes.error, fontSize: 13.0)),
          ),
        const SizedBox(height: 25),
      ],
    );
  }
}
