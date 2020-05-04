import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/description.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

part 'new_series_database_event.dart';
part 'new_series_database_state.dart';

part 'new_series_database_bloc.freezed.dart';

@injectable
class NewSeriesDatabaseBloc
    extends Bloc<NewSeriesDatabaseEvent, NewSeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  NewSeriesDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  NewSeriesDatabaseState get initialState => NewSeriesDatabaseState.initial();

  @override
  Stream<NewSeriesDatabaseState> mapEventToState(
    NewSeriesDatabaseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
