import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/character.dart';
import 'package:wine/domain/database/copyright.dart';
import 'package:wine/domain/database/description.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/database/language.dart';
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
        String uid;
        String authorUid;

        if (event.seriesDraft != null) {
          uid = event.seriesDraft.uid;
          authorUid = event.seriesDraft.authorUid;
        } else {
          final Session session = _localSessionDatabaseFacade.getSession();

          authorUid = session.uid;
          uid = uuid.v4();
        }

        yield state.copyWith(
          uid: uid,
          authorUid: authorUid,
        );
      },
      continueButtonPressed: (event) async* {},
      titleChanged: (event) async* {
        yield state.copyWith(
          title: Title(event.title),
        );
      },
      descriptionChanged: (event) async* {
        yield state.copyWith(
          description: Description(event.description),
        );
      },
      characterChanged: (event) async* {
        yield state.copyWith(
          character: Character(event.name.trim()),
        );
      },
      addCharacterButtonPressed: (event) async* {
        final bool isCharacterValid = state.character.isValid();

        if (isCharacterValid) {
          final String characterStr = state.character.getOrCrash();

          final List<String> charactersList = state.characters;
          charactersList.add(characterStr);

          yield state.copyWith(
            character: Character(''),
            characters: charactersList,
          );
        }
      },
      removeCharacterButtonPressed: (event) async* {
        List<String> charactersList = state.characters;
        charactersList.removeAt(event.index);

        if (charactersList.isEmpty) {
          charactersList = <String>[];
        }

        yield state.copyWith(
          characters: charactersList,
        );
      },
      genreSelected: (event) async* {
        yield state.copyWith(
          genre: Genre(event.genre),
          selectedGenre: event.genre,
        );
      },
      languageSelected: (event) async* {
        yield state.copyWith(
          language: Language(event.language),
          selectedLanguage: event.language,
        );
      },
      copyrightSelected: (event) async* {
        yield state.copyWith(
          copyright: Copyright(event.copyright),
          selectedCopyright: event.copyright,
        );
      },
    );
  }
}
