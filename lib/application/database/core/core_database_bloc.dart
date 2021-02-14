import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/series.dart';

part 'core_database_bloc.freezed.dart';
part 'core_database_event.dart';
part 'core_database_state.dart';

/// @nodoc
@injectable
class CoreDatabaseBloc extends Bloc<CoreDatabaseEvent, CoreDatabaseState> {
  /// @nodoc
  CoreDatabaseBloc() : super(const CoreDatabaseState.initial());

  @override
  Stream<CoreDatabaseState> mapEventToState(CoreDatabaseEvent event) async* {
    yield* event.map(
      chapterDraftDeletedFromLibrary: (event) async* {
        yield CoreDatabaseState.chapterDraftDeletedFromLibrary(
          chapterDraftUID: event.chapterDraftUID,
          seriesDraftUID: event.seriesDraftUID,
        );
      },
      chapterDraftSavedFromLibrary: (event) async* {
        yield CoreDatabaseState.chapterDraftSavedFromLibrary(
          event.chapterDraft,
        );
      },
      chapterPublishedFromChapter: (event) async* {
        yield CoreDatabaseState.chapterPublishedFromChapter(event.chapter);
      },
      chapterPublishedFromLibrary: (event) async* {
        yield CoreDatabaseState.chapterPublishedFromLibrary(event.chapter);
      },
      resetBloc: (event) async* {
        yield const CoreDatabaseState.initial();
      },
      seriesDraftDeletedFromLibrary: (event) async* {
        yield CoreDatabaseState.seriesDraftDeletedFromLibrary(
          event.seriesDraftUID,
        );
      },
      seriesDraftSavedFromLibrary: (event) async* {
        yield CoreDatabaseState.seriesDraftSavedFromLibrary(event.seriesDraft);
      },
      seriesPublishedFromHome: (event) async* {
        yield CoreDatabaseState.seriesPublishedFromHome(event.series);
      },
      seriesPublishedFromLibrary: (event) async* {
        yield CoreDatabaseState.seriesPublishedFromLibrary(event.series);
      },
    );
  }
}
