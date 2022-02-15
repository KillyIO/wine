import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_dialog/auth_dialog_cubit.dart';
import 'package:wine/presentation/log_in/log_in_layout.dart';
import 'package:wine/presentation/sign_up/sign_up_layout.dart';
import 'package:wine/utils/responsive/auth_dialog_responsive.dart';

/// @nodoc
class AuthDialog extends StatelessWidget {
  /// @nodoc
  const AuthDialog({
    Key? key,
    required this.navigateTo,
    this.useRoot = true,
  }) : super(key: key);

  /// @nodoc
  final PageRouteInfo<dynamic> navigateTo;

  /// @nodoc
  final bool useRoot;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Dialog(
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: getAuthDialogWidth(mediaQuery),
        child: BlocBuilder<AuthDialogCubit, AuthDialogState>(
          builder: (context, state) {
            return state.maybeMap(
              signUp: (_) => SignUpLayout(
                navigateTo: navigateTo,
                onDialogBackButtonPressed:
                    context.read<AuthDialogCubit>().updateLayout,
                useRoot: useRoot,
              ),
              orElse: () => LogInLayout(
                navigateTo: navigateTo,
                onSignUpButtonPressed:
                    context.read<AuthDialogCubit>().updateLayout,
                useRoot: useRoot,
              ),
            );
          },
        ),
      ),
    );
  }
}
