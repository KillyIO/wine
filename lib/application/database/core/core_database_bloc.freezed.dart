// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreDatabaseEventTearOff {
  const _$CoreDatabaseEventTearOff();

// ignore: unused_element
  ChapterDraftDeletedFromLibraryEvent chapterDraftDeletedFromLibraryEvent(
      {String chapterDraftUID, String seriesDraftUID}) {
    return ChapterDraftDeletedFromLibraryEvent(
      chapterDraftUID: chapterDraftUID,
      seriesDraftUID: seriesDraftUID,
    );
  }

// ignore: unused_element
  ChapterDraftSavedFromLibraryEvent chapterDraftSavedFromLibraryEvent(
      Chapter chapterDraft) {
    return ChapterDraftSavedFromLibraryEvent(
      chapterDraft,
    );
  }

// ignore: unused_element
  ChapterPublishedFromChapterEvent chapterPublishedFromChapterEvent(
      Chapter chapter) {
    return ChapterPublishedFromChapterEvent(
      chapter,
    );
  }

// ignore: unused_element
  ChapterPublishedFromLibraryEvent chapterPublishedFromLibraryEvent(
      Chapter chapter) {
    return ChapterPublishedFromLibraryEvent(
      chapter,
    );
  }

// ignore: unused_element
  ResetBlocEvent resetBlocEvent() {
    return const ResetBlocEvent();
  }

