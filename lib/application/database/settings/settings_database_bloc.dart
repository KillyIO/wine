import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/hive/session.dart';

part 'settings_database_event.dart';
part 'settings_database_state.dart';

part 'settings_database_bloc.freezed.dart';

@injectable
class SettingsDatabaseBloc
    extends Bloc<SettingsDatabaseEvent, SettingsDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  SettingsDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  SettingsDatabaseState get initialState => SettingsDatabaseState.initial();

  @override
  Stream<SettingsDatabaseState> mapEventToState(
    SettingsDatabaseEvent event,
  ) async* {
    yield* event.map(
      settingsLaunched: (event) async* {
        final Session session = _localSessionDatabaseFacade.getSession();
        yield state.copyWith(
          session: session,
        );
      },
      userSignedOut: (event) async* {
        yield state.copyWith(
          isUpdating: true,
        );
        final session = Session();
        await _localSessionDatabaseFacade.setSession(session: session);
        yield state.copyWith(
          isUpdating: false,
          isSessionDeleted: true,
        );
      },
      resetSettingsDatabaseBloc: (event) async* {
        yield state.copyWith(
          isUpdating: false,
          isSessionDeleted: false,
        );
      },
    );
  }
}
