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
  bool useRoot = true,
}) {
  final mediaQuery = MediaQuery.of(context).size;
  final deviceType = getDeviceType(mediaQuery);

  // We do something for monile just in case...
  if (deviceType == DeviceScreenType.mobile) {
    if (useRoot) {
      context
        ..read<AuthBloc>().add(const AuthEvent.authChanged())
        ..router.root.replace(navigateTo);
    } else {
      context
        ..read<AuthBloc>().add(const AuthEvent.authChanged())
        ..router.replace(navigateTo);
    }
  } else {
    if (useRoot) {
      context
        ..read<AuthBloc>().add(const AuthEvent.authChanged())
        ..router.root.pop<bool>(true);
    } else {
      context
        ..read<AuthBloc>().add(const AuthEvent.authChanged())
        ..router.pop<bool>(true);
    }
  }
}

/// @nodoc
Future<void> handleAuthGuardedNavigation(
  BuildContext context, {
  required PageRouteInfo<dynamic> navigateTo,
  bool useRoot = true,
}) async {
  final mediaQuery = MediaQuery.of(context).size;
  final deviceType = getDeviceType(mediaQuery);
  final state = context.read<AuthBloc>().state;

  await state.maybeMap(
    authenticated: (_) => useRoot
        ? context.router.root.push(navigateTo)
        : context.router.push(navigateTo),
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
              useRoot: useRoot,
            ),
          ),
        );

        if (result != null && result) {
          if (deviceType != DeviceScreenType.desktop) {
            if (useRoot) {
              await context.router.root.navigate(navigateTo);
            } else {
              await context.router.navigate(navigateTo);
            }
          } else {
            if (useRoot) {
              await context.router.root.push(navigateTo);
            } else {
              await context.router.push(navigateTo);
            }
          }
        }
      } else {
        if (useRoot) {
          await context.router.root.push(LogInRoute(navigateTo: navigateTo));
        } else {
          await context.router.push(LogInRoute(navigateTo: navigateTo));
        }
      }
    },
  );
}
