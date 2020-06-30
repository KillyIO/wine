import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/utils/methods.dart';

class SettingsListeners {
  BlocListener<SettingsAuthenticationBloc, SettingsAuthenticationState> _authListener() =>
      BlocListener<SettingsAuthenticationBloc, SettingsAuthenticationState>(
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
                unableToSignOut: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'We were unable to sign you out. Please retry later.',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                orElse: () => null,
              ),
              (success) {
                if (success is UserSignedOutSCS) {
                  context.bloc<SettingsDatabaseBloc>().add(const SettingsDatabaseEvent.userSignedOutEVT());
                }
              },
            ),
          );
        },
      );

  BlocListener<SettingsDatabaseBloc, SettingsDatabaseState> _dbListener() =>
      BlocListener<SettingsDatabaseBloc, SettingsDatabaseState>(
        listener: (context, state) {
          state.databaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                failedToDeleteLocalData: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message: 'Failed to clear data on your device! Please retry.',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                orElse: () => null,
              ),
              (success) {
                if (success is SessionDeletedSCS) {
                  Methods.pseudoRestart(context);
                }
              },
            ),
          );
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_authListener(), _dbListener()];
}
