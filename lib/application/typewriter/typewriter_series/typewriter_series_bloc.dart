import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' hide Title;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:stringr/stringr.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';

import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/subtitle.dart';
import 'package:wine/domain/series/summary.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/utils/constants/users.dart';

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
  TypewriterSeriesBloc(
    this._sessionsRepository,
  ) : super(TypewriterSeriesState.initial()) {
    on<AddCoverPressed>((_, emit) {});
    on<GenreAdded>((value, emit) {
      final genre = Genre(value.genre);
      final genres = List<Genre>.from(state.genres)..add(genre);

      emit(state.copyWith(
        failureOption: const None(),
        genres: genres,
      ));
    });
    on<GenreRemoved>((value, emit) {
      final genres = state.genres
        ..removeWhere((g) => g.getOrCrash() == value.genre);

      emit(state.copyWith(
        failureOption: const None(),
        genres: genres,
      ));
    });
    on<IsNSFWChanged>(
      (value, emit) => emit(state.copyWith(
        failureOption: const None(),
        isNSFW: value.isNSFW,
      )),
    );
    on<LanguageSelected>(
      (value, emit) => emit(state.copyWith(
        failureOption: const None(),
        language: Language(value.language),
      )),
    );
    on<LaunchAsNewSeries>((_, emit) async {
      (await _sessionsRepository.fetchSession()).match(
        (user) {
          emit(state.copyWith(
            failureOption: const None(),
            user: user,
          ));
        },
        (failure) {
          emit(state.copyWith(
            failureOption: Option(Err(CoreFailure.sessions(failure))),
          ));
        },
      );
    });
    on<LaunchWithID>((_, emit) {});
    on<SubtitleChanged>((value, emit) {
      final subtitleTrim = value.subtitle.trim();
      final wordCount = subtitleTrim.countWords();

      emit(state.copyWith(
        failureOption: const None(),
        subtitle: Subtitle(subtitleTrim),
        subtitleWordCount: wordCount,
      ));
    });
    on<SummaryChanged>((value, emit) {
      final summaryTrim = value.summary.trim();
      final wordCount = summaryTrim.countWords();

      emit(state.copyWith(
        failureOption: const None(),
        summary: Summary(summaryTrim),
        summaryWordCount: wordCount,
      ));
    });
    on<TitleChanged>((value, emit) {
      final titleTrim = value.title.trim();
      final wordCount = titleTrim.countWords();

      emit(state.copyWith(
        failureOption: const None(),
        title: Title(titleTrim),
        titleWordCount: wordCount,
      ));
    });
  }

  final ISessionsRepository _sessionsRepository;
}
