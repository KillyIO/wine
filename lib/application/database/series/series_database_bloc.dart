import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

part 'series_database_event.dart';
part 'series_database_state.dart';

part 'series_database_bloc.freezed.dart';

@injectable
class SeriesDatabaseBloc
    extends Bloc<SeriesDatabaseEvent, SeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  SeriesDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  SeriesDatabaseState get initialState => SeriesDatabaseState.initial();

  @override
  Stream<SeriesDatabaseState> mapEventToState(
    SeriesDatabaseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
