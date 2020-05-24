import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/methods.dart';

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
    yield* event.map(
      seriesPageLaunched: (event) async* {
        yield state.copyWith(
          series: event.series,
          placeholderUrl: event.placeholderUrl,
          username: event.username,
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
        );
      },
      likeButtonPressed: (event) async* {},
      bookmarkButtonPressed: (event) async* {},
      showMoreSummaryButtonPressed: (event) async* {},
    );
  }
}
