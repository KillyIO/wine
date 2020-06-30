import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class CreateAccountListeners {
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
                emailAlreadyInUse: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'The email address entered is already in use.',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                usernameAlreadyInUse: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'The username entered is already in use.',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                orElse: () => null,
              ),
              (success) {
                if (success is UserAuthenticatedSCS) {
                  context
                      .bloc<CreateAccountDatabaseBloc>()
                      .add(CreateAccountDatabaseEvent.accountCreatedEVT(success.user));
                }
              },
            ),
          );
        },
      );

  BlocListener<CreateAccountDatabaseBloc, CreateAccountDatabaseState> _dbListener() =>
      BlocListener<CreateAccountDatabaseBloc, CreateAccountDatabaseState>(
        listener: (context, state) {
          state.databaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => wineShowDialog(
                context: context,
                builder: (_) => WINEErrorDialog(
                  message: 'An unexpected error occured!',
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ),
              (_) => sailor.navigate(
                Constants.verifyEmailRoute,
                navigationType: NavigationType.pushAndRemoveUntil,
                removeUntilPredicate: (_) => false,
              ),
            ),
          );
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_authListener(), _dbListener()];
}
