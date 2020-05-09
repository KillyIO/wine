import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

part 'new_chapter_database_event.dart';
part 'new_chapter_database_state.dart';

part 'new_chapter_database_bloc.freezed.dart';

@injectable
class NewChapterDatabaseBloc
    extends Bloc<NewChapterDatabaseEvent, NewChapterDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  final Uuid uuid = Uuid();
  final StringProcessor tps = StringProcessor();

  NewChapterDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  NewChapterDatabaseState get initialState => NewChapterDatabaseState.initial();

  @override
  Stream<NewChapterDatabaseState> mapEventToState(
    NewChapterDatabaseEvent event,
  ) async* {
    yield* event.map(
      newChapterPageLaunched: (event) async* {},
      titleChanged: (event) async* {},
      contentChanged: (event) async* {},
      publishButtonPressed: (event) async* {},
      saveButtonPressed: (event) async* {},
    );
  }
}
