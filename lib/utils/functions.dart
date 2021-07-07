import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';

import 'package:wine/presentation/core/dialogs/error_dialog.dart';

/// @nodoc
Future<void> dismissErrorMessage(
  BuildContext context,
  String errorMessage,
) async {
  await showDialog<bool>(
    context: context,
    builder: (_) => ErrorDialog(
      message: 'A problem occurred on our end!',
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
