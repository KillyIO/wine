import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/copyrights.dart';
import 'package:wine/domain/database/description.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/subtitle.dart';
import 'package:wine/domain/database/title.dart';
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
          );
        }

        yield state.copyWith(
          seriesDraft: seriesDraft,
        );
      },
      createSeriesButtonPressed: (event) async* {
        // yield state.copyWith(
        //   isSaving: true,
        //   isSaved: false,
        // );

        // final SeriesDraft seriesDraft = state.seriesDraft;

        // seriesDraft
        //   ..title = state.title
        //   ..description = state.description
        //   ..genre = state.genre
        //   ..genreOptional = state.genreOptional
        //   ..language = state.language
        //   ..copyrights = state.copyrights;

        // await _localSessionDatabaseFacade.saveSeriesDraft(seriesDraft);

        // yield state.copyWith(
        //   seriesDraft: seriesDraft,
        //   isSaving: false,
        //   isSaved: true,
        // );
      },
      titleChanged: (event) async* {
        yield state.copyWith(
          title: Title(event.title),
        );
      },
      subtitleChanged: (event) async* {
        yield state.copyWith(
          subtitle: Subtitle(event.subtitle),
        );
      },
      descriptionChanged: (event) async* {
        yield state.copyWith(
          description: Description(event.description),
        );
      },
      genreSelected: (event) async* {
        yield state.copyWith(
          genre: Genre(event.genre),
          genreStr: event.genre,
        );
      },
      genreOptionalSelected: (event) async* {
        yield state.copyWith(
          genreOptional: Genre(event.genreOptional),
          genreOptionalStr: event.genreOptional,
        );
      },
      languageSelected: (event) async* {
        yield state.copyWith(
          language: Language(event.language),
          languageStr: event.language,
        );
      },
      copyrightsSelected: (event) async* {
        yield state.copyWith(
          copyrights: Copyrights(event.copyrights),
          copyrightsStr: event.copyrights,
        );
      },
    );
  }
}
