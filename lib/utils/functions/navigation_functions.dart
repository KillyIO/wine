import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/auth/auth_dialog/auth_dialog_cubit.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/web/auth_dialog.dart';

/// @nodoc
void handleAuthRedirect(
  BuildContext context, {
  required PageRouteInfo<dynamic> navigateTo,
}) {
  final mediaQuery = MediaQuery.of(context).size;
  final deviceType = getDeviceType(mediaQuery);

  if (deviceType == DeviceScreenType.mobile) {
    context
      ..read<AuthBloc>().add(const AuthEvent.authChanged())
      ..router.root.push(navigateTo);
  } else {
    context
      ..read<AuthBloc>().add(const AuthEvent.authChanged())
      ..router.root.pop<bool>(true);
  }
}

/// @nodoc
Future<void> handleAuthGuardedNavigation(
  BuildContext context, {
  required PageRouteInfo<dynamic> navigateTo,
}) async {
  final mediaQuery = MediaQuery.of(context).size;
  final deviceType = getDeviceType(mediaQuery);
  final state = context.read<AuthBloc>().state;

  await state.maybeMap(
    authenticated: (_) => context.router.root.push(navigateTo),
    orElse: () async {
      if (deviceType != DeviceScreenType.mobile) {
        final result = await showDialog<bool>(
          context: context,
          barrierDismissible: false,
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<AuthDialogCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<LogInBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<SignUpBloc>(),
              ),
            ],
            child: AuthDialog(
              key: const Key('auth_dialog'),
              navigateTo: navigateTo,
            ),
          ),
        );

        if (result != null && result) {
          deviceType != DeviceScreenType.desktop
              ? await context.router.root.navigate(navigateTo)
              : await context.router.root.push(navigateTo);
        }
      } else {
        await context.router.root.push(LogInRoute(navigateTo: navigateTo));
      }
    },
  );
}
