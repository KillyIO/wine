import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';

part 'home_database_event.dart';
part 'home_database_state.dart';

part 'home_database_bloc.freezed.dart';

@injectable
class HomeDatabaseBloc extends Bloc<HomeDatabaseEvent, HomeDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  HomeDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  HomeDatabaseState get initialState => HomeDatabaseState.initial();

  @override
  Stream<HomeDatabaseState> mapEventToState(
    HomeDatabaseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
