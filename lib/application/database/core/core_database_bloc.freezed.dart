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
  ChapterDraftDeletedFromAccountEVT chapterDraftDeletedFromAccountEVT(
      {String chapterDraftUID, String seriesDraftUID}) {
    return ChapterDraftDeletedFromAccountEVT(
      chapterDraftUID: chapterDraftUID,
      seriesDraftUID: seriesDraftUID,
    );
  }

// ignore: unused_element
  ChapterDraftSavedFromAccountEVT chapterDraftSavedFromAccountEVT(
      Chapter chapterDraft) {
    return ChapterDraftSavedFromAccountEVT(
      chapterDraft,
    );
  }

// ignore: unused_element
  ChapterPublishedFromAccountEVT chapterPublishedFromAccountEVT(
      Chapter chapter) {
    return ChapterPublishedFromAccountEVT(
      chapter,
    );
  }

// ignore: unused_element
  ChapterPublishedFromChapterEVT chapterPublishedFromChapterEVT(
      Chapter chapter) {
    return ChapterPublishedFromChapterEVT(
      chapter,
    );
  }

// ignore: unused_element
  ResetBlocEVT resetBlocEVT() {
    return const ResetBlocEVT();
  }

// ignore: unused_element
  SeriesDraftDeletedFromAccountEVT seriesDraftDeletedFromAccountEVT(
      String seriesDraftUID) {
    return SeriesDraftDeletedFromAccountEVT(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  SeriesDraftSavedFromAccountEVT seriesDraftSavedFromAccountEVT(
      Series seriesDraft) {
    return SeriesDraftSavedFromAccountEVT(
      seriesDraft,
    );
  }

// ignore: unused_element
  SeriesPublishedFromAccountEVT seriesPublishedFromAccountEVT(Series series) {
    return SeriesPublishedFromAccountEVT(
      series,
    );
  }

// ignore: unused_element
  SeriesPublishedFromHomeEVT seriesPublishedFromHomeEVT(Series series) {
    return SeriesPublishedFromHomeEVT(
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
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
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
abstract class $ChapterDraftDeletedFromAccountEVTCopyWith<$Res> {
  factory $ChapterDraftDeletedFromAccountEVTCopyWith(
          ChapterDraftDeletedFromAccountEVT value,
          $Res Function(ChapterDraftDeletedFromAccountEVT) then) =
      _$ChapterDraftDeletedFromAccountEVTCopyWithImpl<$Res>;
  $Res call({String chapterDraftUID, String seriesDraftUID});
}

/// @nodoc
class _$ChapterDraftDeletedFromAccountEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftDeletedFromAccountEVTCopyWith<$Res> {
  _$ChapterDraftDeletedFromAccountEVTCopyWithImpl(
      ChapterDraftDeletedFromAccountEVT _value,
      $Res Function(ChapterDraftDeletedFromAccountEVT) _then)
      : super(_value, (v) => _then(v as ChapterDraftDeletedFromAccountEVT));

  @override
  ChapterDraftDeletedFromAccountEVT get _value =>
      super._value as ChapterDraftDeletedFromAccountEVT;

  @override
  $Res call({
    Object chapterDraftUID = freezed,
    Object seriesDraftUID = freezed,
  }) {
    return _then(ChapterDraftDeletedFromAccountEVT(
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
class _$ChapterDraftDeletedFromAccountEVT
    implements ChapterDraftDeletedFromAccountEVT {
  const _$ChapterDraftDeletedFromAccountEVT(
      {this.chapterDraftUID, this.seriesDraftUID});

  @override
  final String chapterDraftUID;
  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterDraftDeletedFromAccountEVT(chapterDraftUID: $chapterDraftUID, seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftDeletedFromAccountEVT &&
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
  $ChapterDraftDeletedFromAccountEVTCopyWith<ChapterDraftDeletedFromAccountEVT>
      get copyWith => _$ChapterDraftDeletedFromAccountEVTCopyWithImpl<
          ChapterDraftDeletedFromAccountEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftDeletedFromAccountEVT(chapterDraftUID, seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromAccountEVT != null) {
      return chapterDraftDeletedFromAccountEVT(chapterDraftUID, seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftDeletedFromAccountEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromAccountEVT != null) {
      return chapterDraftDeletedFromAccountEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftDeletedFromAccountEVT implements CoreDatabaseEvent {
  const factory ChapterDraftDeletedFromAccountEVT(
      {String chapterDraftUID,
      String seriesDraftUID}) = _$ChapterDraftDeletedFromAccountEVT;

  String get chapterDraftUID;
  String get seriesDraftUID;
  $ChapterDraftDeletedFromAccountEVTCopyWith<ChapterDraftDeletedFromAccountEVT>
      get copyWith;
}

/// @nodoc
abstract class $ChapterDraftSavedFromAccountEVTCopyWith<$Res> {
  factory $ChapterDraftSavedFromAccountEVTCopyWith(
          ChapterDraftSavedFromAccountEVT value,
          $Res Function(ChapterDraftSavedFromAccountEVT) then) =
      _$ChapterDraftSavedFromAccountEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapterDraft});
}

/// @nodoc
class _$ChapterDraftSavedFromAccountEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftSavedFromAccountEVTCopyWith<$Res> {
  _$ChapterDraftSavedFromAccountEVTCopyWithImpl(
      ChapterDraftSavedFromAccountEVT _value,
      $Res Function(ChapterDraftSavedFromAccountEVT) _then)
      : super(_value, (v) => _then(v as ChapterDraftSavedFromAccountEVT));

  @override
  ChapterDraftSavedFromAccountEVT get _value =>
      super._value as ChapterDraftSavedFromAccountEVT;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(ChapterDraftSavedFromAccountEVT(
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterDraftSavedFromAccountEVT
    implements ChapterDraftSavedFromAccountEVT {
  const _$ChapterDraftSavedFromAccountEVT(this.chapterDraft)
      : assert(chapterDraft != null);

  @override
  final Chapter chapterDraft;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterDraftSavedFromAccountEVT(chapterDraft: $chapterDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftSavedFromAccountEVT &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  $ChapterDraftSavedFromAccountEVTCopyWith<ChapterDraftSavedFromAccountEVT>
      get copyWith => _$ChapterDraftSavedFromAccountEVTCopyWithImpl<
          ChapterDraftSavedFromAccountEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftSavedFromAccountEVT(chapterDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromAccountEVT != null) {
      return chapterDraftSavedFromAccountEVT(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftSavedFromAccountEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromAccountEVT != null) {
      return chapterDraftSavedFromAccountEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftSavedFromAccountEVT implements CoreDatabaseEvent {
  const factory ChapterDraftSavedFromAccountEVT(Chapter chapterDraft) =
      _$ChapterDraftSavedFromAccountEVT;

  Chapter get chapterDraft;
  $ChapterDraftSavedFromAccountEVTCopyWith<ChapterDraftSavedFromAccountEVT>
      get copyWith;
}

/// @nodoc
abstract class $ChapterPublishedFromAccountEVTCopyWith<$Res> {
  factory $ChapterPublishedFromAccountEVTCopyWith(
          ChapterPublishedFromAccountEVT value,
          $Res Function(ChapterPublishedFromAccountEVT) then) =
      _$ChapterPublishedFromAccountEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class _$ChapterPublishedFromAccountEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedFromAccountEVTCopyWith<$Res> {
  _$ChapterPublishedFromAccountEVTCopyWithImpl(
      ChapterPublishedFromAccountEVT _value,
      $Res Function(ChapterPublishedFromAccountEVT) _then)
      : super(_value, (v) => _then(v as ChapterPublishedFromAccountEVT));

  @override
  ChapterPublishedFromAccountEVT get _value =>
      super._value as ChapterPublishedFromAccountEVT;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterPublishedFromAccountEVT(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterPublishedFromAccountEVT
    implements ChapterPublishedFromAccountEVT {
  const _$ChapterPublishedFromAccountEVT(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterPublishedFromAccountEVT(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPublishedFromAccountEVT &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterPublishedFromAccountEVTCopyWith<ChapterPublishedFromAccountEVT>
      get copyWith => _$ChapterPublishedFromAccountEVTCopyWithImpl<
          ChapterPublishedFromAccountEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromAccountEVT(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromAccountEVT != null) {
      return chapterPublishedFromAccountEVT(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromAccountEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromAccountEVT != null) {
      return chapterPublishedFromAccountEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedFromAccountEVT implements CoreDatabaseEvent {
  const factory ChapterPublishedFromAccountEVT(Chapter chapter) =
      _$ChapterPublishedFromAccountEVT;

  Chapter get chapter;
  $ChapterPublishedFromAccountEVTCopyWith<ChapterPublishedFromAccountEVT>
      get copyWith;
}

/// @nodoc
abstract class $ChapterPublishedFromChapterEVTCopyWith<$Res> {
  factory $ChapterPublishedFromChapterEVTCopyWith(
          ChapterPublishedFromChapterEVT value,
          $Res Function(ChapterPublishedFromChapterEVT) then) =
      _$ChapterPublishedFromChapterEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class _$ChapterPublishedFromChapterEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedFromChapterEVTCopyWith<$Res> {
  _$ChapterPublishedFromChapterEVTCopyWithImpl(
      ChapterPublishedFromChapterEVT _value,
      $Res Function(ChapterPublishedFromChapterEVT) _then)
      : super(_value, (v) => _then(v as ChapterPublishedFromChapterEVT));

  @override
  ChapterPublishedFromChapterEVT get _value =>
      super._value as ChapterPublishedFromChapterEVT;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterPublishedFromChapterEVT(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterPublishedFromChapterEVT
    implements ChapterPublishedFromChapterEVT {
  const _$ChapterPublishedFromChapterEVT(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterPublishedFromChapterEVT(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPublishedFromChapterEVT &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterPublishedFromChapterEVTCopyWith<ChapterPublishedFromChapterEVT>
      get copyWith => _$ChapterPublishedFromChapterEVTCopyWithImpl<
          ChapterPublishedFromChapterEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromChapterEVT(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterEVT != null) {
      return chapterPublishedFromChapterEVT(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromChapterEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterEVT != null) {
      return chapterPublishedFromChapterEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedFromChapterEVT implements CoreDatabaseEvent {
  const factory ChapterPublishedFromChapterEVT(Chapter chapter) =
      _$ChapterPublishedFromChapterEVT;

  Chapter get chapter;
  $ChapterPublishedFromChapterEVTCopyWith<ChapterPublishedFromChapterEVT>
      get copyWith;
}

/// @nodoc
abstract class $ResetBlocEVTCopyWith<$Res> {
  factory $ResetBlocEVTCopyWith(
          ResetBlocEVT value, $Res Function(ResetBlocEVT) then) =
      _$ResetBlocEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetBlocEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ResetBlocEVTCopyWith<$Res> {
  _$ResetBlocEVTCopyWithImpl(
      ResetBlocEVT _value, $Res Function(ResetBlocEVT) _then)
      : super(_value, (v) => _then(v as ResetBlocEVT));

  @override
  ResetBlocEVT get _value => super._value as ResetBlocEVT;
}

/// @nodoc
class _$ResetBlocEVT implements ResetBlocEVT {
  const _$ResetBlocEVT();

  @override
  String toString() {
    return 'CoreDatabaseEvent.resetBlocEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetBlocEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT(this);
    }
    return orElse();
  }
}

abstract class ResetBlocEVT implements CoreDatabaseEvent {
  const factory ResetBlocEVT() = _$ResetBlocEVT;
}

/// @nodoc
abstract class $SeriesDraftDeletedFromAccountEVTCopyWith<$Res> {
  factory $SeriesDraftDeletedFromAccountEVTCopyWith(
          SeriesDraftDeletedFromAccountEVT value,
          $Res Function(SeriesDraftDeletedFromAccountEVT) then) =
      _$SeriesDraftDeletedFromAccountEVTCopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class _$SeriesDraftDeletedFromAccountEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftDeletedFromAccountEVTCopyWith<$Res> {
  _$SeriesDraftDeletedFromAccountEVTCopyWithImpl(
      SeriesDraftDeletedFromAccountEVT _value,
      $Res Function(SeriesDraftDeletedFromAccountEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftDeletedFromAccountEVT));

  @override
  SeriesDraftDeletedFromAccountEVT get _value =>
      super._value as SeriesDraftDeletedFromAccountEVT;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(SeriesDraftDeletedFromAccountEVT(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$SeriesDraftDeletedFromAccountEVT
    implements SeriesDraftDeletedFromAccountEVT {
  const _$SeriesDraftDeletedFromAccountEVT(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesDraftDeletedFromAccountEVT(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftDeletedFromAccountEVT &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  $SeriesDraftDeletedFromAccountEVTCopyWith<SeriesDraftDeletedFromAccountEVT>
      get copyWith => _$SeriesDraftDeletedFromAccountEVTCopyWithImpl<
          SeriesDraftDeletedFromAccountEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftDeletedFromAccountEVT(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromAccountEVT != null) {
      return seriesDraftDeletedFromAccountEVT(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftDeletedFromAccountEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromAccountEVT != null) {
      return seriesDraftDeletedFromAccountEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftDeletedFromAccountEVT implements CoreDatabaseEvent {
  const factory SeriesDraftDeletedFromAccountEVT(String seriesDraftUID) =
      _$SeriesDraftDeletedFromAccountEVT;

  String get seriesDraftUID;
  $SeriesDraftDeletedFromAccountEVTCopyWith<SeriesDraftDeletedFromAccountEVT>
      get copyWith;
}

/// @nodoc
abstract class $SeriesDraftSavedFromAccountEVTCopyWith<$Res> {
  factory $SeriesDraftSavedFromAccountEVTCopyWith(
          SeriesDraftSavedFromAccountEVT value,
          $Res Function(SeriesDraftSavedFromAccountEVT) then) =
      _$SeriesDraftSavedFromAccountEVTCopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class _$SeriesDraftSavedFromAccountEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftSavedFromAccountEVTCopyWith<$Res> {
  _$SeriesDraftSavedFromAccountEVTCopyWithImpl(
      SeriesDraftSavedFromAccountEVT _value,
      $Res Function(SeriesDraftSavedFromAccountEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftSavedFromAccountEVT));

  @override
  SeriesDraftSavedFromAccountEVT get _value =>
      super._value as SeriesDraftSavedFromAccountEVT;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(SeriesDraftSavedFromAccountEVT(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$SeriesDraftSavedFromAccountEVT
    implements SeriesDraftSavedFromAccountEVT {
  const _$SeriesDraftSavedFromAccountEVT(this.seriesDraft)
      : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesDraftSavedFromAccountEVT(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftSavedFromAccountEVT &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  $SeriesDraftSavedFromAccountEVTCopyWith<SeriesDraftSavedFromAccountEVT>
      get copyWith => _$SeriesDraftSavedFromAccountEVTCopyWithImpl<
          SeriesDraftSavedFromAccountEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftSavedFromAccountEVT(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromAccountEVT != null) {
      return seriesDraftSavedFromAccountEVT(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftSavedFromAccountEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromAccountEVT != null) {
      return seriesDraftSavedFromAccountEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftSavedFromAccountEVT implements CoreDatabaseEvent {
  const factory SeriesDraftSavedFromAccountEVT(Series seriesDraft) =
      _$SeriesDraftSavedFromAccountEVT;

  Series get seriesDraft;
  $SeriesDraftSavedFromAccountEVTCopyWith<SeriesDraftSavedFromAccountEVT>
      get copyWith;
}

/// @nodoc
abstract class $SeriesPublishedFromAccountEVTCopyWith<$Res> {
  factory $SeriesPublishedFromAccountEVTCopyWith(
          SeriesPublishedFromAccountEVT value,
          $Res Function(SeriesPublishedFromAccountEVT) then) =
      _$SeriesPublishedFromAccountEVTCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class _$SeriesPublishedFromAccountEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedFromAccountEVTCopyWith<$Res> {
  _$SeriesPublishedFromAccountEVTCopyWithImpl(
      SeriesPublishedFromAccountEVT _value,
      $Res Function(SeriesPublishedFromAccountEVT) _then)
      : super(_value, (v) => _then(v as SeriesPublishedFromAccountEVT));

  @override
  SeriesPublishedFromAccountEVT get _value =>
      super._value as SeriesPublishedFromAccountEVT;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(SeriesPublishedFromAccountEVT(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$SeriesPublishedFromAccountEVT implements SeriesPublishedFromAccountEVT {
  const _$SeriesPublishedFromAccountEVT(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesPublishedFromAccountEVT(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedFromAccountEVT &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  $SeriesPublishedFromAccountEVTCopyWith<SeriesPublishedFromAccountEVT>
      get copyWith => _$SeriesPublishedFromAccountEVTCopyWithImpl<
          SeriesPublishedFromAccountEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromAccountEVT(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromAccountEVT != null) {
      return seriesPublishedFromAccountEVT(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromAccountEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromAccountEVT != null) {
      return seriesPublishedFromAccountEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedFromAccountEVT implements CoreDatabaseEvent {
  const factory SeriesPublishedFromAccountEVT(Series series) =
      _$SeriesPublishedFromAccountEVT;

  Series get series;
  $SeriesPublishedFromAccountEVTCopyWith<SeriesPublishedFromAccountEVT>
      get copyWith;
}

/// @nodoc
abstract class $SeriesPublishedFromHomeEVTCopyWith<$Res> {
  factory $SeriesPublishedFromHomeEVTCopyWith(SeriesPublishedFromHomeEVT value,
          $Res Function(SeriesPublishedFromHomeEVT) then) =
      _$SeriesPublishedFromHomeEVTCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class _$SeriesPublishedFromHomeEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedFromHomeEVTCopyWith<$Res> {
  _$SeriesPublishedFromHomeEVTCopyWithImpl(SeriesPublishedFromHomeEVT _value,
      $Res Function(SeriesPublishedFromHomeEVT) _then)
      : super(_value, (v) => _then(v as SeriesPublishedFromHomeEVT));

  @override
  SeriesPublishedFromHomeEVT get _value =>
      super._value as SeriesPublishedFromHomeEVT;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(SeriesPublishedFromHomeEVT(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$SeriesPublishedFromHomeEVT implements SeriesPublishedFromHomeEVT {
  const _$SeriesPublishedFromHomeEVT(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesPublishedFromHomeEVT(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedFromHomeEVT &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  $SeriesPublishedFromHomeEVTCopyWith<SeriesPublishedFromHomeEVT>
      get copyWith =>
          _$SeriesPublishedFromHomeEVTCopyWithImpl<SeriesPublishedFromHomeEVT>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    @required TResult seriesPublishedFromAccountEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromHomeEVT(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountEVT(Chapter chapterDraft),
    TResult chapterPublishedFromAccountEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromAccountEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountEVT(Series seriesDraft),
    TResult seriesPublishedFromAccountEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeEVT != null) {
      return seriesPublishedFromHomeEVT(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromAccountEVT(
            ChapterDraftDeletedFromAccountEVT value),
    @required
        TResult chapterDraftSavedFromAccountEVT(
            ChapterDraftSavedFromAccountEVT value),
    @required
        TResult chapterPublishedFromAccountEVT(
            ChapterPublishedFromAccountEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromAccountEVT(
            SeriesDraftDeletedFromAccountEVT value),
    @required
        TResult seriesDraftSavedFromAccountEVT(
            SeriesDraftSavedFromAccountEVT value),
    @required
        TResult seriesPublishedFromAccountEVT(
            SeriesPublishedFromAccountEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromAccountEVT != null);
    assert(chapterDraftSavedFromAccountEVT != null);
    assert(chapterPublishedFromAccountEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromAccountEVT != null);
    assert(seriesDraftSavedFromAccountEVT != null);
    assert(seriesPublishedFromAccountEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromHomeEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromAccountEVT(
        ChapterDraftDeletedFromAccountEVT value),
    TResult chapterDraftSavedFromAccountEVT(
        ChapterDraftSavedFromAccountEVT value),
    TResult chapterPublishedFromAccountEVT(
        ChapterPublishedFromAccountEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromAccountEVT(
        SeriesDraftDeletedFromAccountEVT value),
    TResult seriesDraftSavedFromAccountEVT(
        SeriesDraftSavedFromAccountEVT value),
    TResult seriesPublishedFromAccountEVT(SeriesPublishedFromAccountEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeEVT != null) {
      return seriesPublishedFromHomeEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedFromHomeEVT implements CoreDatabaseEvent {
  const factory SeriesPublishedFromHomeEVT(Series series) =
      _$SeriesPublishedFromHomeEVT;

  Series get series;
  $SeriesPublishedFromHomeEVTCopyWith<SeriesPublishedFromHomeEVT> get copyWith;
}

/// @nodoc
class _$CoreDatabaseStateTearOff {
  const _$CoreDatabaseStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ChapterDraftDeletedFromAccountSTE chapterDraftDeletedFromAccountSTE(
      {String chapterDraftUID, String seriesDraftUID}) {
    return _ChapterDraftDeletedFromAccountSTE(
      chapterDraftUID: chapterDraftUID,
      seriesDraftUID: seriesDraftUID,
    );
  }

// ignore: unused_element
  _ChapterDraftSavedFromAccountSTE chapterDraftSavedFromAccountSTE(
      Chapter chapterDraft) {
    return _ChapterDraftSavedFromAccountSTE(
      chapterDraft,
    );
  }

// ignore: unused_element
  _ChapterPublishedFromAccountSTE chapterPublishedFromAccountSTE(
      Chapter chapter) {
    return _ChapterPublishedFromAccountSTE(
      chapter,
    );
  }

// ignore: unused_element
  _ChapterPublishedFromChapterSTE chapterPublishedFromChapterSTE(
      Chapter chapter) {
    return _ChapterPublishedFromChapterSTE(
      chapter,
    );
  }

// ignore: unused_element
  _SeriesDraftDeletedFromAccountSTE seriesDraftDeletedFromAccountSTE(
      String seriesDraftUID) {
    return _SeriesDraftDeletedFromAccountSTE(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  _SeriesDraftSavedFromAccountSTE seriesDraftSavedFromAccountSTE(
      Series seriesDraft) {
    return _SeriesDraftSavedFromAccountSTE(
      seriesDraft,
    );
  }

// ignore: unused_element
  _SeriesPublishedFromAccountSTE seriesPublishedFromAccountSTE(Series series) {
    return _SeriesPublishedFromAccountSTE(
      series,
    );
  }

// ignore: unused_element
  _SeriesPublishedFromHomeSTE seriesPublishedFromHomeSTE(Series series) {
    return _SeriesPublishedFromHomeSTE(
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
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
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
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
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
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
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
abstract class _$ChapterDraftDeletedFromAccountSTECopyWith<$Res> {
  factory _$ChapterDraftDeletedFromAccountSTECopyWith(
          _ChapterDraftDeletedFromAccountSTE value,
          $Res Function(_ChapterDraftDeletedFromAccountSTE) then) =
      __$ChapterDraftDeletedFromAccountSTECopyWithImpl<$Res>;
  $Res call({String chapterDraftUID, String seriesDraftUID});
}

/// @nodoc
class __$ChapterDraftDeletedFromAccountSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterDraftDeletedFromAccountSTECopyWith<$Res> {
  __$ChapterDraftDeletedFromAccountSTECopyWithImpl(
      _ChapterDraftDeletedFromAccountSTE _value,
      $Res Function(_ChapterDraftDeletedFromAccountSTE) _then)
      : super(_value, (v) => _then(v as _ChapterDraftDeletedFromAccountSTE));

  @override
  _ChapterDraftDeletedFromAccountSTE get _value =>
      super._value as _ChapterDraftDeletedFromAccountSTE;

  @override
  $Res call({
    Object chapterDraftUID = freezed,
    Object seriesDraftUID = freezed,
  }) {
    return _then(_ChapterDraftDeletedFromAccountSTE(
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
class _$_ChapterDraftDeletedFromAccountSTE
    implements _ChapterDraftDeletedFromAccountSTE {
  const _$_ChapterDraftDeletedFromAccountSTE(
      {this.chapterDraftUID, this.seriesDraftUID});

  @override
  final String chapterDraftUID;
  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterDraftDeletedFromAccountSTE(chapterDraftUID: $chapterDraftUID, seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterDraftDeletedFromAccountSTE &&
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
  _$ChapterDraftDeletedFromAccountSTECopyWith<
          _ChapterDraftDeletedFromAccountSTE>
      get copyWith => __$ChapterDraftDeletedFromAccountSTECopyWithImpl<
          _ChapterDraftDeletedFromAccountSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftDeletedFromAccountSTE(chapterDraftUID, seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromAccountSTE != null) {
      return chapterDraftDeletedFromAccountSTE(chapterDraftUID, seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftDeletedFromAccountSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromAccountSTE != null) {
      return chapterDraftDeletedFromAccountSTE(this);
    }
    return orElse();
  }
}

abstract class _ChapterDraftDeletedFromAccountSTE implements CoreDatabaseState {
  const factory _ChapterDraftDeletedFromAccountSTE(
      {String chapterDraftUID,
      String seriesDraftUID}) = _$_ChapterDraftDeletedFromAccountSTE;

  String get chapterDraftUID;
  String get seriesDraftUID;
  _$ChapterDraftDeletedFromAccountSTECopyWith<
      _ChapterDraftDeletedFromAccountSTE> get copyWith;
}

/// @nodoc
abstract class _$ChapterDraftSavedFromAccountSTECopyWith<$Res> {
  factory _$ChapterDraftSavedFromAccountSTECopyWith(
          _ChapterDraftSavedFromAccountSTE value,
          $Res Function(_ChapterDraftSavedFromAccountSTE) then) =
      __$ChapterDraftSavedFromAccountSTECopyWithImpl<$Res>;
  $Res call({Chapter chapterDraft});
}

/// @nodoc
class __$ChapterDraftSavedFromAccountSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterDraftSavedFromAccountSTECopyWith<$Res> {
  __$ChapterDraftSavedFromAccountSTECopyWithImpl(
      _ChapterDraftSavedFromAccountSTE _value,
      $Res Function(_ChapterDraftSavedFromAccountSTE) _then)
      : super(_value, (v) => _then(v as _ChapterDraftSavedFromAccountSTE));

  @override
  _ChapterDraftSavedFromAccountSTE get _value =>
      super._value as _ChapterDraftSavedFromAccountSTE;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(_ChapterDraftSavedFromAccountSTE(
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterDraftSavedFromAccountSTE
    implements _ChapterDraftSavedFromAccountSTE {
  const _$_ChapterDraftSavedFromAccountSTE(this.chapterDraft)
      : assert(chapterDraft != null);

  @override
  final Chapter chapterDraft;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterDraftSavedFromAccountSTE(chapterDraft: $chapterDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterDraftSavedFromAccountSTE &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  _$ChapterDraftSavedFromAccountSTECopyWith<_ChapterDraftSavedFromAccountSTE>
      get copyWith => __$ChapterDraftSavedFromAccountSTECopyWithImpl<
          _ChapterDraftSavedFromAccountSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftSavedFromAccountSTE(chapterDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromAccountSTE != null) {
      return chapterDraftSavedFromAccountSTE(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftSavedFromAccountSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromAccountSTE != null) {
      return chapterDraftSavedFromAccountSTE(this);
    }
    return orElse();
  }
}

abstract class _ChapterDraftSavedFromAccountSTE implements CoreDatabaseState {
  const factory _ChapterDraftSavedFromAccountSTE(Chapter chapterDraft) =
      _$_ChapterDraftSavedFromAccountSTE;

  Chapter get chapterDraft;
  _$ChapterDraftSavedFromAccountSTECopyWith<_ChapterDraftSavedFromAccountSTE>
      get copyWith;
}

/// @nodoc
abstract class _$ChapterPublishedFromAccountSTECopyWith<$Res> {
  factory _$ChapterPublishedFromAccountSTECopyWith(
          _ChapterPublishedFromAccountSTE value,
          $Res Function(_ChapterPublishedFromAccountSTE) then) =
      __$ChapterPublishedFromAccountSTECopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class __$ChapterPublishedFromAccountSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterPublishedFromAccountSTECopyWith<$Res> {
  __$ChapterPublishedFromAccountSTECopyWithImpl(
      _ChapterPublishedFromAccountSTE _value,
      $Res Function(_ChapterPublishedFromAccountSTE) _then)
      : super(_value, (v) => _then(v as _ChapterPublishedFromAccountSTE));

  @override
  _ChapterPublishedFromAccountSTE get _value =>
      super._value as _ChapterPublishedFromAccountSTE;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(_ChapterPublishedFromAccountSTE(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterPublishedFromAccountSTE
    implements _ChapterPublishedFromAccountSTE {
  const _$_ChapterPublishedFromAccountSTE(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterPublishedFromAccountSTE(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterPublishedFromAccountSTE &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  _$ChapterPublishedFromAccountSTECopyWith<_ChapterPublishedFromAccountSTE>
      get copyWith => __$ChapterPublishedFromAccountSTECopyWithImpl<
          _ChapterPublishedFromAccountSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromAccountSTE(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromAccountSTE != null) {
      return chapterPublishedFromAccountSTE(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromAccountSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromAccountSTE != null) {
      return chapterPublishedFromAccountSTE(this);
    }
    return orElse();
  }
}

abstract class _ChapterPublishedFromAccountSTE implements CoreDatabaseState {
  const factory _ChapterPublishedFromAccountSTE(Chapter chapter) =
      _$_ChapterPublishedFromAccountSTE;

  Chapter get chapter;
  _$ChapterPublishedFromAccountSTECopyWith<_ChapterPublishedFromAccountSTE>
      get copyWith;
}

/// @nodoc
abstract class _$ChapterPublishedFromChapterSTECopyWith<$Res> {
  factory _$ChapterPublishedFromChapterSTECopyWith(
          _ChapterPublishedFromChapterSTE value,
          $Res Function(_ChapterPublishedFromChapterSTE) then) =
      __$ChapterPublishedFromChapterSTECopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class __$ChapterPublishedFromChapterSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterPublishedFromChapterSTECopyWith<$Res> {
  __$ChapterPublishedFromChapterSTECopyWithImpl(
      _ChapterPublishedFromChapterSTE _value,
      $Res Function(_ChapterPublishedFromChapterSTE) _then)
      : super(_value, (v) => _then(v as _ChapterPublishedFromChapterSTE));

  @override
  _ChapterPublishedFromChapterSTE get _value =>
      super._value as _ChapterPublishedFromChapterSTE;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(_ChapterPublishedFromChapterSTE(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterPublishedFromChapterSTE
    implements _ChapterPublishedFromChapterSTE {
  const _$_ChapterPublishedFromChapterSTE(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterPublishedFromChapterSTE(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterPublishedFromChapterSTE &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  _$ChapterPublishedFromChapterSTECopyWith<_ChapterPublishedFromChapterSTE>
      get copyWith => __$ChapterPublishedFromChapterSTECopyWithImpl<
          _ChapterPublishedFromChapterSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromChapterSTE(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterSTE != null) {
      return chapterPublishedFromChapterSTE(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromChapterSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromChapterSTE != null) {
      return chapterPublishedFromChapterSTE(this);
    }
    return orElse();
  }
}

abstract class _ChapterPublishedFromChapterSTE implements CoreDatabaseState {
  const factory _ChapterPublishedFromChapterSTE(Chapter chapter) =
      _$_ChapterPublishedFromChapterSTE;

  Chapter get chapter;
  _$ChapterPublishedFromChapterSTECopyWith<_ChapterPublishedFromChapterSTE>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesDraftDeletedFromAccountSTECopyWith<$Res> {
  factory _$SeriesDraftDeletedFromAccountSTECopyWith(
          _SeriesDraftDeletedFromAccountSTE value,
          $Res Function(_SeriesDraftDeletedFromAccountSTE) then) =
      __$SeriesDraftDeletedFromAccountSTECopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class __$SeriesDraftDeletedFromAccountSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDraftDeletedFromAccountSTECopyWith<$Res> {
  __$SeriesDraftDeletedFromAccountSTECopyWithImpl(
      _SeriesDraftDeletedFromAccountSTE _value,
      $Res Function(_SeriesDraftDeletedFromAccountSTE) _then)
      : super(_value, (v) => _then(v as _SeriesDraftDeletedFromAccountSTE));

  @override
  _SeriesDraftDeletedFromAccountSTE get _value =>
      super._value as _SeriesDraftDeletedFromAccountSTE;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(_SeriesDraftDeletedFromAccountSTE(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$_SeriesDraftDeletedFromAccountSTE
    implements _SeriesDraftDeletedFromAccountSTE {
  const _$_SeriesDraftDeletedFromAccountSTE(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesDraftDeletedFromAccountSTE(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDraftDeletedFromAccountSTE &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  _$SeriesDraftDeletedFromAccountSTECopyWith<_SeriesDraftDeletedFromAccountSTE>
      get copyWith => __$SeriesDraftDeletedFromAccountSTECopyWithImpl<
          _SeriesDraftDeletedFromAccountSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftDeletedFromAccountSTE(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromAccountSTE != null) {
      return seriesDraftDeletedFromAccountSTE(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftDeletedFromAccountSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromAccountSTE != null) {
      return seriesDraftDeletedFromAccountSTE(this);
    }
    return orElse();
  }
}

abstract class _SeriesDraftDeletedFromAccountSTE implements CoreDatabaseState {
  const factory _SeriesDraftDeletedFromAccountSTE(String seriesDraftUID) =
      _$_SeriesDraftDeletedFromAccountSTE;

  String get seriesDraftUID;
  _$SeriesDraftDeletedFromAccountSTECopyWith<_SeriesDraftDeletedFromAccountSTE>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesDraftSavedFromAccountSTECopyWith<$Res> {
  factory _$SeriesDraftSavedFromAccountSTECopyWith(
          _SeriesDraftSavedFromAccountSTE value,
          $Res Function(_SeriesDraftSavedFromAccountSTE) then) =
      __$SeriesDraftSavedFromAccountSTECopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class __$SeriesDraftSavedFromAccountSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDraftSavedFromAccountSTECopyWith<$Res> {
  __$SeriesDraftSavedFromAccountSTECopyWithImpl(
      _SeriesDraftSavedFromAccountSTE _value,
      $Res Function(_SeriesDraftSavedFromAccountSTE) _then)
      : super(_value, (v) => _then(v as _SeriesDraftSavedFromAccountSTE));

  @override
  _SeriesDraftSavedFromAccountSTE get _value =>
      super._value as _SeriesDraftSavedFromAccountSTE;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(_SeriesDraftSavedFromAccountSTE(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesDraftSavedFromAccountSTE
    implements _SeriesDraftSavedFromAccountSTE {
  const _$_SeriesDraftSavedFromAccountSTE(this.seriesDraft)
      : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesDraftSavedFromAccountSTE(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDraftSavedFromAccountSTE &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  _$SeriesDraftSavedFromAccountSTECopyWith<_SeriesDraftSavedFromAccountSTE>
      get copyWith => __$SeriesDraftSavedFromAccountSTECopyWithImpl<
          _SeriesDraftSavedFromAccountSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftSavedFromAccountSTE(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromAccountSTE != null) {
      return seriesDraftSavedFromAccountSTE(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftSavedFromAccountSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromAccountSTE != null) {
      return seriesDraftSavedFromAccountSTE(this);
    }
    return orElse();
  }
}

abstract class _SeriesDraftSavedFromAccountSTE implements CoreDatabaseState {
  const factory _SeriesDraftSavedFromAccountSTE(Series seriesDraft) =
      _$_SeriesDraftSavedFromAccountSTE;

  Series get seriesDraft;
  _$SeriesDraftSavedFromAccountSTECopyWith<_SeriesDraftSavedFromAccountSTE>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesPublishedFromAccountSTECopyWith<$Res> {
  factory _$SeriesPublishedFromAccountSTECopyWith(
          _SeriesPublishedFromAccountSTE value,
          $Res Function(_SeriesPublishedFromAccountSTE) then) =
      __$SeriesPublishedFromAccountSTECopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class __$SeriesPublishedFromAccountSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesPublishedFromAccountSTECopyWith<$Res> {
  __$SeriesPublishedFromAccountSTECopyWithImpl(
      _SeriesPublishedFromAccountSTE _value,
      $Res Function(_SeriesPublishedFromAccountSTE) _then)
      : super(_value, (v) => _then(v as _SeriesPublishedFromAccountSTE));

  @override
  _SeriesPublishedFromAccountSTE get _value =>
      super._value as _SeriesPublishedFromAccountSTE;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(_SeriesPublishedFromAccountSTE(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesPublishedFromAccountSTE
    implements _SeriesPublishedFromAccountSTE {
  const _$_SeriesPublishedFromAccountSTE(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesPublishedFromAccountSTE(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesPublishedFromAccountSTE &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  _$SeriesPublishedFromAccountSTECopyWith<_SeriesPublishedFromAccountSTE>
      get copyWith => __$SeriesPublishedFromAccountSTECopyWithImpl<
          _SeriesPublishedFromAccountSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromAccountSTE(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromAccountSTE != null) {
      return seriesPublishedFromAccountSTE(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromAccountSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromAccountSTE != null) {
      return seriesPublishedFromAccountSTE(this);
    }
    return orElse();
  }
}

abstract class _SeriesPublishedFromAccountSTE implements CoreDatabaseState {
  const factory _SeriesPublishedFromAccountSTE(Series series) =
      _$_SeriesPublishedFromAccountSTE;

  Series get series;
  _$SeriesPublishedFromAccountSTECopyWith<_SeriesPublishedFromAccountSTE>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesPublishedFromHomeSTECopyWith<$Res> {
  factory _$SeriesPublishedFromHomeSTECopyWith(
          _SeriesPublishedFromHomeSTE value,
          $Res Function(_SeriesPublishedFromHomeSTE) then) =
      __$SeriesPublishedFromHomeSTECopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class __$SeriesPublishedFromHomeSTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesPublishedFromHomeSTECopyWith<$Res> {
  __$SeriesPublishedFromHomeSTECopyWithImpl(_SeriesPublishedFromHomeSTE _value,
      $Res Function(_SeriesPublishedFromHomeSTE) _then)
      : super(_value, (v) => _then(v as _SeriesPublishedFromHomeSTE));

  @override
  _SeriesPublishedFromHomeSTE get _value =>
      super._value as _SeriesPublishedFromHomeSTE;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(_SeriesPublishedFromHomeSTE(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesPublishedFromHomeSTE implements _SeriesPublishedFromHomeSTE {
  const _$_SeriesPublishedFromHomeSTE(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesPublishedFromHomeSTE(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesPublishedFromHomeSTE &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  _$SeriesPublishedFromHomeSTECopyWith<_SeriesPublishedFromHomeSTE>
      get copyWith => __$SeriesPublishedFromHomeSTECopyWithImpl<
          _SeriesPublishedFromHomeSTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromAccountSTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    @required TResult seriesPublishedFromAccountSTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromHomeSTE(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromAccountSTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromAccountSTE(Chapter chapterDraft),
    TResult chapterPublishedFromAccountSTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromAccountSTE(String seriesDraftUID),
    TResult seriesDraftSavedFromAccountSTE(Series seriesDraft),
    TResult seriesPublishedFromAccountSTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeSTE != null) {
      return seriesPublishedFromHomeSTE(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromAccountSTE(
            _ChapterDraftDeletedFromAccountSTE value),
    @required
        TResult chapterDraftSavedFromAccountSTE(
            _ChapterDraftSavedFromAccountSTE value),
    @required
        TResult chapterPublishedFromAccountSTE(
            _ChapterPublishedFromAccountSTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromAccountSTE(
            _SeriesDraftDeletedFromAccountSTE value),
    @required
        TResult seriesDraftSavedFromAccountSTE(
            _SeriesDraftSavedFromAccountSTE value),
    @required
        TResult seriesPublishedFromAccountSTE(
            _SeriesPublishedFromAccountSTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromAccountSTE != null);
    assert(chapterDraftSavedFromAccountSTE != null);
    assert(chapterPublishedFromAccountSTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromAccountSTE != null);
    assert(seriesDraftSavedFromAccountSTE != null);
    assert(seriesPublishedFromAccountSTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromHomeSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromAccountSTE(
        _ChapterDraftDeletedFromAccountSTE value),
    TResult chapterDraftSavedFromAccountSTE(
        _ChapterDraftSavedFromAccountSTE value),
    TResult chapterPublishedFromAccountSTE(
        _ChapterPublishedFromAccountSTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromAccountSTE(
        _SeriesDraftDeletedFromAccountSTE value),
    TResult seriesDraftSavedFromAccountSTE(
        _SeriesDraftSavedFromAccountSTE value),
    TResult seriesPublishedFromAccountSTE(_SeriesPublishedFromAccountSTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromHomeSTE != null) {
      return seriesPublishedFromHomeSTE(this);
    }
    return orElse();
  }
}

abstract class _SeriesPublishedFromHomeSTE implements CoreDatabaseState {
  const factory _SeriesPublishedFromHomeSTE(Series series) =
      _$_SeriesPublishedFromHomeSTE;

  Series get series;
  _$SeriesPublishedFromHomeSTECopyWith<_SeriesPublishedFromHomeSTE>
      get copyWith;
}
