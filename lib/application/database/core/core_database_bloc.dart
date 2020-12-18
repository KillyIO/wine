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
      chapterDraftDeletedFromAccountEVT: (event) async* {
        yield CoreDatabaseState.chapterDraftDeletedFromAccountSTE(
          chapterDraftUID: event.chapterDraftUID,
          seriesDraftUID: event.seriesDraftUID,
        );
      },
      chapterDraftSavedFromAccountEVT: (event) async* {},
      chapterPublishedFromAccountEVT: (event) async* {},
      chapterPublishedFromChapterEVT: (event) async* {},
      resetBlocEVT: (event) async* {
        yield const CoreDatabaseState.initial();
      },
      seriesDraftDeletedFromAccountEVT: (event) async* {},
      seriesDraftSavedFromAccountEVT: (event) async* {},
      seriesPublishedFromAccountEVT: (event) async* {},
      seriesPublishedFromHomeEVT: (event) async* {
        yield CoreDatabaseState.seriesPublishedFromHomeSTE(event.series);
      },
    );
  }
}
