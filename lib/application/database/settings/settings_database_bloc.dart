import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/models/hive/session.dart';

part 'settings_database_bloc.freezed.dart';
part 'settings_database_event.dart';
part 'settings_database_state.dart';

/// @nodoc
@injectable
class SettingsDatabaseBloc
    extends Bloc<SettingsDatabaseEvent, SettingsDatabaseState> {
  /// @nodoc
  SettingsDatabaseBloc(this._localSessionDatabaseFacade)
      : super(SettingsDatabaseState.initial());

  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;

  @override
  Stream<SettingsDatabaseState> mapEventToState(
      SettingsDatabaseEvent event) async* {
    yield* event.map(
      resetBlocEVT: (event) async* {
        yield state.copyWith(
          isUpdating: false,
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      settingsLaunchedEVT: (event) async* {
        var session = Session();

        final failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession()
              ..fold(
                (_) {},
                (success) {
                  if (success is SessionFetchedSCS) {
                    session = success.session;
                  }
                },
              );

        yield state.copyWith(
          session: session,
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      userSignedOutEVT: (event) async* {
        yield state.copyWith(
          isUpdating: true,
          sessionDatabaseFailureOrSuccessOption: none(),
        );

        final failureOrSuccess =
            await _localSessionDatabaseFacade.deleteSession();

        yield state.copyWith(
          isUpdating: false,
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
