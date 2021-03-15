import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/presentation/core/dialogs/error_dialog.dart';

Future<void> restartApp(BuildContext context, String errorMessage) async {
  final result = await showDialog(
    context: context,
    builder: (_) => ErrorDialog(
      message: errorMessage,
      buttonText: 'RESTART',
      onPressed: () async => ExtendedNavigator.of(context).pop<bool>(true),
    ),
  );

  if (result) {
    context.read<SplashBloc>().add(const SplashEvent.splashPageLaunched());
  }
}
