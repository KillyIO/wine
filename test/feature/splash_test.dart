// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/im_not_logged_in.dart';
import './step/the_app_is_running.dart';
import './step/i_see_an_error_dialog.dart';

void main() {
  group('Splash', () {
    testWidgets('An ErrorDialog is presented in case of failure', (tester) async {
      await imNotLoggedIn(tester);
      await theAppIsRunning(tester);
      await iSeeAnErrorDialog(tester);
    });
  });
}
