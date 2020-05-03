import 'package:flutter/material.dart';

Future<T> customShowDialog<T>({
  @required BuildContext context,
  bool barrierDismissible = true,
  WidgetBuilder builder,
}) {
  assert(debugCheckHasMaterialLocalizations(context));
  final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
  return showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      final Widget pageChild = Builder(builder: builder);
      return SafeArea(
        child: Builder(builder: (BuildContext context) {
          return theme != null
              ? Theme(data: theme, child: pageChild)
              : pageChild;
        }),
      );
    },
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    // KEY PART TO MODIFY, Flutter doesn't allow a transparent Color,
    // values under opacity .01 are considered transparent and will throw an error.
    // But this value is transparent enough.
    barrierColor: Colors.black.withOpacity(0.1),

    // you can modify the default FadeTransition duration here.
    transitionDuration: const Duration(milliseconds: 250),
  );
}
