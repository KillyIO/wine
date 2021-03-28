import 'package:bdd_widget_test/step/i_see_text.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/dialogs/error_dialog.dart';

Future<void> iSeeAnErrorDialog(WidgetTester tester) async {
  await iSeeWidget(tester, ErrorDialog);
  await iSeeText(tester, 'A problem occurred on our end!');
  await iSeeWidget(tester, TextButton);
  await iSeeText(tester, 'RESTART');
}
