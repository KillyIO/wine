import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';

import 'package:wine/presentation/core/dialogs/error_dialog.dart';

/// Used when an action requiring a redirection occurs,
/// e.g. LogIn, SignUp, LogOut.
Future<void> redirectDialog(
  BuildContext context,
  String message,
  void Function() onNavigate,
) async {
  final result = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (_) => WillPopScope(
      onWillPop: () async => context.router.canPopSelfOrChildren,
      child: ErrorDialog(
        key: const Key('redirect_dialog'),
        message: message,
        onPressed: () async {
          if (context.router.canPopSelfOrChildren) {
            await context.router.pop<bool>(true);
          }
        },
      ),
    ),
  );

  if (result != null && result) {
    onNavigate();
  }
}

/// @nodoc
Future<void> baseError(BuildContext context, String errorMessage) async {
  await showDialog<bool>(
    context: context,
    builder: (_) => ErrorDialog(
      key: const Key('dismiss_error_dialog'),
      message: errorMessage,
      onPressed: () async {
        if (context.router.canPopSelfOrChildren) {
          await context.router.pop<bool>(true);
        }
      },
    ),
  );
}

/// Tries to restart the app by add initial [SetupBloc] event
Future<void> restartApp(BuildContext context, String errorMessage) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (_) => ErrorDialog(
      key: const Key('setup_error_dialog'),
      message: errorMessage,
      buttonText: 'RESTART',
      onPressed: () async {
        if (context.router.canPopSelfOrChildren) {
          await context.router.pop<bool>(true);
        }
      },
    ),
  );

  if (result != null && result) {
    context.read<SetupBloc>().add(const SetupEvent.appLaunched());
  }
}
