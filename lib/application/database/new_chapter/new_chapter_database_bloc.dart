import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

part 'new_chapter_database_event.dart';
part 'new_chapter_database_state.dart';

part 'new_chapter_database_bloc.freezed.dart';

@injectable
class NewChapterDatabaseBloc extends Bloc<NewChapterDatabaseEvent, NewChapterDatabaseState> {
  @override
  NewChapterDatabaseState get initialState => NewChapterDatabaseState.initial();

  @override
  Stream<NewChapterDatabaseState> mapEventToState(
    NewChapterDatabaseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
