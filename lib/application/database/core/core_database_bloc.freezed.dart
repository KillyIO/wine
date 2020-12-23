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
  ChapterDraftDeletedFromLibraryEVT chapterDraftDeletedFromLibraryEVT(
      {String chapterDraftUID, String seriesDraftUID}) {
    return ChapterDraftDeletedFromLibraryEVT(
      chapterDraftUID: chapterDraftUID,
      seriesDraftUID: seriesDraftUID,
    );
  }

// ignore: unused_element
  ChapterDraftSavedFromLibraryEVT chapterDraftSavedFromLibraryEVT(
      Chapter chapterDraft) {
    return ChapterDraftSavedFromLibraryEVT(
      chapterDraft,
    );
  }

// ignore: unused_element
  ChapterPublishedFromLibraryEVT chapterPublishedFromLibraryEVT(
      Chapter chapter) {
    return ChapterPublishedFromLibraryEVT(
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
  SeriesDraftDeletedFromLibraryEVT seriesDraftDeletedFromLibraryEVT(
      String seriesDraftUID) {
    return SeriesDraftDeletedFromLibraryEVT(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  SeriesDraftSavedFromLibraryEVT seriesDraftSavedFromLibraryEVT(
      Series seriesDraft) {
    return SeriesDraftSavedFromLibraryEVT(
      seriesDraft,
    );
  }

// ignore: unused_element
  SeriesPublishedFromLibraryEVT seriesPublishedFromLibraryEVT(Series series) {
    return SeriesPublishedFromLibraryEVT(
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
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
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
abstract class $ChapterDraftDeletedFromLibraryEVTCopyWith<$Res> {
  factory $ChapterDraftDeletedFromLibraryEVTCopyWith(
          ChapterDraftDeletedFromLibraryEVT value,
          $Res Function(ChapterDraftDeletedFromLibraryEVT) then) =
      _$ChapterDraftDeletedFromLibraryEVTCopyWithImpl<$Res>;
  $Res call({String chapterDraftUID, String seriesDraftUID});
}

/// @nodoc
class _$ChapterDraftDeletedFromLibraryEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftDeletedFromLibraryEVTCopyWith<$Res> {
  _$ChapterDraftDeletedFromLibraryEVTCopyWithImpl(
      ChapterDraftDeletedFromLibraryEVT _value,
      $Res Function(ChapterDraftDeletedFromLibraryEVT) _then)
      : super(_value, (v) => _then(v as ChapterDraftDeletedFromLibraryEVT));

  @override
  ChapterDraftDeletedFromLibraryEVT get _value =>
      super._value as ChapterDraftDeletedFromLibraryEVT;

  @override
  $Res call({
    Object chapterDraftUID = freezed,
    Object seriesDraftUID = freezed,
  }) {
    return _then(ChapterDraftDeletedFromLibraryEVT(
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
class _$ChapterDraftDeletedFromLibraryEVT
    implements ChapterDraftDeletedFromLibraryEVT {
  const _$ChapterDraftDeletedFromLibraryEVT(
      {this.chapterDraftUID, this.seriesDraftUID});

  @override
  final String chapterDraftUID;
  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterDraftDeletedFromLibraryEVT(chapterDraftUID: $chapterDraftUID, seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftDeletedFromLibraryEVT &&
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
  $ChapterDraftDeletedFromLibraryEVTCopyWith<ChapterDraftDeletedFromLibraryEVT>
      get copyWith => _$ChapterDraftDeletedFromLibraryEVTCopyWithImpl<
          ChapterDraftDeletedFromLibraryEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftDeletedFromLibraryEVT(chapterDraftUID, seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibraryEVT != null) {
      return chapterDraftDeletedFromLibraryEVT(chapterDraftUID, seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftDeletedFromLibraryEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibraryEVT != null) {
      return chapterDraftDeletedFromLibraryEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftDeletedFromLibraryEVT implements CoreDatabaseEvent {
  const factory ChapterDraftDeletedFromLibraryEVT(
      {String chapterDraftUID,
      String seriesDraftUID}) = _$ChapterDraftDeletedFromLibraryEVT;

  String get chapterDraftUID;
  String get seriesDraftUID;
  $ChapterDraftDeletedFromLibraryEVTCopyWith<ChapterDraftDeletedFromLibraryEVT>
      get copyWith;
}

/// @nodoc
abstract class $ChapterDraftSavedFromLibraryEVTCopyWith<$Res> {
  factory $ChapterDraftSavedFromLibraryEVTCopyWith(
          ChapterDraftSavedFromLibraryEVT value,
          $Res Function(ChapterDraftSavedFromLibraryEVT) then) =
      _$ChapterDraftSavedFromLibraryEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapterDraft});
}

/// @nodoc
class _$ChapterDraftSavedFromLibraryEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftSavedFromLibraryEVTCopyWith<$Res> {
  _$ChapterDraftSavedFromLibraryEVTCopyWithImpl(
      ChapterDraftSavedFromLibraryEVT _value,
      $Res Function(ChapterDraftSavedFromLibraryEVT) _then)
      : super(_value, (v) => _then(v as ChapterDraftSavedFromLibraryEVT));

  @override
  ChapterDraftSavedFromLibraryEVT get _value =>
      super._value as ChapterDraftSavedFromLibraryEVT;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(ChapterDraftSavedFromLibraryEVT(
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterDraftSavedFromLibraryEVT
    implements ChapterDraftSavedFromLibraryEVT {
  const _$ChapterDraftSavedFromLibraryEVT(this.chapterDraft)
      : assert(chapterDraft != null);

  @override
  final Chapter chapterDraft;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterDraftSavedFromLibraryEVT(chapterDraft: $chapterDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftSavedFromLibraryEVT &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  $ChapterDraftSavedFromLibraryEVTCopyWith<ChapterDraftSavedFromLibraryEVT>
      get copyWith => _$ChapterDraftSavedFromLibraryEVTCopyWithImpl<
          ChapterDraftSavedFromLibraryEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftSavedFromLibraryEVT(chapterDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibraryEVT != null) {
      return chapterDraftSavedFromLibraryEVT(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterDraftSavedFromLibraryEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibraryEVT != null) {
      return chapterDraftSavedFromLibraryEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftSavedFromLibraryEVT implements CoreDatabaseEvent {
  const factory ChapterDraftSavedFromLibraryEVT(Chapter chapterDraft) =
      _$ChapterDraftSavedFromLibraryEVT;

  Chapter get chapterDraft;
  $ChapterDraftSavedFromLibraryEVTCopyWith<ChapterDraftSavedFromLibraryEVT>
      get copyWith;
}

/// @nodoc
abstract class $ChapterPublishedFromLibraryEVTCopyWith<$Res> {
  factory $ChapterPublishedFromLibraryEVTCopyWith(
          ChapterPublishedFromLibraryEVT value,
          $Res Function(ChapterPublishedFromLibraryEVT) then) =
      _$ChapterPublishedFromLibraryEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class _$ChapterPublishedFromLibraryEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedFromLibraryEVTCopyWith<$Res> {
  _$ChapterPublishedFromLibraryEVTCopyWithImpl(
      ChapterPublishedFromLibraryEVT _value,
      $Res Function(ChapterPublishedFromLibraryEVT) _then)
      : super(_value, (v) => _then(v as ChapterPublishedFromLibraryEVT));

  @override
  ChapterPublishedFromLibraryEVT get _value =>
      super._value as ChapterPublishedFromLibraryEVT;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterPublishedFromLibraryEVT(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterPublishedFromLibraryEVT
    implements ChapterPublishedFromLibraryEVT {
  const _$ChapterPublishedFromLibraryEVT(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseEvent.chapterPublishedFromLibraryEVT(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPublishedFromLibraryEVT &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterPublishedFromLibraryEVTCopyWith<ChapterPublishedFromLibraryEVT>
      get copyWith => _$ChapterPublishedFromLibraryEVTCopyWithImpl<
          ChapterPublishedFromLibraryEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromLibraryEVT(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibraryEVT != null) {
      return chapterPublishedFromLibraryEVT(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromLibraryEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibraryEVT != null) {
      return chapterPublishedFromLibraryEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedFromLibraryEVT implements CoreDatabaseEvent {
  const factory ChapterPublishedFromLibraryEVT(Chapter chapter) =
      _$ChapterPublishedFromLibraryEVT;

  Chapter get chapter;
  $ChapterPublishedFromLibraryEVTCopyWith<ChapterPublishedFromLibraryEVT>
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
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromChapterEVT(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
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
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return chapterPublishedFromChapterEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
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
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
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
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
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
abstract class $SeriesDraftDeletedFromLibraryEVTCopyWith<$Res> {
  factory $SeriesDraftDeletedFromLibraryEVTCopyWith(
          SeriesDraftDeletedFromLibraryEVT value,
          $Res Function(SeriesDraftDeletedFromLibraryEVT) then) =
      _$SeriesDraftDeletedFromLibraryEVTCopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class _$SeriesDraftDeletedFromLibraryEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftDeletedFromLibraryEVTCopyWith<$Res> {
  _$SeriesDraftDeletedFromLibraryEVTCopyWithImpl(
      SeriesDraftDeletedFromLibraryEVT _value,
      $Res Function(SeriesDraftDeletedFromLibraryEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftDeletedFromLibraryEVT));

  @override
  SeriesDraftDeletedFromLibraryEVT get _value =>
      super._value as SeriesDraftDeletedFromLibraryEVT;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(SeriesDraftDeletedFromLibraryEVT(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$SeriesDraftDeletedFromLibraryEVT
    implements SeriesDraftDeletedFromLibraryEVT {
  const _$SeriesDraftDeletedFromLibraryEVT(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesDraftDeletedFromLibraryEVT(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftDeletedFromLibraryEVT &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  $SeriesDraftDeletedFromLibraryEVTCopyWith<SeriesDraftDeletedFromLibraryEVT>
      get copyWith => _$SeriesDraftDeletedFromLibraryEVTCopyWithImpl<
          SeriesDraftDeletedFromLibraryEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftDeletedFromLibraryEVT(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibraryEVT != null) {
      return seriesDraftDeletedFromLibraryEVT(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftDeletedFromLibraryEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibraryEVT != null) {
      return seriesDraftDeletedFromLibraryEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftDeletedFromLibraryEVT implements CoreDatabaseEvent {
  const factory SeriesDraftDeletedFromLibraryEVT(String seriesDraftUID) =
      _$SeriesDraftDeletedFromLibraryEVT;

  String get seriesDraftUID;
  $SeriesDraftDeletedFromLibraryEVTCopyWith<SeriesDraftDeletedFromLibraryEVT>
      get copyWith;
}

/// @nodoc
abstract class $SeriesDraftSavedFromLibraryEVTCopyWith<$Res> {
  factory $SeriesDraftSavedFromLibraryEVTCopyWith(
          SeriesDraftSavedFromLibraryEVT value,
          $Res Function(SeriesDraftSavedFromLibraryEVT) then) =
      _$SeriesDraftSavedFromLibraryEVTCopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class _$SeriesDraftSavedFromLibraryEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftSavedFromLibraryEVTCopyWith<$Res> {
  _$SeriesDraftSavedFromLibraryEVTCopyWithImpl(
      SeriesDraftSavedFromLibraryEVT _value,
      $Res Function(SeriesDraftSavedFromLibraryEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftSavedFromLibraryEVT));

  @override
  SeriesDraftSavedFromLibraryEVT get _value =>
      super._value as SeriesDraftSavedFromLibraryEVT;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(SeriesDraftSavedFromLibraryEVT(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$SeriesDraftSavedFromLibraryEVT
    implements SeriesDraftSavedFromLibraryEVT {
  const _$SeriesDraftSavedFromLibraryEVT(this.seriesDraft)
      : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesDraftSavedFromLibraryEVT(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftSavedFromLibraryEVT &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  $SeriesDraftSavedFromLibraryEVTCopyWith<SeriesDraftSavedFromLibraryEVT>
      get copyWith => _$SeriesDraftSavedFromLibraryEVTCopyWithImpl<
          SeriesDraftSavedFromLibraryEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftSavedFromLibraryEVT(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibraryEVT != null) {
      return seriesDraftSavedFromLibraryEVT(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesDraftSavedFromLibraryEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibraryEVT != null) {
      return seriesDraftSavedFromLibraryEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftSavedFromLibraryEVT implements CoreDatabaseEvent {
  const factory SeriesDraftSavedFromLibraryEVT(Series seriesDraft) =
      _$SeriesDraftSavedFromLibraryEVT;

  Series get seriesDraft;
  $SeriesDraftSavedFromLibraryEVTCopyWith<SeriesDraftSavedFromLibraryEVT>
      get copyWith;
}

/// @nodoc
abstract class $SeriesPublishedFromLibraryEVTCopyWith<$Res> {
  factory $SeriesPublishedFromLibraryEVTCopyWith(
          SeriesPublishedFromLibraryEVT value,
          $Res Function(SeriesPublishedFromLibraryEVT) then) =
      _$SeriesPublishedFromLibraryEVTCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class _$SeriesPublishedFromLibraryEVTCopyWithImpl<$Res>
    extends _$CoreDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedFromLibraryEVTCopyWith<$Res> {
  _$SeriesPublishedFromLibraryEVTCopyWithImpl(
      SeriesPublishedFromLibraryEVT _value,
      $Res Function(SeriesPublishedFromLibraryEVT) _then)
      : super(_value, (v) => _then(v as SeriesPublishedFromLibraryEVT));

  @override
  SeriesPublishedFromLibraryEVT get _value =>
      super._value as SeriesPublishedFromLibraryEVT;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(SeriesPublishedFromLibraryEVT(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$SeriesPublishedFromLibraryEVT implements SeriesPublishedFromLibraryEVT {
  const _$SeriesPublishedFromLibraryEVT(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseEvent.seriesPublishedFromLibraryEVT(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedFromLibraryEVT &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  $SeriesPublishedFromLibraryEVTCopyWith<SeriesPublishedFromLibraryEVT>
      get copyWith => _$SeriesPublishedFromLibraryEVTCopyWithImpl<
          SeriesPublishedFromLibraryEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromLibraryEVT(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
    TResult seriesPublishedFromHomeEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibraryEVT != null) {
      return seriesPublishedFromLibraryEVT(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromLibraryEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
    TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibraryEVT != null) {
      return seriesPublishedFromLibraryEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedFromLibraryEVT implements CoreDatabaseEvent {
  const factory SeriesPublishedFromLibraryEVT(Series series) =
      _$SeriesPublishedFromLibraryEVT;

  Series get series;
  $SeriesPublishedFromLibraryEVTCopyWith<SeriesPublishedFromLibraryEVT>
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
        TResult chapterDraftDeletedFromLibraryEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    @required TResult chapterPublishedFromChapterEVT(Chapter chapter),
    @required TResult resetBlocEVT(),
    @required TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    @required TResult seriesPublishedFromLibraryEVT(Series series),
    @required TResult seriesPublishedFromHomeEVT(Series series),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromHomeEVT(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibraryEVT(Chapter chapterDraft),
    TResult chapterPublishedFromLibraryEVT(Chapter chapter),
    TResult chapterPublishedFromChapterEVT(Chapter chapter),
    TResult resetBlocEVT(),
    TResult seriesDraftDeletedFromLibraryEVT(String seriesDraftUID),
    TResult seriesDraftSavedFromLibraryEVT(Series seriesDraft),
    TResult seriesPublishedFromLibraryEVT(Series series),
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
        TResult chapterDraftDeletedFromLibraryEVT(
            ChapterDraftDeletedFromLibraryEVT value),
    @required
        TResult chapterDraftSavedFromLibraryEVT(
            ChapterDraftSavedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromLibraryEVT(
            ChapterPublishedFromLibraryEVT value),
    @required
        TResult chapterPublishedFromChapterEVT(
            ChapterPublishedFromChapterEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult seriesDraftDeletedFromLibraryEVT(
            SeriesDraftDeletedFromLibraryEVT value),
    @required
        TResult seriesDraftSavedFromLibraryEVT(
            SeriesDraftSavedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromLibraryEVT(
            SeriesPublishedFromLibraryEVT value),
    @required
        TResult seriesPublishedFromHomeEVT(SeriesPublishedFromHomeEVT value),
  }) {
    assert(chapterDraftDeletedFromLibraryEVT != null);
    assert(chapterDraftSavedFromLibraryEVT != null);
    assert(chapterPublishedFromLibraryEVT != null);
    assert(chapterPublishedFromChapterEVT != null);
    assert(resetBlocEVT != null);
    assert(seriesDraftDeletedFromLibraryEVT != null);
    assert(seriesDraftSavedFromLibraryEVT != null);
    assert(seriesPublishedFromLibraryEVT != null);
    assert(seriesPublishedFromHomeEVT != null);
    return seriesPublishedFromHomeEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chapterDraftDeletedFromLibraryEVT(
        ChapterDraftDeletedFromLibraryEVT value),
    TResult chapterDraftSavedFromLibraryEVT(
        ChapterDraftSavedFromLibraryEVT value),
    TResult chapterPublishedFromLibraryEVT(
        ChapterPublishedFromLibraryEVT value),
    TResult chapterPublishedFromChapterEVT(
        ChapterPublishedFromChapterEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult seriesDraftDeletedFromLibraryEVT(
        SeriesDraftDeletedFromLibraryEVT value),
    TResult seriesDraftSavedFromLibraryEVT(
        SeriesDraftSavedFromLibraryEVT value),
    TResult seriesPublishedFromLibraryEVT(SeriesPublishedFromLibraryEVT value),
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
  _ChapterDraftDeletedFromLibrarySTE chapterDraftDeletedFromLibrarySTE(
      {String chapterDraftUID, String seriesDraftUID}) {
    return _ChapterDraftDeletedFromLibrarySTE(
      chapterDraftUID: chapterDraftUID,
      seriesDraftUID: seriesDraftUID,
    );
  }

// ignore: unused_element
  _ChapterDraftSavedFromLibrarySTE chapterDraftSavedFromLibrarySTE(
      Chapter chapterDraft) {
    return _ChapterDraftSavedFromLibrarySTE(
      chapterDraft,
    );
  }

// ignore: unused_element
  _ChapterPublishedFromLibrarySTE chapterPublishedFromLibrarySTE(
      Chapter chapter) {
    return _ChapterPublishedFromLibrarySTE(
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
  _SeriesDraftDeletedFromLibrarySTE seriesDraftDeletedFromLibrarySTE(
      String seriesDraftUID) {
    return _SeriesDraftDeletedFromLibrarySTE(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  _SeriesDraftSavedFromLibrarySTE seriesDraftSavedFromLibrarySTE(
      Series seriesDraft) {
    return _SeriesDraftSavedFromLibrarySTE(
      seriesDraft,
    );
  }

// ignore: unused_element
  _SeriesPublishedFromLibrarySTE seriesPublishedFromLibrarySTE(Series series) {
    return _SeriesPublishedFromLibrarySTE(
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
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
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
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
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
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
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
abstract class _$ChapterDraftDeletedFromLibrarySTECopyWith<$Res> {
  factory _$ChapterDraftDeletedFromLibrarySTECopyWith(
          _ChapterDraftDeletedFromLibrarySTE value,
          $Res Function(_ChapterDraftDeletedFromLibrarySTE) then) =
      __$ChapterDraftDeletedFromLibrarySTECopyWithImpl<$Res>;
  $Res call({String chapterDraftUID, String seriesDraftUID});
}

/// @nodoc
class __$ChapterDraftDeletedFromLibrarySTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterDraftDeletedFromLibrarySTECopyWith<$Res> {
  __$ChapterDraftDeletedFromLibrarySTECopyWithImpl(
      _ChapterDraftDeletedFromLibrarySTE _value,
      $Res Function(_ChapterDraftDeletedFromLibrarySTE) _then)
      : super(_value, (v) => _then(v as _ChapterDraftDeletedFromLibrarySTE));

  @override
  _ChapterDraftDeletedFromLibrarySTE get _value =>
      super._value as _ChapterDraftDeletedFromLibrarySTE;

  @override
  $Res call({
    Object chapterDraftUID = freezed,
    Object seriesDraftUID = freezed,
  }) {
    return _then(_ChapterDraftDeletedFromLibrarySTE(
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
class _$_ChapterDraftDeletedFromLibrarySTE
    implements _ChapterDraftDeletedFromLibrarySTE {
  const _$_ChapterDraftDeletedFromLibrarySTE(
      {this.chapterDraftUID, this.seriesDraftUID});

  @override
  final String chapterDraftUID;
  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterDraftDeletedFromLibrarySTE(chapterDraftUID: $chapterDraftUID, seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterDraftDeletedFromLibrarySTE &&
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
  _$ChapterDraftDeletedFromLibrarySTECopyWith<
          _ChapterDraftDeletedFromLibrarySTE>
      get copyWith => __$ChapterDraftDeletedFromLibrarySTECopyWithImpl<
          _ChapterDraftDeletedFromLibrarySTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftDeletedFromLibrarySTE(chapterDraftUID, seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibrarySTE != null) {
      return chapterDraftDeletedFromLibrarySTE(chapterDraftUID, seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftDeletedFromLibrarySTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedFromLibrarySTE != null) {
      return chapterDraftDeletedFromLibrarySTE(this);
    }
    return orElse();
  }
}

abstract class _ChapterDraftDeletedFromLibrarySTE implements CoreDatabaseState {
  const factory _ChapterDraftDeletedFromLibrarySTE(
      {String chapterDraftUID,
      String seriesDraftUID}) = _$_ChapterDraftDeletedFromLibrarySTE;

  String get chapterDraftUID;
  String get seriesDraftUID;
  _$ChapterDraftDeletedFromLibrarySTECopyWith<
      _ChapterDraftDeletedFromLibrarySTE> get copyWith;
}

/// @nodoc
abstract class _$ChapterDraftSavedFromLibrarySTECopyWith<$Res> {
  factory _$ChapterDraftSavedFromLibrarySTECopyWith(
          _ChapterDraftSavedFromLibrarySTE value,
          $Res Function(_ChapterDraftSavedFromLibrarySTE) then) =
      __$ChapterDraftSavedFromLibrarySTECopyWithImpl<$Res>;
  $Res call({Chapter chapterDraft});
}

/// @nodoc
class __$ChapterDraftSavedFromLibrarySTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterDraftSavedFromLibrarySTECopyWith<$Res> {
  __$ChapterDraftSavedFromLibrarySTECopyWithImpl(
      _ChapterDraftSavedFromLibrarySTE _value,
      $Res Function(_ChapterDraftSavedFromLibrarySTE) _then)
      : super(_value, (v) => _then(v as _ChapterDraftSavedFromLibrarySTE));

  @override
  _ChapterDraftSavedFromLibrarySTE get _value =>
      super._value as _ChapterDraftSavedFromLibrarySTE;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(_ChapterDraftSavedFromLibrarySTE(
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterDraftSavedFromLibrarySTE
    implements _ChapterDraftSavedFromLibrarySTE {
  const _$_ChapterDraftSavedFromLibrarySTE(this.chapterDraft)
      : assert(chapterDraft != null);

  @override
  final Chapter chapterDraft;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterDraftSavedFromLibrarySTE(chapterDraft: $chapterDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterDraftSavedFromLibrarySTE &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  _$ChapterDraftSavedFromLibrarySTECopyWith<_ChapterDraftSavedFromLibrarySTE>
      get copyWith => __$ChapterDraftSavedFromLibrarySTECopyWithImpl<
          _ChapterDraftSavedFromLibrarySTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftSavedFromLibrarySTE(chapterDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibrarySTE != null) {
      return chapterDraftSavedFromLibrarySTE(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterDraftSavedFromLibrarySTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedFromLibrarySTE != null) {
      return chapterDraftSavedFromLibrarySTE(this);
    }
    return orElse();
  }
}

abstract class _ChapterDraftSavedFromLibrarySTE implements CoreDatabaseState {
  const factory _ChapterDraftSavedFromLibrarySTE(Chapter chapterDraft) =
      _$_ChapterDraftSavedFromLibrarySTE;

  Chapter get chapterDraft;
  _$ChapterDraftSavedFromLibrarySTECopyWith<_ChapterDraftSavedFromLibrarySTE>
      get copyWith;
}

/// @nodoc
abstract class _$ChapterPublishedFromLibrarySTECopyWith<$Res> {
  factory _$ChapterPublishedFromLibrarySTECopyWith(
          _ChapterPublishedFromLibrarySTE value,
          $Res Function(_ChapterPublishedFromLibrarySTE) then) =
      __$ChapterPublishedFromLibrarySTECopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class __$ChapterPublishedFromLibrarySTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$ChapterPublishedFromLibrarySTECopyWith<$Res> {
  __$ChapterPublishedFromLibrarySTECopyWithImpl(
      _ChapterPublishedFromLibrarySTE _value,
      $Res Function(_ChapterPublishedFromLibrarySTE) _then)
      : super(_value, (v) => _then(v as _ChapterPublishedFromLibrarySTE));

  @override
  _ChapterPublishedFromLibrarySTE get _value =>
      super._value as _ChapterPublishedFromLibrarySTE;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(_ChapterPublishedFromLibrarySTE(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$_ChapterPublishedFromLibrarySTE
    implements _ChapterPublishedFromLibrarySTE {
  const _$_ChapterPublishedFromLibrarySTE(this.chapter)
      : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString() {
    return 'CoreDatabaseState.chapterPublishedFromLibrarySTE(chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterPublishedFromLibrarySTE &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  _$ChapterPublishedFromLibrarySTECopyWith<_ChapterPublishedFromLibrarySTE>
      get copyWith => __$ChapterPublishedFromLibrarySTECopyWithImpl<
          _ChapterPublishedFromLibrarySTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromLibrarySTE(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibrarySTE != null) {
      return chapterPublishedFromLibrarySTE(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromLibrarySTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedFromLibrarySTE != null) {
      return chapterPublishedFromLibrarySTE(this);
    }
    return orElse();
  }
}

abstract class _ChapterPublishedFromLibrarySTE implements CoreDatabaseState {
  const factory _ChapterPublishedFromLibrarySTE(Chapter chapter) =
      _$_ChapterPublishedFromLibrarySTE;

  Chapter get chapter;
  _$ChapterPublishedFromLibrarySTECopyWith<_ChapterPublishedFromLibrarySTE>
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
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromChapterSTE(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
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
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return chapterPublishedFromChapterSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
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
abstract class _$SeriesDraftDeletedFromLibrarySTECopyWith<$Res> {
  factory _$SeriesDraftDeletedFromLibrarySTECopyWith(
          _SeriesDraftDeletedFromLibrarySTE value,
          $Res Function(_SeriesDraftDeletedFromLibrarySTE) then) =
      __$SeriesDraftDeletedFromLibrarySTECopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class __$SeriesDraftDeletedFromLibrarySTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDraftDeletedFromLibrarySTECopyWith<$Res> {
  __$SeriesDraftDeletedFromLibrarySTECopyWithImpl(
      _SeriesDraftDeletedFromLibrarySTE _value,
      $Res Function(_SeriesDraftDeletedFromLibrarySTE) _then)
      : super(_value, (v) => _then(v as _SeriesDraftDeletedFromLibrarySTE));

  @override
  _SeriesDraftDeletedFromLibrarySTE get _value =>
      super._value as _SeriesDraftDeletedFromLibrarySTE;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(_SeriesDraftDeletedFromLibrarySTE(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$_SeriesDraftDeletedFromLibrarySTE
    implements _SeriesDraftDeletedFromLibrarySTE {
  const _$_SeriesDraftDeletedFromLibrarySTE(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesDraftDeletedFromLibrarySTE(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDraftDeletedFromLibrarySTE &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  _$SeriesDraftDeletedFromLibrarySTECopyWith<_SeriesDraftDeletedFromLibrarySTE>
      get copyWith => __$SeriesDraftDeletedFromLibrarySTECopyWithImpl<
          _SeriesDraftDeletedFromLibrarySTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftDeletedFromLibrarySTE(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibrarySTE != null) {
      return seriesDraftDeletedFromLibrarySTE(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftDeletedFromLibrarySTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedFromLibrarySTE != null) {
      return seriesDraftDeletedFromLibrarySTE(this);
    }
    return orElse();
  }
}

abstract class _SeriesDraftDeletedFromLibrarySTE implements CoreDatabaseState {
  const factory _SeriesDraftDeletedFromLibrarySTE(String seriesDraftUID) =
      _$_SeriesDraftDeletedFromLibrarySTE;

  String get seriesDraftUID;
  _$SeriesDraftDeletedFromLibrarySTECopyWith<_SeriesDraftDeletedFromLibrarySTE>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesDraftSavedFromLibrarySTECopyWith<$Res> {
  factory _$SeriesDraftSavedFromLibrarySTECopyWith(
          _SeriesDraftSavedFromLibrarySTE value,
          $Res Function(_SeriesDraftSavedFromLibrarySTE) then) =
      __$SeriesDraftSavedFromLibrarySTECopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class __$SeriesDraftSavedFromLibrarySTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDraftSavedFromLibrarySTECopyWith<$Res> {
  __$SeriesDraftSavedFromLibrarySTECopyWithImpl(
      _SeriesDraftSavedFromLibrarySTE _value,
      $Res Function(_SeriesDraftSavedFromLibrarySTE) _then)
      : super(_value, (v) => _then(v as _SeriesDraftSavedFromLibrarySTE));

  @override
  _SeriesDraftSavedFromLibrarySTE get _value =>
      super._value as _SeriesDraftSavedFromLibrarySTE;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(_SeriesDraftSavedFromLibrarySTE(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesDraftSavedFromLibrarySTE
    implements _SeriesDraftSavedFromLibrarySTE {
  const _$_SeriesDraftSavedFromLibrarySTE(this.seriesDraft)
      : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesDraftSavedFromLibrarySTE(seriesDraft: $seriesDraft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDraftSavedFromLibrarySTE &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  _$SeriesDraftSavedFromLibrarySTECopyWith<_SeriesDraftSavedFromLibrarySTE>
      get copyWith => __$SeriesDraftSavedFromLibrarySTECopyWithImpl<
          _SeriesDraftSavedFromLibrarySTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftSavedFromLibrarySTE(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibrarySTE != null) {
      return seriesDraftSavedFromLibrarySTE(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesDraftSavedFromLibrarySTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedFromLibrarySTE != null) {
      return seriesDraftSavedFromLibrarySTE(this);
    }
    return orElse();
  }
}

abstract class _SeriesDraftSavedFromLibrarySTE implements CoreDatabaseState {
  const factory _SeriesDraftSavedFromLibrarySTE(Series seriesDraft) =
      _$_SeriesDraftSavedFromLibrarySTE;

  Series get seriesDraft;
  _$SeriesDraftSavedFromLibrarySTECopyWith<_SeriesDraftSavedFromLibrarySTE>
      get copyWith;
}

/// @nodoc
abstract class _$SeriesPublishedFromLibrarySTECopyWith<$Res> {
  factory _$SeriesPublishedFromLibrarySTECopyWith(
          _SeriesPublishedFromLibrarySTE value,
          $Res Function(_SeriesPublishedFromLibrarySTE) then) =
      __$SeriesPublishedFromLibrarySTECopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class __$SeriesPublishedFromLibrarySTECopyWithImpl<$Res>
    extends _$CoreDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesPublishedFromLibrarySTECopyWith<$Res> {
  __$SeriesPublishedFromLibrarySTECopyWithImpl(
      _SeriesPublishedFromLibrarySTE _value,
      $Res Function(_SeriesPublishedFromLibrarySTE) _then)
      : super(_value, (v) => _then(v as _SeriesPublishedFromLibrarySTE));

  @override
  _SeriesPublishedFromLibrarySTE get _value =>
      super._value as _SeriesPublishedFromLibrarySTE;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(_SeriesPublishedFromLibrarySTE(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$_SeriesPublishedFromLibrarySTE
    implements _SeriesPublishedFromLibrarySTE {
  const _$_SeriesPublishedFromLibrarySTE(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'CoreDatabaseState.seriesPublishedFromLibrarySTE(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesPublishedFromLibrarySTE &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  _$SeriesPublishedFromLibrarySTECopyWith<_SeriesPublishedFromLibrarySTE>
      get copyWith => __$SeriesPublishedFromLibrarySTECopyWithImpl<
          _SeriesPublishedFromLibrarySTE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromLibrarySTE(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
    TResult seriesPublishedFromHomeSTE(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibrarySTE != null) {
      return seriesPublishedFromLibrarySTE(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromLibrarySTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
    TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedFromLibrarySTE != null) {
      return seriesPublishedFromLibrarySTE(this);
    }
    return orElse();
  }
}

abstract class _SeriesPublishedFromLibrarySTE implements CoreDatabaseState {
  const factory _SeriesPublishedFromLibrarySTE(Series series) =
      _$_SeriesPublishedFromLibrarySTE;

  Series get series;
  _$SeriesPublishedFromLibrarySTECopyWith<_SeriesPublishedFromLibrarySTE>
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
        TResult chapterDraftDeletedFromLibrarySTE(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    @required TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    @required TResult chapterPublishedFromChapterSTE(Chapter chapter),
    @required TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    @required TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    @required TResult seriesPublishedFromLibrarySTE(Series series),
    @required TResult seriesPublishedFromHomeSTE(Series series),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromHomeSTE(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chapterDraftDeletedFromLibrarySTE(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedFromLibrarySTE(Chapter chapterDraft),
    TResult chapterPublishedFromLibrarySTE(Chapter chapter),
    TResult chapterPublishedFromChapterSTE(Chapter chapter),
    TResult seriesDraftDeletedFromLibrarySTE(String seriesDraftUID),
    TResult seriesDraftSavedFromLibrarySTE(Series seriesDraft),
    TResult seriesPublishedFromLibrarySTE(Series series),
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
        TResult chapterDraftDeletedFromLibrarySTE(
            _ChapterDraftDeletedFromLibrarySTE value),
    @required
        TResult chapterDraftSavedFromLibrarySTE(
            _ChapterDraftSavedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromLibrarySTE(
            _ChapterPublishedFromLibrarySTE value),
    @required
        TResult chapterPublishedFromChapterSTE(
            _ChapterPublishedFromChapterSTE value),
    @required
        TResult seriesDraftDeletedFromLibrarySTE(
            _SeriesDraftDeletedFromLibrarySTE value),
    @required
        TResult seriesDraftSavedFromLibrarySTE(
            _SeriesDraftSavedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromLibrarySTE(
            _SeriesPublishedFromLibrarySTE value),
    @required
        TResult seriesPublishedFromHomeSTE(_SeriesPublishedFromHomeSTE value),
  }) {
    assert(initial != null);
    assert(chapterDraftDeletedFromLibrarySTE != null);
    assert(chapterDraftSavedFromLibrarySTE != null);
    assert(chapterPublishedFromLibrarySTE != null);
    assert(chapterPublishedFromChapterSTE != null);
    assert(seriesDraftDeletedFromLibrarySTE != null);
    assert(seriesDraftSavedFromLibrarySTE != null);
    assert(seriesPublishedFromLibrarySTE != null);
    assert(seriesPublishedFromHomeSTE != null);
    return seriesPublishedFromHomeSTE(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chapterDraftDeletedFromLibrarySTE(
        _ChapterDraftDeletedFromLibrarySTE value),
    TResult chapterDraftSavedFromLibrarySTE(
        _ChapterDraftSavedFromLibrarySTE value),
    TResult chapterPublishedFromLibrarySTE(
        _ChapterPublishedFromLibrarySTE value),
    TResult chapterPublishedFromChapterSTE(
        _ChapterPublishedFromChapterSTE value),
    TResult seriesDraftDeletedFromLibrarySTE(
        _SeriesDraftDeletedFromLibrarySTE value),
    TResult seriesDraftSavedFromLibrarySTE(
        _SeriesDraftSavedFromLibrarySTE value),
    TResult seriesPublishedFromLibrarySTE(_SeriesPublishedFromLibrarySTE value),
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
