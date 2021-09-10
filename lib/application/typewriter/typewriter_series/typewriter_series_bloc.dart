import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' hide Title;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:stringr/stringr.dart';

import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/subtitle.dart';
import 'package:wine/domain/series/summary.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';

part 'typewriter_series_bloc.freezed.dart';
part 'typewriter_series_event.dart';
part 'typewriter_series_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TypewriterSeriesBloc
    extends Bloc<TypewriterSeriesEvent, TypewriterSeriesState> {
  /// @nodoc
  TypewriterSeriesBloc(this._sessionsRepository)
      : super(TypewriterSeriesState.initial());

  final ISessionsRepository _sessionsRepository;

  @override
  Stream<TypewriterSeriesState> mapEventToState(
    TypewriterSeriesEvent event,
  ) async* {
    yield* event.map(
      addCoverPressed: (_) async* {},
      genreAdded: (value) async* {
        final genre = Genre(value.genre);
        final genres = List<Genre>.from(state.genres)..add(genre);

        yield state.copyWith(
          failureOption: const None(),
          genres: genres,
        );
      },
      genreRemoved: (value) async* {
        final genres = state.genres
          ..removeWhere((g) => g.getOrCrash() == value.genre);

        yield state.copyWith(
          failureOption: const None(),
          genres: genres,
        );
      },
      isNSFWChanged: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          isNSFW: value.isNSFW,
        );
      },
      languageSelected: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          language: Language(value.language),
        );
      },
      launchAsNewSeries: (_) async* {},
      launchWithID: (value) async* {},
      subtitleChanged: (value) async* {
        final subtitleTrim = value.subtitle.trim();
        final wordCount = subtitleTrim.countWords();

        yield state.copyWith(
          failureOption: const None(),
          subtitle: Subtitle(subtitleTrim),
          subtitleWordCount: wordCount,
        );
      },
      summaryChanged: (value) async* {
        final summaryTrim = value.summary.trim();
        final wordCount = summaryTrim.countWords();

        yield state.copyWith(
          failureOption: const None(),
          summary: Summary(summaryTrim),
          summaryWordCount: wordCount,
        );
      },
      titleChanged: (value) async* {
        final titleTrim = value.title.trim();
        final wordCount = titleTrim.countWords();

        yield state.copyWith(
          failureOption: const None(),
          title: Title(titleTrim),
          titleWordCount: wordCount,
        );
      },
    );
  }
}
