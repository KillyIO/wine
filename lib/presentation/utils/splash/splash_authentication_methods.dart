import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/presentation/widgets/dialog/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';

/// @nodoc
class SplashAuthenticationMethods {
  /// @nodoc
  Future<void> restartSplash(BuildContext context, String message) async {
    final result = await wineShowDialog(
      context: context,
      builder: (_) => WINEErrorDialog(
        message: message,
        buttonText: 'RESTART',
        onPressed: () async => ExtendedNavigator.of(context).pop<bool>(true),
      ),
    );

    if (result) {
      context
          .read<SplashAuthenticationBloc>()
          .add(const SplashAuthenticationEvent.splashLaunchedEVT());
    }
  }
}
