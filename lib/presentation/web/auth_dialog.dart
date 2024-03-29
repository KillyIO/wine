import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/dialog/auth_dialog_cubit.dart';
import 'package:wine/presentation/log_in/log_in_layout.dart';
import 'package:wine/presentation/sign_up/sign_up_layout.dart';
import 'package:wine/utils/responsive/auth_dialog_responsive.dart';

class AuthDialog extends StatelessWidget {
  const AuthDialog({
    required this.navigateTo,
    super.key,
  });

  final PageRouteInfo<dynamic> navigateTo;

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
              ),
              orElse: () => LogInLayout(
                navigateTo: navigateTo,
                onSignUpButtonPressed:
                    context.read<AuthDialogCubit>().updateLayout,
              ),
            );
          },
        ),
      ),
    );
  }
}
