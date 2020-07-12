import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';

class SplashAuthenticationMethods {
  Future<void> restartSplash(BuildContext context, String message) async {
    final bool result = await wineShowDialog(
      context: context,
      builder: (_) => WINEErrorDialog(
        message: message,
        buttonText: 'RESTART',
        onPressed: () async => ExtendedNavigator.of(context).pop<bool>(true),
      ),
    );

    if (result) {
      context.bloc<SplashAuthenticationBloc>().add(const SplashAuthenticationEvent.splashLaunchedEVT());
    }
  }
}
