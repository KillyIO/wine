import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wine/application/auth/auth_dialog/auth_dialog_cubit.dart';
import 'package:wine/presentation/log_in/log_in_layout.dart';
import 'package:wine/presentation/sign_up/sign_up_layout.dart';

/// @nodoc
class AuthDialog extends StatelessWidget {
  /// @nodoc
  const AuthDialog({Key? key}) : super(key: key);

  double _getDialogWidth(Size size) {
    final deviceType = getDeviceType(size);
    final refinedSize = getRefinedSize(size);

    debugPrint('====== deviceType: $deviceType ======');
    debugPrint('====== refinedSize: $refinedSize ======');

    switch (deviceType) {
      case DeviceScreenType.desktop:
        if (refinedSize == RefinedSize.small) {
          return size.width * .35;
        }
        return size.width * .2;
      case DeviceScreenType.tablet:
        if (refinedSize == RefinedSize.large) {
          return size.width * .75;
        }
        return size.width * .5;
      default:
        return size.width * .5;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Dialog(
      elevation: 10,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        width: _getDialogWidth(mediaQuery),
        child: BlocBuilder<AuthDialogCubit, AuthDialogState>(
          builder: (context, state) {
            return state.maybeMap(
              signUp: (_) => const SignUpLayout(),
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
