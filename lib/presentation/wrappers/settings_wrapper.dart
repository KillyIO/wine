import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/settings/settings_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class SettingsWrapper extends AutoRouter implements AutoRouteWrapper {
  /// @nodoc
  const SettingsWrapper({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsBloc>()..add(const SettingsEvent.init()),
      child: BlocListener<SettingsBloc, SettingsState>(
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                auth: (f) => f.f.maybeMap(
                  unableToSignOut: (_) async => baseErrorDialog(
                    context,
                    <String>['We were unable to log you out!'],
                  ),
                  serverError: (_) async => baseErrorDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) async => baseErrorDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                  orElse: () {},
                ),
                sessions: (f) => f.f.maybeMap(
                  sessionNotDeleted: (_) async => baseErrorDialog(
                    context,
                    <String>['Session could not be deleted!'],
                  ),
                  sessionNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Session was not found!'],
                  ),
                  orElse: () {},
                ),
                settings: (f) => f.f.maybeMap(
                  settingsNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Settings were not found!'],
                  ),
                  settingsNotInitialized: (_) async => baseErrorDialog(
                    context,
                    <String>['Settings could not be initialized!'],
                  ),
                  orElse: () {},
                ),
                orElse: () {},
              ),
            ),
            none: () {},
          );
        },
        child: this,
      ),
    );
  }
}
