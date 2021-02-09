import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
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
      chapterDraftDeletedFromLibraryEvent: (event) async* {
        yield CoreDatabaseState.chapterDraftDeletedFromLibraryState(
          chapterDraftUID: event.chapterDraftUID,
          seriesDraftUID: event.seriesDraftUID,
        );
      },
      chapterDraftSavedFromLibraryEvent: (event) async* {
        yield CoreDatabaseState.chapterDraftSavedFromLibraryState(
          event.chapterDraft,
        );
      },
      chapterPublishedFromChapterEvent: (event) async* {
        yield CoreDatabaseState.chapterPublishedFromChapterState(event.chapter);
      },
      chapterPublishedFromLibraryEvent: (event) async* {
        yield CoreDatabaseState.chapterPublishedFromLibraryState(event.chapter);
      },
      resetBlocEvent: (event) async* {
        yield const CoreDatabaseState.initial();
      },
      seriesDraftDeletedFromLibraryEvent: (event) async* {
        yield CoreDatabaseState.seriesDraftDeletedFromLibraryState(
          event.seriesDraftUID,
        );
      },
      seriesDraftSavedFromLibraryEvent: (event) async* {
        yield CoreDatabaseState.seriesDraftSavedFromLibraryState(
          event.seriesDraft,
        );
      },
      seriesPublishedFromHomeEvent: (event) async* {
        yield CoreDatabaseState.seriesPublishedFromHomeState(event.series);
      },
      seriesPublishedFromLibraryEvent: (event) async* {
        yield CoreDatabaseState.seriesPublishedFromLibraryState(event.series);
      },
    );
  }
}
