import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/dialog/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';

/// @nodoc
class CreateAccountListeners {
  BlocListener<CreateAccountAuthenticationBloc,
      CreateAccountAuthenticationState> _authListener() => BlocListener<
          CreateAccountAuthenticationBloc, CreateAccountAuthenticationState>(
        listener: (context, state) {
          state.authenticationFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                serverError: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'An unexpected error occured!',
                    onPressed: () async =>
                        ExtendedNavigator.of(context).pop<bool>(true),
                  ),
                ),
                emailAlreadyInUse: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'The email address entered is already in use.',
                    onPressed: () async =>
                        ExtendedNavigator.of(context).pop<bool>(true),
                  ),
                ),
                usernameAlreadyInUse: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'The username entered is already in use.',
                    onPressed: () async =>
                        ExtendedNavigator.of(context).pop<bool>(true),
                  ),
                ),
                orElse: () => null,
              ),
              (success) {
                if (success is UserAuthenticatedSuccess) {
                  context
                      .read<CreateAccountDatabaseBloc>()
                      .add(CreateAccountDatabaseEvent.accountCreatedEVT(
                        success.user,
                      ));
                }
              },
            ),
          );
        },
      );

  BlocListener<CreateAccountDatabaseBloc, CreateAccountDatabaseState>
      _dbListener() =>
          BlocListener<CreateAccountDatabaseBloc, CreateAccountDatabaseState>(
            listener: (context, state) {
              state.sessionDatabaseFailureOrSuccessOption.fold(
                () {},
                (some) => some.fold(
                  (_) {},
                  (_) => ExtendedNavigator.root.pushAndRemoveUntil(
                    Routes.verifyEmailPage,
                    (route) => false,
                  ),
                ),
              );

              state.userDatabaseFailureOrSuccessOption.fold(
                () {},
                (some) => some.fold(
                  (_) {},
                  (_) {},
                ),
              );
            },
          );

  /// @nodoc
  List<BlocListener> get listeners =>
      <BlocListener>[_authListener(), _dbListener()];
}
