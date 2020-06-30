import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';

class VerifyEmailListeners {
  BlocListener<CreateAccountAuthenticationBloc, CreateAccountAuthenticationState> _authListener() =>
      BlocListener<CreateAccountAuthenticationBloc, CreateAccountAuthenticationState>(
        listener: (context, state) {
          state.authenticationFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                serverError: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'An unexpected error occured!',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                orElse: () => null,
              ),
              (success) => success.maybeMap(
                verificationEmailSentSCS: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEInfoDialog(
                    message: 'A new verification email has been sent to your email address.',
                    buttonText: 'GOT IT!',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                orElse: () => null,
              ),
            ),
          );
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_authListener()];
}