// ignore: unused_element
  SeriesDraftDeletedFromLibraryEvent seriesDraftDeletedFromLibraryEvent(
      String seriesDraftUID) {
    return SeriesDraftDeletedFromLibraryEvent(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  SeriesDraftSavedFromLibraryEvent seriesDraftSavedFromLibraryEvent(
      Series seriesDraft) {
    return SeriesDraftSavedFromLibraryEvent(
      seriesDraft,
    );
  }

// ignore: unused_element
  SeriesPublishedFromHomeEvent seriesPublishedFromHomeEvent(Series series) {
    return SeriesPublishedFromHomeEvent(
      series,
    );
  }

// ignore: unused_element
  SeriesPublishedFromLibraryEvent seriesPublishedFromLibraryEvent(
      Series series) {
    return SeriesPublishedFromLibraryEvent(
      series,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreDatabaseEvent = _$CoreDatabaseEventTearOff();

/// @nodoc
mixin _$CoreDatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreDatabaseEventCopyWith<$Res> {
  factory $CoreDatabaseEventCopyWith(
          CoreDatabaseEvent value, $Res Function(CoreDatabaseEvent) then) =
      _$CoreDatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $CoreDatabaseEventCopyWith<$Res> {
  _$CoreDatabaseEventCopyWithImpl(this._value, this._then);

  final CoreDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(CoreDatabaseEvent) _then;
}

/// @nodoc
abstract class $ChapterDraftDeletedFromLibraryEventCopyWith<$Res> {
  factory $ChapterDraftDeletedFromLibraryEventCopyWith(
          ChapterDraftDeletedFromLibraryEvent value,
          $Res Function(ChapterDraftDeletedFromLibraryEvent) then) =
      _$ChapterDraftDeletedFromLibraryEventCopyWithImpl<$Res>;
  $Res call({String chapterDraftUID, String seriesDraftUID});
}

/// @nodoc
class _$ChapterDraftDeletedFromLibraryEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftDeletedFromLibraryEventCopyWith<$Res> {
  _$ChapterDraftDeletedFromLibraryEventCopyWithImpl(
      ChapterDraftDeletedFromLibraryEvent _value,
      $Res Function(ChapterDraftDeletedFromLibraryEvent) _then)
      : super(_value, (v) => _then(v as ChapterDraftDeletedFromLibraryEvent));

  @override
  ChapterDraftDeletedFromLibraryEvent get _value =>
      super._value as ChapterDraftDeletedFromLibraryEvent;

  @override
  $Res call({
    Object chapterDraftUID = freezed,
    Object seriesDraftUID = freezed,
  }) {
    return _then(ChapterDraftDeletedFromLibraryEvent(
      chapterDraftUID: chapterDraftUID == freezed
          ? _value.chapterDraftUID
          : chapterDraftUID as String,
      seriesDraftUID: seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$ChapterDraftDeletedFromLibraryEvent
    implements ChapterDraftDeletedFromLibraryEvent {
  const _$ChapterDraftDeletedFromLibraryEvent(
      {this.chapterDraftUID, this.seriesDraftUID});

  @override
  final String chapterDraftUID;
  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterDraftDeletedFromLibraryEvent(chapterDraftUID: $chapterDraftUID, seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftDeletedFromLibraryEvent &&
            (identical(other.chapterDraftUID, chapterDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraftUID, chapterDraftUID)) &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chapterDraftUID) ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  $ChapterDraftDeletedFromLibraryEventCopyWith<
          ChapterDraftDeletedFromLibraryEvent>
      get copyWith => _$ChapterDraftDeletedFromLibraryEventCopyWithImpl<
          ChapterDraftDeletedFromLibraryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterDraftDeletedFromLibraryEvent(chapterDraftUID, seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibraryEvent != null) {
      return chapterDraftDeletedFromLibraryEvent(
          chapterDraftUID, seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterDraftDeletedFromLibraryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibraryEvent != null) {
      return chapterDraftDeletedFromLibraryEvent(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftDeletedFromLibraryEvent
    implements CoreDatabaseEvent {
  const factory ChapterDraftDeletedFromLibraryEvent(
      {String chapterDraftUID,
      String seriesDraftUID}) = _$ChapterDraftDeletedFromLibraryEvent;

  String get chapterDraftUID;
  String get seriesDraftUID;
  $ChapterDraftDeletedFromLibraryEventCopyWith<
      ChapterDraftDeletedFromLibraryEvent> get copyWith;
}

/// @nodoc
abstract class $ChapterDraftSavedFromLibraryEventCopyWith<$Res> {
  factory $ChapterDraftSavedFromLibraryEventCopyWith(
          ChapterDraftSavedFromLibraryEvent value,
          $Res Function(ChapterDraftSavedFromLibraryEvent) then) =
      _$ChapterDraftSavedFromLibraryEventCopyWithImpl<$Res>;
  $Res call({Chapter chapterDraft});
}

/// @nodoc
class _$ChapterDraftSavedFromLibraryEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftSavedFromLibraryEventCopyWith<$Res> {
  _$ChapterDraftSavedFromLibraryEventCopyWithImpl(
      ChapterDraftSavedFromLibraryEvent _value,
      $Res Function(ChapterDraftSavedFromLibraryEvent) _then)
      : super(_value, (v) => _then(v as ChapterDraftSavedFromLibraryEvent));

  @override
  ChapterDraftSavedFromLibraryEvent get _value =>
      super._value as ChapterDraftSavedFromLibraryEvent;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(ChapterDraftSavedFromLibraryEvent(
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterDraftSavedFromLibraryEvent
    implements ChapterDraftSavedFromLibraryEvent {
  const _$ChapterDraftSavedFromLibraryEvent(this.chapterDraft)
      : assert(chapterDraft != null);

  @override
  final Chapter chapterDraft;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterDraftSavedFromLibraryEvent(chapterDraft: $chapterDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftSavedFromLibraryEvent &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  $ChapterDraftSavedFromLibraryEventCopyWith<ChapterDraftSavedFromLibraryEvent>
      get copyWith => _$ChapterDraftSavedFromLibraryEventCopyWithImpl<
          ChapterDraftSavedFromLibraryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterDraftSavedFromLibraryEvent(chapterDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibraryEvent != null) {
      return chapterDraftSavedFromLibraryEvent(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterDraftSavedFromLibraryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibraryEvent != null) {
      return chapterDraftSavedFromLibraryEvent(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftSavedFromLibraryEvent implements CoreDatabaseEvent {
  const factory ChapterDraftSavedFromLibraryEvent(Chapter chapterDraft) =
      _$ChapterDraftSavedFromLibraryEvent;

  Chapter get chapterDraft;
  $ChapterDraftSavedFromLibraryEventCopyWith<ChapterDraftSavedFromLibraryEvent>
      get copyWith;
}

/// @nodoc
abstract class $ChapterPublishedFromChapterEventCopyWith<$Res> {
  factory $ChapterPublishedFromChapterEventCopyWith(
          ChapterPublishedFromChapterEvent value,
          $Res Function(ChapterPublishedFromChapterEvent) then) =
      _$ChapterPublishedFromChapterEventCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class _$ChapterPublishedFromChapterEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedFromChapterEventCopyWith<$Res> {
  _$ChapterPublishedFromChapterEventCopyWithImpl(
      ChapterPublishedFromChapterEvent _value,
      $Res Function(ChapterPublishedFromChapterEvent) _then)
      : super(_value, (v) => _then(v as ChapterPublishedFromChapterEvent));

  @override
  ChapterPublishedFromChapterEvent get _value =>
      super._value as ChapterPublishedFromChapterEvent;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterPublishedFromChapterEvent(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterPublishedFromChapterEvent
    implements ChapterPublishedFromChapterEvent {
  const _$ChapterPublishedFromChapterEvent(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterPublishedFromChapterEvent(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPublishedFromChapterEvent &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterPublishedFromChapterEventCopyWith<ChapterPublishedFromChapterEvent>
      get copyWith => _$ChapterPublishedFromChapterEventCopyWithImpl<
          ChapterPublishedFromChapterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterPublishedFromChapterEvent(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterEvent != null) {
      return chapterPublishedFromChapterEvent(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterPublishedFromChapterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterEvent != null) {
      return chapterPublishedFromChapterEvent(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedFromChapterEvent implements CoreDatabaseEvent {
  const factory ChapterPublishedFromChapterEvent(Chapter chapter) =
      _$ChapterPublishedFromChapterEvent;

  Chapter get chapter;
  $ChapterPublishedFromChapterEventCopyWith<ChapterPublishedFromChapterEvent>
      get copyWith;
}

/// @nodoc
abstract class $ChapterPublishedFromLibraryEventCopyWith<$Res> {
  factory $ChapterPublishedFromLibraryEventCopyWith(
          ChapterPublishedFromLibraryEvent value,
          $Res Function(ChapterPublishedFromLibraryEvent) then) =
      _$ChapterPublishedFromLibraryEventCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class _$ChapterPublishedFromLibraryEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedFromLibraryEventCopyWith<$Res> {
  _$ChapterPublishedFromLibraryEventCopyWithImpl(
      ChapterPublishedFromLibraryEvent _value,
      $Res Function(ChapterPublishedFromLibraryEvent) _then)
      : super(_value, (v) => _then(v as ChapterPublishedFromLibraryEvent));

  @override
  ChapterPublishedFromLibraryEvent get _value =>
      super._value as ChapterPublishedFromLibraryEvent;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterPublishedFromLibraryEvent(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterPublishedFromLibraryEvent
    implements ChapterPublishedFromLibraryEvent {
  const _$ChapterPublishedFromLibraryEvent(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterPublishedFromLibraryEvent(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPublishedFromLibraryEvent &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterPublishedFromLibraryEventCopyWith<ChapterPublishedFromLibraryEvent>
      get copyWith => _$ChapterPublishedFromLibraryEventCopyWithImpl<
          ChapterPublishedFromLibraryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterPublishedFromLibraryEvent(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibraryEvent != null) {
      return chapterPublishedFromLibraryEvent(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return chapterPublishedFromLibraryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibraryEvent != null) {
      return chapterPublishedFromLibraryEvent(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedFromLibraryEvent implements CoreDatabaseEvent {
  const factory ChapterPublishedFromLibraryEvent(Chapter chapter) =
      _$ChapterPublishedFromLibraryEvent;

  Chapter get chapter;
  $ChapterPublishedFromLibraryEventCopyWith<ChapterPublishedFromLibraryEvent>
      get copyWith;
}

/// @nodoc
abstract class $ResetBlocEventCopyWith<$Res> {
  factory $ResetBlocEventCopyWith(
          ResetBlocEvent value, $Res Function(ResetBlocEvent) then) =
      _$ResetBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetBlocEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ResetBlocEventCopyWith<$Res> {
  _$ResetBlocEventCopyWithImpl(
      ResetBlocEvent _value, $Res Function(ResetBlocEvent) _then)
      : super(_value, (v) => _then(v as ResetBlocEvent));

  @override
  ResetBlocEvent get _value => super._value as ResetBlocEvent;
}

/// @nodoc
class _$ResetBlocEvent implements ResetBlocEvent {
  const _$ResetBlocEvent();

  @override
  String toString() {
    return 'CoreDatabaseEvent.resetBlocEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return resetBlocEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEvent != null) {
      return resetBlocEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return resetBlocEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEvent != null) {
      return resetBlocEvent(this);
    }
    return orElse();
  }
}

abstract class ResetBlocEvent implements CoreDatabaseEvent {
  const factory ResetBlocEvent() = _$ResetBlocEvent;
}

/// @nodoc
abstract class $SeriesDraftDeletedFromLibraryEventCopyWith<$Res> {
  factory $SeriesDraftDeletedFromLibraryEventCopyWith(
          SeriesDraftDeletedFromLibraryEvent value,
          $Res Function(SeriesDraftDeletedFromLibraryEvent) then) =
      _$SeriesDraftDeletedFromLibraryEventCopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class _$SeriesDraftDeletedFromLibraryEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftDeletedFromLibraryEventCopyWith<$Res> {
  _$SeriesDraftDeletedFromLibraryEventCopyWithImpl(
      SeriesDraftDeletedFromLibraryEvent _value,
      $Res Function(SeriesDraftDeletedFromLibraryEvent) _then)
      : super(_value, (v) => _then(v as SeriesDraftDeletedFromLibraryEvent));

  @override
  SeriesDraftDeletedFromLibraryEvent get _value =>
      super._value as SeriesDraftDeletedFromLibraryEvent;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(SeriesDraftDeletedFromLibraryEvent(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$SeriesDraftDeletedFromLibraryEvent
    implements SeriesDraftDeletedFromLibraryEvent {
  const _$SeriesDraftDeletedFromLibraryEvent(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesDraftDeletedFromLibraryEvent(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftDeletedFromLibraryEvent &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  $SeriesDraftDeletedFromLibraryEventCopyWith<
          SeriesDraftDeletedFromLibraryEvent>
      get copyWith => _$SeriesDraftDeletedFromLibraryEventCopyWithImpl<
          SeriesDraftDeletedFromLibraryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesDraftDeletedFromLibraryEvent(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibraryEvent != null) {
      return seriesDraftDeletedFromLibraryEvent(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesDraftDeletedFromLibraryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibraryEvent != null) {
      return seriesDraftDeletedFromLibraryEvent(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftDeletedFromLibraryEvent implements CoreDatabaseEvent {
  const factory SeriesDraftDeletedFromLibraryEvent(String seriesDraftUID) =
      _$SeriesDraftDeletedFromLibraryEvent;

  String get seriesDraftUID;
  $SeriesDraftDeletedFromLibraryEventCopyWith<
      SeriesDraftDeletedFromLibraryEvent> get copyWith;
}

/// @nodoc
abstract class $SeriesDraftSavedFromLibraryEventCopyWith<$Res> {
  factory $SeriesDraftSavedFromLibraryEventCopyWith(
          SeriesDraftSavedFromLibraryEvent value,
          $Res Function(SeriesDraftSavedFromLibraryEvent) then) =
      _$SeriesDraftSavedFromLibraryEventCopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class _$SeriesDraftSavedFromLibraryEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftSavedFromLibraryEventCopyWith<$Res> {
  _$SeriesDraftSavedFromLibraryEventCopyWithImpl(
      SeriesDraftSavedFromLibraryEvent _value,
      $Res Function(SeriesDraftSavedFromLibraryEvent) _then)
      : super(_value, (v) => _then(v as SeriesDraftSavedFromLibraryEvent));

  @override
  SeriesDraftSavedFromLibraryEvent get _value =>
      super._value as SeriesDraftSavedFromLibraryEvent;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(SeriesDraftSavedFromLibraryEvent(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$SeriesDraftSavedFromLibraryEvent
    implements SeriesDraftSavedFromLibraryEvent {
  const _$SeriesDraftSavedFromLibraryEvent(this.seriesDraft)
      : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesDraftSavedFromLibraryEvent(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftSavedFromLibraryEvent &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  $SeriesDraftSavedFromLibraryEventCopyWith<SeriesDraftSavedFromLibraryEvent>
      get copyWith => _$SeriesDraftSavedFromLibraryEventCopyWithImpl<
          SeriesDraftSavedFromLibraryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesDraftSavedFromLibraryEvent(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibraryEvent != null) {
      return seriesDraftSavedFromLibraryEvent(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesDraftSavedFromLibraryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibraryEvent != null) {
      return seriesDraftSavedFromLibraryEvent(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftSavedFromLibraryEvent implements CoreDatabaseEvent {
  const factory SeriesDraftSavedFromLibraryEvent(Series seriesDraft) =
      _$SeriesDraftSavedFromLibraryEvent;

  Series get seriesDraft;
  $SeriesDraftSavedFromLibraryEventCopyWith<SeriesDraftSavedFromLibraryEvent>
      get copyWith;
}

/// @nodoc
abstract class $SeriesPublishedFromHomeEventCopyWith<$Res> {
  factory $SeriesPublishedFromHomeEventCopyWith(
          SeriesPublishedFromHomeEvent value,
          $Res Function(SeriesPublishedFromHomeEvent) then) =
      _$SeriesPublishedFromHomeEventCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class _$SeriesPublishedFromHomeEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedFromHomeEventCopyWith<$Res> {
  _$SeriesPublishedFromHomeEventCopyWithImpl(
      SeriesPublishedFromHomeEvent _value,
      $Res Function(SeriesPublishedFromHomeEvent) _then)
      : super(_value, (v) => _then(v as SeriesPublishedFromHomeEvent));

  @override
  SeriesPublishedFromHomeEvent get _value =>
      super._value as SeriesPublishedFromHomeEvent;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(SeriesPublishedFromHomeEvent(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$SeriesPublishedFromHomeEvent implements SeriesPublishedFromHomeEvent {
  const _$SeriesPublishedFromHomeEvent(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesPublishedFromHomeEvent(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedFromHomeEvent &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  $SeriesPublishedFromHomeEventCopyWith<SeriesPublishedFromHomeEvent>
      get copyWith => _$SeriesPublishedFromHomeEventCopyWithImpl<
          SeriesPublishedFromHomeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesPublishedFromHomeEvent(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeEvent != null) {
      return seriesPublishedFromHomeEvent(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesPublishedFromHomeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeEvent != null) {
      return seriesPublishedFromHomeEvent(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedFromHomeEvent implements CoreDatabaseEvent {
  const factory SeriesPublishedFromHomeEvent(Series series) =
      _$SeriesPublishedFromHomeEvent;

  Series get series;
  $SeriesPublishedFromHomeEventCopyWith<SeriesPublishedFromHomeEvent>
      get copyWith;
}

/// @nodoc
abstract class $SeriesPublishedFromLibraryEventCopyWith<$Res> {
  factory $SeriesPublishedFromLibraryEventCopyWith(
          SeriesPublishedFromLibraryEvent value,
          $Res Function(SeriesPublishedFromLibraryEvent) then) =
      _$SeriesPublishedFromLibraryEventCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class _$SeriesPublishedFromLibraryEventCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedFromLibraryEventCopyWith<$Res> {
  _$SeriesPublishedFromLibraryEventCopyWithImpl(
      SeriesPublishedFromLibraryEvent _value,
      $Res Function(SeriesPublishedFromLibraryEvent) _then)
      : super(_value, (v) => _then(v as SeriesPublishedFromLibraryEvent));

  @override
  SeriesPublishedFromLibraryEvent get _value =>
      super._value as SeriesPublishedFromLibraryEvent;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(SeriesPublishedFromLibraryEvent(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$SeriesPublishedFromLibraryEvent
    implements SeriesPublishedFromLibraryEvent {
  const _$SeriesPublishedFromLibraryEvent(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesPublishedFromLibraryEvent(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedFromLibraryEvent &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  $SeriesPublishedFromLibraryEventCopyWith<SeriesPublishedFromLibraryEvent>
      get copyWith => _$SeriesPublishedFromLibraryEventCopyWithImpl<
          SeriesPublishedFromLibraryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterEvent(Chapter chapter),
    @required TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    @required TResult resetBlocEvent(),
    @required TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    @required TResult seriesPublishedFromHomeEvent(Series series),
    @required TResult seriesPublishedFromLibraryEvent(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesPublishedFromLibraryEvent(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEvent(Chapter chapterDraft),
    TResult chapterPublishedFromChapterEvent(Chapter chapter),
    TResult chapterPublishedFromLibraryEvent(Chapter chapter),
    TResult resetBlocEvent(),
    TResult seriesDraftDeletedFromLibraryEvent(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEvent(Series seriesDraft),
    TResult seriesPublishedFromHomeEvent(Series series),
    TResult seriesPublishedFromLibraryEvent(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibraryEvent != null) {
      return seriesPublishedFromLibraryEvent(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEvent(
            ChapterDraftDeletedFromLibraryEvent value),
    @required
        TResult chapterDraftSavedFromLibraryEvent(
            ChapterDraftSavedFromLibraryEvent value),
    @required
        TResult chapterPublishedFromChapterEvent(
            ChapterPublishedFromChapterEvent value),
    @required
        TResult chapterPublishedFromLibraryEvent(
            ChapterPublishedFromLibraryEvent value),
    @required TResult resetBlocEvent(ResetBlocEvent value),
    @required
        TResult seriesDraftDeletedFromLibraryEvent(
            SeriesDraftDeletedFromLibraryEvent value),
    @required
        TResult seriesDraftSavedFromLibraryEvent(
            SeriesDraftSavedFromLibraryEvent value),
    @required
        TResult seriesPublishedFromHomeEvent(
            SeriesPublishedFromHomeEvent value),
    @required
        TResult seriesPublishedFromLibraryEvent(
            SeriesPublishedFromLibraryEvent value),
  }) {
    assert(chapterDraftDeletedFromLibraryEvent != null);
    assert(chapterDraftSavedFromLibraryEvent != null);
    assert(chapterPublishedFromChapterEvent != null);
    assert(chapterPublishedFromLibraryEvent != null);
    assert(resetBlocEvent != null);
    assert(seriesDraftDeletedFromLibraryEvent != null);
    assert(seriesDraftSavedFromLibraryEvent != null);
    assert(seriesPublishedFromHomeEvent != null);
    assert(seriesPublishedFromLibraryEvent != null);
    return seriesPublishedFromLibraryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEvent(
        ChapterDraftDeletedFromLibraryEvent value),
    TResult chapterDraftSavedFromLibraryEvent(
        ChapterDraftSavedFromLibraryEvent value),
    TResult chapterPublishedFromChapterEvent(
        ChapterPublishedFromChapterEvent value),
    TResult chapterPublishedFromLibraryEvent(
        ChapterPublishedFromLibraryEvent value),
    TResult resetBlocEvent(ResetBlocEvent value),
    TResult seriesDraftDeletedFromLibraryEvent(
        SeriesDraftDeletedFromLibraryEvent value),
    TResult seriesDraftSavedFromLibraryEvent(
        SeriesDraftSavedFromLibraryEvent value),
    TResult seriesPublishedFromHomeEvent(SeriesPublishedFromHomeEvent value),
    TResult seriesPublishedFromLibraryEvent(
        SeriesPublishedFromLibraryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibraryEvent != null) {
      return seriesPublishedFromLibraryEvent(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedFromLibraryEvent implements CoreDatabaseEvent {
  const factory SeriesPublishedFromLibraryEvent(Series series) =
      _$SeriesPublishedFromLibraryEvent;

  Series get series;
  $SeriesPublishedFromLibraryEventCopyWith<SeriesPublishedFromLibraryEvent>
      get copyWith;
}

/// @nodoc
class _$CoreDatabaseStateTearOff {
  const _$CoreDatabaseStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ChapterDraftDeletedFromLibraryState chapterDraftDeletedFromLibraryState(
      {String chapterDraftUID, String seriesDraftUID}) {
    return _ChapterDraftDeletedFromLibraryState(
      chapterDraftUID: chapterDraftUID,
      seriesDraftUID: seriesDraftUID,
    );
  }

// ignore: unused_element
  _ChapterDraftSavedFromLibraryState chapterDraftSavedFromLibraryState(
      Chapter chapterDraft) {
    return _ChapterDraftSavedFromLibraryState(
      chapterDraft,
    );
  }

// ignore: unused_element
  _ChapterPublishedFromChapterState chapterPublishedFromChapterState(
      Chapter chapter) {
    return _ChapterPublishedFromChapterState(
      chapter,
    );
  }

// ignore: unused_element
  _ChapterPublishedFromLibraryState chapterPublishedFromLibraryState(
      Chapter chapter) {
    return _ChapterPublishedFromLibraryState(
      chapter,
    );
  }

// ignore: unused_element
  _SeriesDraftDeletedFromLibraryState seriesDraftDeletedFromLibraryState(
      String seriesDraftUID) {
    return _SeriesDraftDeletedFromLibraryState(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  _SeriesDraftSavedFromLibraryState seriesDraftSavedFromLibraryState(
      Series seriesDraft) {
    return _SeriesDraftSavedFromLibraryState(
      seriesDraft,
    );
  }

// ignore: unused_element
  _SeriesPublishedFromHomeState seriesPublishedFromHomeState(Series series) {
    return _SeriesPublishedFromHomeState(
      series,
    );
  }

// ignore: unused_element
  _SeriesPublishedFromLibraryState seriesPublishedFromLibraryState(
      Series series) {
    return _SeriesPublishedFromLibraryState(
      series,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreDatabaseState = _$CoreDatabaseStateTearOff();

/// @nodoc
mixin _$CoreDatabaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreDatabaseStateCopyWith<$Res> {
  factory $CoreDatabaseStateCopyWith(
          CoreDatabaseState value, $Res Function(CoreDatabaseState) then) =
      _$CoreDatabaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreDatabaseStateCopyWithImpl<$Res>
    implements $CoreDatabaseStateCopyWith<$Res> {
  _$CoreDatabaseStateCopyWithImpl(this._value, this._then);

  final CoreDatabaseState _value;
  // ignore: unused_field
  final $Res Function(CoreDatabaseState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CoreDatabaseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CoreDatabaseState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ChapterDraftDeletedFromLibraryStateCopyWith<$Res> {
  factory _$ChapterDraftDeletedFromLibraryStateCopyWith(
          _ChapterDraftDeletedFromLibraryState value,
          $Res Function(_ChapterDraftDeletedFromLibraryState) then) =
      __$ChapterDraftDeletedFromLibraryStateCopyWithImpl<$Res>;
  $Res call({String chapterDraftUID, String seriesDraftUID});
}

/// @nodoc
class __$ChapterDraftDeletedFromLibraryStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterDraftDeletedFromLibraryStateCopyWith<$Res> {
  __$ChapterDraftDeletedFromLibraryStateCopyWithImpl(
      _ChapterDraftDeletedFromLibraryState _value,
      $Res Function(_ChapterDraftDeletedFromLibraryState) _then)
      : super(_value, (v) => _then(v as _ChapterDraftDeletedFromLibraryState));

  @override
  _ChapterDraftDeletedFromLibraryState get _value =>
      super._value as _ChapterDraftDeletedFromLibraryState;

  @override
  $Res call({
    Object chapterDraftUID = freezed,
    Object seriesDraftUID = freezed,
  }) {
    return _then(_ChapterDraftDeletedFromLibraryState(
      chapterDraftUID: chapterDraftUID == freezed
          ? _value.chapterDraftUID
          : chapterDraftUID as String,
      seriesDraftUID: seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$_ChapterDraftDeletedFromLibraryState
    implements _ChapterDraftDeletedFromLibraryState {
  const _$_ChapterDraftDeletedFromLibraryState(
      {this.chapterDraftUID, this.seriesDraftUID});

  @override
  final String chapterDraftUID;
  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterDraftDeletedFromLibraryState(chapterDraftUID: $chapterDraftUID, seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterDraftDeletedFromLibraryState &&
            (identical(other.chapterDraftUID, chapterDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraftUID, chapterDraftUID)) &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chapterDraftUID) ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  _$ChapterDraftDeletedFromLibraryStateCopyWith<
          _ChapterDraftDeletedFromLibraryState>
      get copyWith => __$ChapterDraftDeletedFromLibraryStateCopyWithImpl<
          _ChapterDraftDeletedFromLibraryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterDraftDeletedFromLibraryState(chapterDraftUID, seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibraryState != null) {
      return chapterDraftDeletedFromLibraryState(
          chapterDraftUID, seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterDraftDeletedFromLibraryState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibraryState != null) {
      return chapterDraftDeletedFromLibraryState(this);
    }
    return orElse();
  }
}

abstract class _ChapterDraftDeletedFromLibraryState
    implements CoreDatabaseState {
  const factory _ChapterDraftDeletedFromLibraryState(
      {String chapterDraftUID,
      String seriesDraftUID}) = _$_ChapterDraftDeletedFromLibraryState;

  String get chapterDraftUID;
  String get seriesDraftUID;
  _$ChapterDraftDeletedFromLibraryStateCopyWith<
      _ChapterDraftDeletedFromLibraryState> get copyWith;
}

/// @nodoc
abstract class _$ChapterDraftSavedFromLibraryStateCopyWith<$Res> {
  factory _$ChapterDraftSavedFromLibraryStateCopyWith(
          _ChapterDraftSavedFromLibraryState value,
          $Res Function(_ChapterDraftSavedFromLibraryState) then) =
      __$ChapterDraftSavedFromLibraryStateCopyWithImpl<$Res>;
  $Res call({Chapter chapterDraft});
}

/// @nodoc
class __$ChapterDraftSavedFromLibraryStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterDraftSavedFromLibraryStateCopyWith<$Res> {
  __$ChapterDraftSavedFromLibraryStateCopyWithImpl(
      _ChapterDraftSavedFromLibraryState _value,
      $Res Function(_ChapterDraftSavedFromLibraryState) _then)
      : super(_value, (v) => _then(v as _ChapterDraftSavedFromLibraryState));

  @override
  _ChapterDraftSavedFromLibraryState get _value =>
      super._value as _ChapterDraftSavedFromLibraryState;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(_ChapterDraftSavedFromLibraryState(
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterDraftSavedFromLibraryState
    implements _ChapterDraftSavedFromLibraryState {
  const _$_ChapterDraftSavedFromLibraryState(this.chapterDraft)
      : assert(chapterDraft != null);

  @override
  final Chapter chapterDraft;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterDraftSavedFromLibraryState(chapterDraft: $chapterDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterDraftSavedFromLibraryState &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  _$ChapterDraftSavedFromLibraryStateCopyWith<
          _ChapterDraftSavedFromLibraryState>
      get copyWith => __$ChapterDraftSavedFromLibraryStateCopyWithImpl<
          _ChapterDraftSavedFromLibraryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterDraftSavedFromLibraryState(chapterDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibraryState != null) {
      return chapterDraftSavedFromLibraryState(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterDraftSavedFromLibraryState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibraryState != null) {
      return chapterDraftSavedFromLibraryState(this);
    }
    return orElse();
  }
}

abstract class _ChapterDraftSavedFromLibraryState implements CoreDatabaseState {
  const factory _ChapterDraftSavedFromLibraryState(Chapter chapterDraft) =
      _$_ChapterDraftSavedFromLibraryState;

  Chapter get chapterDraft;
  _$ChapterDraftSavedFromLibraryStateCopyWith<
      _ChapterDraftSavedFromLibraryState> get copyWith;
}

/// @nodoc
abstract class _$ChapterPublishedFromChapterStateCopyWith<$Res> {
  factory _$ChapterPublishedFromChapterStateCopyWith(
          _ChapterPublishedFromChapterState value,
          $Res Function(_ChapterPublishedFromChapterState) then) =
      __$ChapterPublishedFromChapterStateCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class __$ChapterPublishedFromChapterStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterPublishedFromChapterStateCopyWith<$Res> {
  __$ChapterPublishedFromChapterStateCopyWithImpl(
      _ChapterPublishedFromChapterState _value,
      $Res Function(_ChapterPublishedFromChapterState) _then)
      : super(_value, (v) => _then(v as _ChapterPublishedFromChapterState));

  @override
  _ChapterPublishedFromChapterState get _value =>
      super._value as _ChapterPublishedFromChapterState;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(_ChapterPublishedFromChapterState(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterPublishedFromChapterState
    implements _ChapterPublishedFromChapterState {
  const _$_ChapterPublishedFromChapterState(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterPublishedFromChapterState(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterPublishedFromChapterState &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  _$ChapterPublishedFromChapterStateCopyWith<_ChapterPublishedFromChapterState>
      get copyWith => __$ChapterPublishedFromChapterStateCopyWithImpl<
          _ChapterPublishedFromChapterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterPublishedFromChapterState(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterState != null) {
      return chapterPublishedFromChapterState(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterPublishedFromChapterState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterState != null) {
      return chapterPublishedFromChapterState(this);
    }
    return orElse();
  }
}

abstract class _ChapterPublishedFromChapterState implements CoreDatabaseState {
  const factory _ChapterPublishedFromChapterState(Chapter chapter) =
      _$_ChapterPublishedFromChapterState;

  Chapter get chapter;
  _$ChapterPublishedFromChapterStateCopyWith<_ChapterPublishedFromChapterState>
      get copyWith;
}

/// @nodoc
abstract class _$ChapterPublishedFromLibraryStateCopyWith<$Res> {
  factory _$ChapterPublishedFromLibraryStateCopyWith(
          _ChapterPublishedFromLibraryState value,
          $Res Function(_ChapterPublishedFromLibraryState) then) =
      __$ChapterPublishedFromLibraryStateCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class __$ChapterPublishedFromLibraryStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterPublishedFromLibraryStateCopyWith<$Res> {
  __$ChapterPublishedFromLibraryStateCopyWithImpl(
      _ChapterPublishedFromLibraryState _value,
      $Res Function(_ChapterPublishedFromLibraryState) _then)
      : super(_value, (v) => _then(v as _ChapterPublishedFromLibraryState));

  @override
  _ChapterPublishedFromLibraryState get _value =>
      super._value as _ChapterPublishedFromLibraryState;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(_ChapterPublishedFromLibraryState(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterPublishedFromLibraryState
    implements _ChapterPublishedFromLibraryState {
  const _$_ChapterPublishedFromLibraryState(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterPublishedFromLibraryState(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterPublishedFromLibraryState &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  _$ChapterPublishedFromLibraryStateCopyWith<_ChapterPublishedFromLibraryState>
      get copyWith => __$ChapterPublishedFromLibraryStateCopyWithImpl<
          _ChapterPublishedFromLibraryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterPublishedFromLibraryState(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibraryState != null) {
      return chapterPublishedFromLibraryState(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return chapterPublishedFromLibraryState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibraryState != null) {
      return chapterPublishedFromLibraryState(this);
    }
    return orElse();
  }
}

abstract class _ChapterPublishedFromLibraryState implements CoreDatabaseState {
  const factory _ChapterPublishedFromLibraryState(Chapter chapter) =
      _$_ChapterPublishedFromLibraryState;

  Chapter get chapter;
  _$ChapterPublishedFromLibraryStateCopyWith<_ChapterPublishedFromLibraryState>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesDraftDeletedFromLibraryStateCopyWith<$Res> {
  factory _$SeriesDraftDeletedFromLibraryStateCopyWith(
          _SeriesDraftDeletedFromLibraryState value,
          $Res Function(_SeriesDraftDeletedFromLibraryState) then) =
      __$SeriesDraftDeletedFromLibraryStateCopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class __$SeriesDraftDeletedFromLibraryStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDraftDeletedFromLibraryStateCopyWith<$Res> {
  __$SeriesDraftDeletedFromLibraryStateCopyWithImpl(
      _SeriesDraftDeletedFromLibraryState _value,
      $Res Function(_SeriesDraftDeletedFromLibraryState) _then)
      : super(_value, (v) => _then(v as _SeriesDraftDeletedFromLibraryState));

  @override
  _SeriesDraftDeletedFromLibraryState get _value =>
      super._value as _SeriesDraftDeletedFromLibraryState;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(_SeriesDraftDeletedFromLibraryState(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$_SeriesDraftDeletedFromLibraryState
    implements _SeriesDraftDeletedFromLibraryState {
  const _$_SeriesDraftDeletedFromLibraryState(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesDraftDeletedFromLibraryState(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDraftDeletedFromLibraryState &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  _$SeriesDraftDeletedFromLibraryStateCopyWith<
          _SeriesDraftDeletedFromLibraryState>
      get copyWith => __$SeriesDraftDeletedFromLibraryStateCopyWithImpl<
          _SeriesDraftDeletedFromLibraryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesDraftDeletedFromLibraryState(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibraryState != null) {
      return seriesDraftDeletedFromLibraryState(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesDraftDeletedFromLibraryState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibraryState != null) {
      return seriesDraftDeletedFromLibraryState(this);
    }
    return orElse();
  }
}

abstract class _SeriesDraftDeletedFromLibraryState
    implements CoreDatabaseState {
  const factory _SeriesDraftDeletedFromLibraryState(String seriesDraftUID) =
      _$_SeriesDraftDeletedFromLibraryState;

  String get seriesDraftUID;
  _$SeriesDraftDeletedFromLibraryStateCopyWith<
      _SeriesDraftDeletedFromLibraryState> get copyWith;
}

/// @nodoc
abstract class _$SeriesDraftSavedFromLibraryStateCopyWith<$Res> {
  factory _$SeriesDraftSavedFromLibraryStateCopyWith(
          _SeriesDraftSavedFromLibraryState value,
          $Res Function(_SeriesDraftSavedFromLibraryState) then) =
      __$SeriesDraftSavedFromLibraryStateCopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class __$SeriesDraftSavedFromLibraryStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDraftSavedFromLibraryStateCopyWith<$Res> {
  __$SeriesDraftSavedFromLibraryStateCopyWithImpl(
      _SeriesDraftSavedFromLibraryState _value,
      $Res Function(_SeriesDraftSavedFromLibraryState) _then)
      : super(_value, (v) => _then(v as _SeriesDraftSavedFromLibraryState));

  @override
  _SeriesDraftSavedFromLibraryState get _value =>
      super._value as _SeriesDraftSavedFromLibraryState;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(_SeriesDraftSavedFromLibraryState(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesDraftSavedFromLibraryState
    implements _SeriesDraftSavedFromLibraryState {
  const _$_SeriesDraftSavedFromLibraryState(this.seriesDraft)
      : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesDraftSavedFromLibraryState(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDraftSavedFromLibraryState &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  _$SeriesDraftSavedFromLibraryStateCopyWith<_SeriesDraftSavedFromLibraryState>
      get copyWith => __$SeriesDraftSavedFromLibraryStateCopyWithImpl<
          _SeriesDraftSavedFromLibraryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesDraftSavedFromLibraryState(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibraryState != null) {
      return seriesDraftSavedFromLibraryState(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesDraftSavedFromLibraryState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibraryState != null) {
      return seriesDraftSavedFromLibraryState(this);
    }
    return orElse();
  }
}

abstract class _SeriesDraftSavedFromLibraryState implements CoreDatabaseState {
  const factory _SeriesDraftSavedFromLibraryState(Series seriesDraft) =
      _$_SeriesDraftSavedFromLibraryState;

  Series get seriesDraft;
  _$SeriesDraftSavedFromLibraryStateCopyWith<_SeriesDraftSavedFromLibraryState>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesPublishedFromHomeStateCopyWith<$Res> {
  factory _$SeriesPublishedFromHomeStateCopyWith(
          _SeriesPublishedFromHomeState value,
          $Res Function(_SeriesPublishedFromHomeState) then) =
      __$SeriesPublishedFromHomeStateCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class __$SeriesPublishedFromHomeStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesPublishedFromHomeStateCopyWith<$Res> {
  __$SeriesPublishedFromHomeStateCopyWithImpl(
      _SeriesPublishedFromHomeState _value,
      $Res Function(_SeriesPublishedFromHomeState) _then)
      : super(_value, (v) => _then(v as _SeriesPublishedFromHomeState));

  @override
  _SeriesPublishedFromHomeState get _value =>
      super._value as _SeriesPublishedFromHomeState;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(_SeriesPublishedFromHomeState(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesPublishedFromHomeState implements _SeriesPublishedFromHomeState {
  const _$_SeriesPublishedFromHomeState(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesPublishedFromHomeState(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesPublishedFromHomeState &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  _$SeriesPublishedFromHomeStateCopyWith<_SeriesPublishedFromHomeState>
      get copyWith => __$SeriesPublishedFromHomeStateCopyWithImpl<
          _SeriesPublishedFromHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesPublishedFromHomeState(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeState != null) {
      return seriesPublishedFromHomeState(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesPublishedFromHomeState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeState != null) {
      return seriesPublishedFromHomeState(this);
    }
    return orElse();
  }
}

abstract class _SeriesPublishedFromHomeState implements CoreDatabaseState {
  const factory _SeriesPublishedFromHomeState(Series series) =
      _$_SeriesPublishedFromHomeState;

  Series get series;
  _$SeriesPublishedFromHomeStateCopyWith<_SeriesPublishedFromHomeState>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesPublishedFromLibraryStateCopyWith<$Res> {
  factory _$SeriesPublishedFromLibraryStateCopyWith(
          _SeriesPublishedFromLibraryState value,
          $Res Function(_SeriesPublishedFromLibraryState) then) =
      __$SeriesPublishedFromLibraryStateCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class __$SeriesPublishedFromLibraryStateCopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesPublishedFromLibraryStateCopyWith<$Res> {
  __$SeriesPublishedFromLibraryStateCopyWithImpl(
      _SeriesPublishedFromLibraryState _value,
      $Res Function(_SeriesPublishedFromLibraryState) _then)
      : super(_value, (v) => _then(v as _SeriesPublishedFromLibraryState));

  @override
  _SeriesPublishedFromLibraryState get _value =>
      super._value as _SeriesPublishedFromLibraryState;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(_SeriesPublishedFromLibraryState(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesPublishedFromLibraryState
    implements _SeriesPublishedFromLibraryState {
  const _$_SeriesPublishedFromLibraryState(this.series)
      : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesPublishedFromLibraryState(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesPublishedFromLibraryState &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  _$SeriesPublishedFromLibraryStateCopyWith<_SeriesPublishedFromLibraryState>
      get copyWith => __$SeriesPublishedFromLibraryStateCopyWithImpl<
          _SeriesPublishedFromLibraryState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    @required TResult chapterPublishedFromChapterState(Chapter chapter),
    @required TResult chapterPublishedFromLibraryState(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    @required TResult seriesPublishedFromHomeState(Series series),
    @required TResult seriesPublishedFromLibraryState(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesPublishedFromLibraryState(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibraryState(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryState(Chapter chapterDraft),
    TResult chapterPublishedFromChapterState(Chapter chapter),
    TResult chapterPublishedFromLibraryState(Chapter chapter),
    TResult seriesDraftDeletedFromLibraryState(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryState(Series seriesDraft),
    TResult seriesPublishedFromHomeState(Series series),
    TResult seriesPublishedFromLibraryState(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibraryState != null) {
      return seriesPublishedFromLibraryState(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibraryState(
            _ChapterDraftDeletedFromLibraryState value),
    @required
        TResult chapterDraftSavedFromLibraryState(
            _ChapterDraftSavedFromLibraryState value),
    @required
        TResult chapterPublishedFromChapterState(
            _ChapterPublishedFromChapterState value),
    @required
        TResult chapterPublishedFromLibraryState(
            _ChapterPublishedFromLibraryState value),
    @required
        TResult seriesDraftDeletedFromLibraryState(
            _SeriesDraftDeletedFromLibraryState value),
    @required
        TResult seriesDraftSavedFromLibraryState(
            _SeriesDraftSavedFromLibraryState value),
    @required
        TResult seriesPublishedFromHomeState(
            _SeriesPublishedFromHomeState value),
    @required
        TResult seriesPublishedFromLibraryState(
            _SeriesPublishedFromLibraryState value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibraryState != null);
    assert(chapterDraftSavedFromLibraryState != null);
    assert(chapterPublishedFromChapterState != null);
    assert(chapterPublishedFromLibraryState != null);
    assert(seriesDraftDeletedFromLibraryState != null);
    assert(seriesDraftSavedFromLibraryState != null);
    assert(seriesPublishedFromHomeState != null);
    assert(seriesPublishedFromLibraryState != null);
    return seriesPublishedFromLibraryState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibraryState(
        _ChapterDraftDeletedFromLibraryState value),
    TResult chapterDraftSavedFromLibraryState(
        _ChapterDraftSavedFromLibraryState value),
    TResult chapterPublishedFromChapterState(
        _ChapterPublishedFromChapterState value),
    TResult chapterPublishedFromLibraryState(
        _ChapterPublishedFromLibraryState value),
    TResult seriesDraftDeletedFromLibraryState(
        _SeriesDraftDeletedFromLibraryState value),
    TResult seriesDraftSavedFromLibraryState(
        _SeriesDraftSavedFromLibraryState value),
    TResult seriesPublishedFromHomeState(_SeriesPublishedFromHomeState value),
    TResult seriesPublishedFromLibraryState(
        _SeriesPublishedFromLibraryState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibraryState != null) {
      return seriesPublishedFromLibraryState(this);
    }
    return orElse();
  }
}

abstract class _SeriesPublishedFromLibraryState implements CoreDatabaseState {
  const factory _SeriesPublishedFromLibraryState(Series series) =
      _$_SeriesPublishedFromLibraryState;

  Series get series;
  _$SeriesPublishedFromLibraryStateCopyWith<_SeriesPublishedFromLibraryState>
      get copyWith;
}
