import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';

part 'new_series_database_event.dart';
part 'new_series_database_state.dart';

part 'new_series_database_bloc.freezed.dart';

@injectable
class NewSeriesDatabaseBloc
    extends Bloc<NewSeriesDatabaseEvent, NewSeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  final Uuid uuid = Uuid();

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
    yield* event.map(
      newSeriesPageLaunched: (event) async* {
        SeriesDraft seriesDraft;

        if (event.seriesDraft != null) {
          seriesDraft = event.seriesDraft;
        } else {
          final Session session = _localSessionDatabaseFacade.getSession();

          seriesDraft = SeriesDraft(
            uid: uuid.v4(),
            authorUid: session.uid,
            title: '',
            copyrights: 'CC BY',
          );
        }

        yield state.copyWith(
          seriesDraft: seriesDraft,
          uid: seriesDraft.uid,
          authorUid: seriesDraft.authorUid,
          title: seriesDraft.title,
          copyrights: seriesDraft.copyrights,
        );
      },
      createSeriesButtonPressed: (event) async* {},
      titleChanged: (event) async* {
        yield state.copyWith(
          title: event.title,
        );
      },
      descriptionChanged: (event) async* {
        yield state.copyWith(
          description: event.description,
        );
      },
      genreSelected: (event) async* {
        yield state.copyWith(
          genre: event.genre,
        );
      },
      genreOptionalSelected: (event) async* {
        yield state.copyWith(
          genreOptional: event.genreOptional,
        );
      },
      languageSelected: (event) async* {
        yield state.copyWith(
          language: event.language,
        );
      },
      copyrightsSelected: (event) async* {
        yield state.copyWith(
          copyrights: event.copyrights,
        );
      },
    );
  }
}
