import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/models/hive/session.dart';

part 'settings_database_event.dart';
part 'settings_database_state.dart';

part 'settings_database_bloc.freezed.dart';

@injectable
class SettingsDatabaseBloc extends Bloc<SettingsDatabaseEvent, SettingsDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;

  SettingsDatabaseBloc(this._localSessionDatabaseFacade) : super(SettingsDatabaseState.initial());

  @override
  Stream<SettingsDatabaseState> mapEventToState(SettingsDatabaseEvent event) async* {
    yield* event.map(
      resetBlocEVT: (event) async* {
        yield state.copyWith(isUpdating: false, databaseFailureOrSuccessOption: none());
      },
      settingsLaunchedEVT: (event) async* {
        Session session = Session();

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SessionFetchedSCS) {
              session = success.session;
            }
          },
        );

        yield state.copyWith(session: session, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      userSignedOutEVT: (event) async* {
        yield state.copyWith(isUpdating: true, databaseFailureOrSuccessOption: none());

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSessionDatabaseFacade.deleteSession();

        yield state.copyWith(isUpdating: false, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
