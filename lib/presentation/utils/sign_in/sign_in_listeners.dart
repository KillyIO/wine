import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/application/database/sign_in/sign_in_database_bloc.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/functions/core/core_functions.dart';
import 'package:wine/presentation/widgets/dialog/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';

/// @nodoc
class SignInListeners {
  /// @nodoc
  SignInListeners(this.context);

  /// @nodoc
  final BuildContext context;

  BlocListener<SignInAuthenticationBloc, SignInAuthenticationState>
      _authListener() =>
          BlocListener<SignInAuthenticationBloc, SignInAuthenticationState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
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
                    invalidEmailAndPasswordCombination: (_) => wineShowDialog(
                      context: context,
                      builder: (_) => WINEErrorDialog(
                        message: 'Incorrect email or password.',
                        onPressed: () async =>
                            ExtendedNavigator.of(context).pop<bool>(true),
                      ),
                    ),
                    orElse: () => null,
                  ),
                  (success) {
                    if (success is UserAuthenticatedSCS) {
                      context
                          .read<SignInDatabaseBloc>()
                          .add(SignInDatabaseEvent.signedInEVT(success.user));
                    }
                  },
                ),
              );
            },
          );

  BlocListener<SignInDatabaseBloc, SignInDatabaseState> _dbListener() =>
      BlocListener<SignInDatabaseBloc, SignInDatabaseState>(
        listener: (context, state) {
          state.sessionDatabaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (_) {},
              (success) {
                if (success is SessionInitializedSCS) {
                  pseudoRestart(context);
                }
              },
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
