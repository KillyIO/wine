import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';

import 'package:wine/presentation/core/dialogs/error_dialog.dart';
import 'package:wine/presentation/core/dialogs/success_dialog.dart';

/// Used when an action requiring a redirection occurs,
/// e.g. LogIn, SignUp, LogOut.
Future<void> redirectDialog(
  BuildContext context,
  List<String> messages,
  void Function() onNavigate,
) async {
  bool? result = false;

  final timer = Timer(const Duration(seconds: 4), () {
    context.router.pop<bool>(true);

    result = true;
  });

  result = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: false,
    builder: (_) => SuccessDialog(
      key: const Key('redirect_success_dialog'),
      messages: messages,
      onPressed: () async {
        timer.cancel();

        await context.router.pop<bool>(true);
      },
    ),
  );

  if (result != null && result!) {
    onNavigate();
  }
}

/// @nodoc
Future<void> baseErrorDialog(
  BuildContext context,
  List<String> errorMessages, {
  String? buttonText,
}) async {
  await showDialog<bool>(
    context: context,
    useRootNavigator: false,
    builder: (_) => ErrorDialog(
      key: const Key('dismiss_error_dialog'),
      buttonText: buttonText,
      messages: errorMessages,
      onPressed: () async {
        await context.router.pop<bool>(true);
      },
    ),
  );
}

/// Tries to restart the app by add initial [SetupBloc] event
Future<void> restartAppDialog(
  BuildContext context,
  List<String> errorMessages,
) async {
  final result = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: false,
    builder: (_) => ErrorDialog(
      key: const Key('setup_error_dialog'),
      messages: errorMessages,
      buttonText: 'RESTART',
      onPressed: () async {
        await context.router.pop<bool>(true);
      },
    ),
  );

  if (result != null && result) {
    // ignore: use_build_context_synchronously
    context.read<SetupBloc>().add(const SetupEvent.appLaunched());
  }
}
