import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_dialog/auth_dialog_cubit.dart';
import 'package:wine/presentation/log_in/log_in_layout.dart';
import 'package:wine/presentation/sign_up/sign_up_layout.dart';
import 'package:wine/utils/responsive/auth_dialog_responsive.dart';

/// @nodoc
class AuthDialog extends StatelessWidget {
  /// @nodoc
  const AuthDialog({Key? key}) : super(key: key);

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
        height: 750,
        width: getAuthDialogWidth(mediaQuery),
        child: BlocBuilder<AuthDialogCubit, AuthDialogState>(
          builder: (context, state) {
            return state.maybeMap(
              signUp: (_) => SignUpLayout(
                onWebBackButtonPressed:
                    context.read<AuthDialogCubit>().updateLayout,
              ),
              orElse: () => LogInLayout(
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
