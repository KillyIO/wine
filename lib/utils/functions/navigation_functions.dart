import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/auth/auth_dialog/auth_dialog_cubit.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/web/auth_dialog.dart';

/// @nodoc
Future<void> handleAuthGuardedNavigation(
  BuildContext context,
  PageRouteInfo<dynamic> route,
) async {
  final mediaQuery = MediaQuery.of(context).size;
  final deviceType = getDeviceType(mediaQuery);

  if (deviceType != DeviceScreenType.mobile) {
    final state = context.read<AuthBloc>().state;

    await state.maybeMap(
      authenticated: (_) => context.router.root.push(route),
      orElse: () => showDialog<bool>(
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
          child: const AuthDialog(
            key: Key('auth_dialog'),
          ),
        ),
      ),
    );
  } else {
    await context.router.root.push(route);
  }
}
