import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/presentation/widgets/dialog/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';

/// @nodoc
class VerifyEmailListeners {
  BlocListener<CreateAccountAuthenticationBloc,
      CreateAccountAuthenticationState> _authListener() => BlocListener<
          CreateAccountAuthenticationBloc, CreateAccountAuthenticationState>(
        listener: (context, state) {
          state.authenticationFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                serverFailure: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'An unexpected error occured!',
                    onPressed: () async =>
                        ExtendedNavigator.of(context).pop<bool>(true),
                  ),
                ),
                orElse: () => null,
              ),
              (success) => success.maybeMap(
                verificationEmailSentSCS: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEInfoDialog(
                    message:
                        // ignore: lines_longer_than_80_chars
                        'A new verification email has been sent to your email address.',
                    buttonText: 'GOT IT!',
                    onPressed: () async =>
                        ExtendedNavigator.of(context).pop<bool>(true),
                  ),
                ),
                orElse: () => null,
              ),
            ),
          );
        },
      );

  /// @nodoc
  List<BlocListener> get listeners => <BlocListener>[_authListener()];
}
