// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountDatabaseEventTearOff {
  const _$AccountDatabaseEventTearOff();

// ignore: unused_element
  AccountLaunchedEVT accountLaunchedEVT() {
    return const AccountLaunchedEVT();
  }

// ignore: unused_element
  ChapterDraftDeletedEVT chapterDraftDeletedEVT(
      {String chapterDraftUID, String seriesDraftUID}) {
    return ChapterDraftDeletedEVT(
      chapterDraftUID: chapterDraftUID,
      seriesDraftUID: seriesDraftUID,
    );
  }

// ignore: unused_element
  ChapterDraftSavedEVT chapterDraftSavedEVT(Chapter chapterDraft) {
    return ChapterDraftSavedEVT(
      chapterDraft,
    );
  }

// ignore: unused_element
  ChapterPublishedEVT chapterPublishedEVT(Chapter chapter) {
    return ChapterPublishedEVT(
      chapter,
    );
  }

// ignore: unused_element
  ChapterTileHeldEVT chapterTileHeldEVT(String seriesUID) {
    return ChapterTileHeldEVT(
      seriesUID,
    );
  }

// ignore: unused_element
  IndexChangedToChapterBookmarkedEVT indexChangedToChapterBookmarkedEVT() {
    return const IndexChangedToChapterBookmarkedEVT();
  }

// ignore: unused_element
  IndexChangedToChapterDraftsEVT indexChangedToChapterDraftsEVT() {
    return const IndexChangedToChapterDraftsEVT();
  }

// ignore: unused_element
  IndexChangedToChapterPublishedEVT indexChangedToChapterPublishedEVT() {
    return const IndexChangedToChapterPublishedEVT();
  }

// ignore: unused_element
  IndexChangedToSeriesBookmarkedEVT indexChangedToSeriesBookmarkedEVT() {
    return const IndexChangedToSeriesBookmarkedEVT();
  }

// ignore: unused_element
  IndexChangedToSeriesDraftsEVT indexChangedToSeriesDraftsEVT() {
    return const IndexChangedToSeriesDraftsEVT();
  }

// ignore: unused_element
  IndexChangedToSeriesPublishedEVT indexChangedToSeriesPublishedEVT() {
    return const IndexChangedToSeriesPublishedEVT();
  }

// ignore: unused_element
  SeriesDraftDeletedEVT seriesDraftDeletedEVT(String seriesDraftUID) {
    return SeriesDraftDeletedEVT(
      seriesDraftUID,
    );
  }

// ignore: unused_element
  SeriesDraftSavedEVT seriesDraftSavedEVT(Series seriesDraft) {
    return SeriesDraftSavedEVT(
      seriesDraft,
    );
  }

// ignore: unused_element
  SeriesPublishedEVT seriesPublishedEVT(Series series) {
    return SeriesPublishedEVT(
      series,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountDatabaseEvent = _$AccountDatabaseEventTearOff();

/// @nodoc
mixin _$AccountDatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AccountDatabaseEventCopyWith<$Res> {
  factory $AccountDatabaseEventCopyWith(AccountDatabaseEvent value,
          $Res Function(AccountDatabaseEvent) then) =
      _$AccountDatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $AccountDatabaseEventCopyWith<$Res> {
  _$AccountDatabaseEventCopyWithImpl(this._value, this._then);

  final AccountDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(AccountDatabaseEvent) _then;
}

/// @nodoc
abstract class $AccountLaunchedEVTCopyWith<$Res> {
  factory $AccountLaunchedEVTCopyWith(
          AccountLaunchedEVT value, $Res Function(AccountLaunchedEVT) then) =
      _$AccountLaunchedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountLaunchedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $AccountLaunchedEVTCopyWith<$Res> {
  _$AccountLaunchedEVTCopyWithImpl(
      AccountLaunchedEVT _value, $Res Function(AccountLaunchedEVT) _then)
      : super(_value, (v) => _then(v as AccountLaunchedEVT));

  @override
  AccountLaunchedEVT get _value => super._value as AccountLaunchedEVT;
}

/// @nodoc
class _$AccountLaunchedEVT
    with DiagnosticableTreeMixin
    implements AccountLaunchedEVT {
  const _$AccountLaunchedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.accountLaunchedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.accountLaunchedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountLaunchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return accountLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountLaunchedEVT != null) {
      return accountLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return accountLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountLaunchedEVT != null) {
      return accountLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class AccountLaunchedEVT implements AccountDatabaseEvent {
  const factory AccountLaunchedEVT() = _$AccountLaunchedEVT;
}

/// @nodoc
abstract class $ChapterDraftDeletedEVTCopyWith<$Res> {
  factory $ChapterDraftDeletedEVTCopyWith(ChapterDraftDeletedEVT value,
          $Res Function(ChapterDraftDeletedEVT) then) =
      _$ChapterDraftDeletedEVTCopyWithImpl<$Res>;
  $Res call({String chapterDraftUID, String seriesDraftUID});
}

/// @nodoc
class _$ChapterDraftDeletedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftDeletedEVTCopyWith<$Res> {
  _$ChapterDraftDeletedEVTCopyWithImpl(ChapterDraftDeletedEVT _value,
      $Res Function(ChapterDraftDeletedEVT) _then)
      : super(_value, (v) => _then(v as ChapterDraftDeletedEVT));

  @override
  ChapterDraftDeletedEVT get _value => super._value as ChapterDraftDeletedEVT;

  @override
  $Res call({
    Object chapterDraftUID = freezed,
    Object seriesDraftUID = freezed,
  }) {
    return _then(ChapterDraftDeletedEVT(
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
class _$ChapterDraftDeletedEVT
    with DiagnosticableTreeMixin
    implements ChapterDraftDeletedEVT {
  const _$ChapterDraftDeletedEVT({this.chapterDraftUID, this.seriesDraftUID});

  @override
  final String chapterDraftUID;
  @override
  final String seriesDraftUID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.chapterDraftDeletedEVT(chapterDraftUID: $chapterDraftUID, seriesDraftUID: $seriesDraftUID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.chapterDraftDeletedEVT'))
      ..add(DiagnosticsProperty('chapterDraftUID', chapterDraftUID))
      ..add(DiagnosticsProperty('seriesDraftUID', seriesDraftUID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftDeletedEVT &&
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
  $ChapterDraftDeletedEVTCopyWith<ChapterDraftDeletedEVT> get copyWith =>
      _$ChapterDraftDeletedEVTCopyWithImpl<ChapterDraftDeletedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterDraftDeletedEVT(chapterDraftUID, seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedEVT != null) {
      return chapterDraftDeletedEVT(chapterDraftUID, seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterDraftDeletedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftDeletedEVT != null) {
      return chapterDraftDeletedEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftDeletedEVT implements AccountDatabaseEvent {
  const factory ChapterDraftDeletedEVT(
      {String chapterDraftUID,
      String seriesDraftUID}) = _$ChapterDraftDeletedEVT;

  String get chapterDraftUID;
  String get seriesDraftUID;
  $ChapterDraftDeletedEVTCopyWith<ChapterDraftDeletedEVT> get copyWith;
}

/// @nodoc
abstract class $ChapterDraftSavedEVTCopyWith<$Res> {
  factory $ChapterDraftSavedEVTCopyWith(ChapterDraftSavedEVT value,
          $Res Function(ChapterDraftSavedEVT) then) =
      _$ChapterDraftSavedEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapterDraft});
}

/// @nodoc
class _$ChapterDraftSavedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $ChapterDraftSavedEVTCopyWith<$Res> {
  _$ChapterDraftSavedEVTCopyWithImpl(
      ChapterDraftSavedEVT _value, $Res Function(ChapterDraftSavedEVT) _then)
      : super(_value, (v) => _then(v as ChapterDraftSavedEVT));

  @override
  ChapterDraftSavedEVT get _value => super._value as ChapterDraftSavedEVT;

  @override
  $Res call({
    Object chapterDraft = freezed,
  }) {
    return _then(ChapterDraftSavedEVT(
      chapterDraft == freezed ? _value.chapterDraft : chapterDraft as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterDraftSavedEVT
    with DiagnosticableTreeMixin
    implements ChapterDraftSavedEVT {
  const _$ChapterDraftSavedEVT(this.chapterDraft)
      : assert(chapterDraft != null);

  @override
  final Chapter chapterDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.chapterDraftSavedEVT(chapterDraft: $chapterDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.chapterDraftSavedEVT'))
      ..add(DiagnosticsProperty('chapterDraft', chapterDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterDraftSavedEVT &&
            (identical(other.chapterDraft, chapterDraft) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDraft, chapterDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapterDraft);

  @override
  $ChapterDraftSavedEVTCopyWith<ChapterDraftSavedEVT> get copyWith =>
      _$ChapterDraftSavedEVTCopyWithImpl<ChapterDraftSavedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterDraftSavedEVT(chapterDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedEVT != null) {
      return chapterDraftSavedEVT(chapterDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterDraftSavedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterDraftSavedEVT != null) {
      return chapterDraftSavedEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterDraftSavedEVT implements AccountDatabaseEvent {
  const factory ChapterDraftSavedEVT(Chapter chapterDraft) =
      _$ChapterDraftSavedEVT;

  Chapter get chapterDraft;
  $ChapterDraftSavedEVTCopyWith<ChapterDraftSavedEVT> get copyWith;
}

/// @nodoc
abstract class $ChapterPublishedEVTCopyWith<$Res> {
  factory $ChapterPublishedEVTCopyWith(
          ChapterPublishedEVT value, $Res Function(ChapterPublishedEVT) then) =
      _$ChapterPublishedEVTCopyWithImpl<$Res>;
  $Res call({Chapter chapter});
}

/// @nodoc
class _$ChapterPublishedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $ChapterPublishedEVTCopyWith<$Res> {
  _$ChapterPublishedEVTCopyWithImpl(
      ChapterPublishedEVT _value, $Res Function(ChapterPublishedEVT) _then)
      : super(_value, (v) => _then(v as ChapterPublishedEVT));

  @override
  ChapterPublishedEVT get _value => super._value as ChapterPublishedEVT;

  @override
  $Res call({
    Object chapter = freezed,
  }) {
    return _then(ChapterPublishedEVT(
      chapter == freezed ? _value.chapter : chapter as Chapter,
    ));
  }
}

/// @nodoc
class _$ChapterPublishedEVT
    with DiagnosticableTreeMixin
    implements ChapterPublishedEVT {
  const _$ChapterPublishedEVT(this.chapter) : assert(chapter != null);

  @override
  final Chapter chapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.chapterPublishedEVT(chapter: $chapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.chapterPublishedEVT'))
      ..add(DiagnosticsProperty('chapter', chapter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterPublishedEVT &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality().equals(other.chapter, chapter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chapter);

  @override
  $ChapterPublishedEVTCopyWith<ChapterPublishedEVT> get copyWith =>
      _$ChapterPublishedEVTCopyWithImpl<ChapterPublishedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterPublishedEVT(chapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedEVT != null) {
      return chapterPublishedEVT(chapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterPublishedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterPublishedEVT != null) {
      return chapterPublishedEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterPublishedEVT implements AccountDatabaseEvent {
  const factory ChapterPublishedEVT(Chapter chapter) = _$ChapterPublishedEVT;

  Chapter get chapter;
  $ChapterPublishedEVTCopyWith<ChapterPublishedEVT> get copyWith;
}

/// @nodoc
abstract class $ChapterTileHeldEVTCopyWith<$Res> {
  factory $ChapterTileHeldEVTCopyWith(
          ChapterTileHeldEVT value, $Res Function(ChapterTileHeldEVT) then) =
      _$ChapterTileHeldEVTCopyWithImpl<$Res>;
  $Res call({String seriesUID});
}

/// @nodoc
class _$ChapterTileHeldEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $ChapterTileHeldEVTCopyWith<$Res> {
  _$ChapterTileHeldEVTCopyWithImpl(
      ChapterTileHeldEVT _value, $Res Function(ChapterTileHeldEVT) _then)
      : super(_value, (v) => _then(v as ChapterTileHeldEVT));

  @override
  ChapterTileHeldEVT get _value => super._value as ChapterTileHeldEVT;

  @override
  $Res call({
    Object seriesUID = freezed,
  }) {
    return _then(ChapterTileHeldEVT(
      seriesUID == freezed ? _value.seriesUID : seriesUID as String,
    ));
  }
}

/// @nodoc
class _$ChapterTileHeldEVT
    with DiagnosticableTreeMixin
    implements ChapterTileHeldEVT {
  const _$ChapterTileHeldEVT(this.seriesUID) : assert(seriesUID != null);

  @override
  final String seriesUID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.chapterTileHeldEVT(seriesUID: $seriesUID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.chapterTileHeldEVT'))
      ..add(DiagnosticsProperty('seriesUID', seriesUID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChapterTileHeldEVT &&
            (identical(other.seriesUID, seriesUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesUID, seriesUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesUID);

  @override
  $ChapterTileHeldEVTCopyWith<ChapterTileHeldEVT> get copyWith =>
      _$ChapterTileHeldEVTCopyWithImpl<ChapterTileHeldEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterTileHeldEVT(seriesUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterTileHeldEVT != null) {
      return chapterTileHeldEVT(seriesUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return chapterTileHeldEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chapterTileHeldEVT != null) {
      return chapterTileHeldEVT(this);
    }
    return orElse();
  }
}

abstract class ChapterTileHeldEVT implements AccountDatabaseEvent {
  const factory ChapterTileHeldEVT(String seriesUID) = _$ChapterTileHeldEVT;

  String get seriesUID;
  $ChapterTileHeldEVTCopyWith<ChapterTileHeldEVT> get copyWith;
}

/// @nodoc
abstract class $IndexChangedToChapterBookmarkedEVTCopyWith<$Res> {
  factory $IndexChangedToChapterBookmarkedEVTCopyWith(
          IndexChangedToChapterBookmarkedEVT value,
          $Res Function(IndexChangedToChapterBookmarkedEVT) then) =
      _$IndexChangedToChapterBookmarkedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndexChangedToChapterBookmarkedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $IndexChangedToChapterBookmarkedEVTCopyWith<$Res> {
  _$IndexChangedToChapterBookmarkedEVTCopyWithImpl(
      IndexChangedToChapterBookmarkedEVT _value,
      $Res Function(IndexChangedToChapterBookmarkedEVT) _then)
      : super(_value, (v) => _then(v as IndexChangedToChapterBookmarkedEVT));

  @override
  IndexChangedToChapterBookmarkedEVT get _value =>
      super._value as IndexChangedToChapterBookmarkedEVT;
}

/// @nodoc
class _$IndexChangedToChapterBookmarkedEVT
    with DiagnosticableTreeMixin
    implements IndexChangedToChapterBookmarkedEVT {
  const _$IndexChangedToChapterBookmarkedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.indexChangedToChapterBookmarkedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.indexChangedToChapterBookmarkedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndexChangedToChapterBookmarkedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToChapterBookmarkedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToChapterBookmarkedEVT != null) {
      return indexChangedToChapterBookmarkedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToChapterBookmarkedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToChapterBookmarkedEVT != null) {
      return indexChangedToChapterBookmarkedEVT(this);
    }
    return orElse();
  }
}

abstract class IndexChangedToChapterBookmarkedEVT
    implements AccountDatabaseEvent {
  const factory IndexChangedToChapterBookmarkedEVT() =
      _$IndexChangedToChapterBookmarkedEVT;
}

/// @nodoc
abstract class $IndexChangedToChapterDraftsEVTCopyWith<$Res> {
  factory $IndexChangedToChapterDraftsEVTCopyWith(
          IndexChangedToChapterDraftsEVT value,
          $Res Function(IndexChangedToChapterDraftsEVT) then) =
      _$IndexChangedToChapterDraftsEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndexChangedToChapterDraftsEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $IndexChangedToChapterDraftsEVTCopyWith<$Res> {
  _$IndexChangedToChapterDraftsEVTCopyWithImpl(
      IndexChangedToChapterDraftsEVT _value,
      $Res Function(IndexChangedToChapterDraftsEVT) _then)
      : super(_value, (v) => _then(v as IndexChangedToChapterDraftsEVT));

  @override
  IndexChangedToChapterDraftsEVT get _value =>
      super._value as IndexChangedToChapterDraftsEVT;
}

/// @nodoc
class _$IndexChangedToChapterDraftsEVT
    with DiagnosticableTreeMixin
    implements IndexChangedToChapterDraftsEVT {
  const _$IndexChangedToChapterDraftsEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.indexChangedToChapterDraftsEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.indexChangedToChapterDraftsEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IndexChangedToChapterDraftsEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToChapterDraftsEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToChapterDraftsEVT != null) {
      return indexChangedToChapterDraftsEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToChapterDraftsEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToChapterDraftsEVT != null) {
      return indexChangedToChapterDraftsEVT(this);
    }
    return orElse();
  }
}

abstract class IndexChangedToChapterDraftsEVT implements AccountDatabaseEvent {
  const factory IndexChangedToChapterDraftsEVT() =
      _$IndexChangedToChapterDraftsEVT;
}

/// @nodoc
abstract class $IndexChangedToChapterPublishedEVTCopyWith<$Res> {
  factory $IndexChangedToChapterPublishedEVTCopyWith(
          IndexChangedToChapterPublishedEVT value,
          $Res Function(IndexChangedToChapterPublishedEVT) then) =
      _$IndexChangedToChapterPublishedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndexChangedToChapterPublishedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $IndexChangedToChapterPublishedEVTCopyWith<$Res> {
  _$IndexChangedToChapterPublishedEVTCopyWithImpl(
      IndexChangedToChapterPublishedEVT _value,
      $Res Function(IndexChangedToChapterPublishedEVT) _then)
      : super(_value, (v) => _then(v as IndexChangedToChapterPublishedEVT));

  @override
  IndexChangedToChapterPublishedEVT get _value =>
      super._value as IndexChangedToChapterPublishedEVT;
}

/// @nodoc
class _$IndexChangedToChapterPublishedEVT
    with DiagnosticableTreeMixin
    implements IndexChangedToChapterPublishedEVT {
  const _$IndexChangedToChapterPublishedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.indexChangedToChapterPublishedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.indexChangedToChapterPublishedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndexChangedToChapterPublishedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToChapterPublishedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToChapterPublishedEVT != null) {
      return indexChangedToChapterPublishedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToChapterPublishedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToChapterPublishedEVT != null) {
      return indexChangedToChapterPublishedEVT(this);
    }
    return orElse();
  }
}

abstract class IndexChangedToChapterPublishedEVT
    implements AccountDatabaseEvent {
  const factory IndexChangedToChapterPublishedEVT() =
      _$IndexChangedToChapterPublishedEVT;
}

/// @nodoc
abstract class $IndexChangedToSeriesBookmarkedEVTCopyWith<$Res> {
  factory $IndexChangedToSeriesBookmarkedEVTCopyWith(
          IndexChangedToSeriesBookmarkedEVT value,
          $Res Function(IndexChangedToSeriesBookmarkedEVT) then) =
      _$IndexChangedToSeriesBookmarkedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndexChangedToSeriesBookmarkedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $IndexChangedToSeriesBookmarkedEVTCopyWith<$Res> {
  _$IndexChangedToSeriesBookmarkedEVTCopyWithImpl(
      IndexChangedToSeriesBookmarkedEVT _value,
      $Res Function(IndexChangedToSeriesBookmarkedEVT) _then)
      : super(_value, (v) => _then(v as IndexChangedToSeriesBookmarkedEVT));

  @override
  IndexChangedToSeriesBookmarkedEVT get _value =>
      super._value as IndexChangedToSeriesBookmarkedEVT;
}

/// @nodoc
class _$IndexChangedToSeriesBookmarkedEVT
    with DiagnosticableTreeMixin
    implements IndexChangedToSeriesBookmarkedEVT {
  const _$IndexChangedToSeriesBookmarkedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.indexChangedToSeriesBookmarkedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.indexChangedToSeriesBookmarkedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndexChangedToSeriesBookmarkedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToSeriesBookmarkedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToSeriesBookmarkedEVT != null) {
      return indexChangedToSeriesBookmarkedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToSeriesBookmarkedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToSeriesBookmarkedEVT != null) {
      return indexChangedToSeriesBookmarkedEVT(this);
    }
    return orElse();
  }
}

abstract class IndexChangedToSeriesBookmarkedEVT
    implements AccountDatabaseEvent {
  const factory IndexChangedToSeriesBookmarkedEVT() =
      _$IndexChangedToSeriesBookmarkedEVT;
}

/// @nodoc
abstract class $IndexChangedToSeriesDraftsEVTCopyWith<$Res> {
  factory $IndexChangedToSeriesDraftsEVTCopyWith(
          IndexChangedToSeriesDraftsEVT value,
          $Res Function(IndexChangedToSeriesDraftsEVT) then) =
      _$IndexChangedToSeriesDraftsEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndexChangedToSeriesDraftsEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $IndexChangedToSeriesDraftsEVTCopyWith<$Res> {
  _$IndexChangedToSeriesDraftsEVTCopyWithImpl(
      IndexChangedToSeriesDraftsEVT _value,
      $Res Function(IndexChangedToSeriesDraftsEVT) _then)
      : super(_value, (v) => _then(v as IndexChangedToSeriesDraftsEVT));

  @override
  IndexChangedToSeriesDraftsEVT get _value =>
      super._value as IndexChangedToSeriesDraftsEVT;
}

/// @nodoc
class _$IndexChangedToSeriesDraftsEVT
    with DiagnosticableTreeMixin
    implements IndexChangedToSeriesDraftsEVT {
  const _$IndexChangedToSeriesDraftsEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.indexChangedToSeriesDraftsEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.indexChangedToSeriesDraftsEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IndexChangedToSeriesDraftsEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToSeriesDraftsEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToSeriesDraftsEVT != null) {
      return indexChangedToSeriesDraftsEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToSeriesDraftsEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToSeriesDraftsEVT != null) {
      return indexChangedToSeriesDraftsEVT(this);
    }
    return orElse();
  }
}

abstract class IndexChangedToSeriesDraftsEVT implements AccountDatabaseEvent {
  const factory IndexChangedToSeriesDraftsEVT() =
      _$IndexChangedToSeriesDraftsEVT;
}

/// @nodoc
abstract class $IndexChangedToSeriesPublishedEVTCopyWith<$Res> {
  factory $IndexChangedToSeriesPublishedEVTCopyWith(
          IndexChangedToSeriesPublishedEVT value,
          $Res Function(IndexChangedToSeriesPublishedEVT) then) =
      _$IndexChangedToSeriesPublishedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$IndexChangedToSeriesPublishedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $IndexChangedToSeriesPublishedEVTCopyWith<$Res> {
  _$IndexChangedToSeriesPublishedEVTCopyWithImpl(
      IndexChangedToSeriesPublishedEVT _value,
      $Res Function(IndexChangedToSeriesPublishedEVT) _then)
      : super(_value, (v) => _then(v as IndexChangedToSeriesPublishedEVT));

  @override
  IndexChangedToSeriesPublishedEVT get _value =>
      super._value as IndexChangedToSeriesPublishedEVT;
}

/// @nodoc
class _$IndexChangedToSeriesPublishedEVT
    with DiagnosticableTreeMixin
    implements IndexChangedToSeriesPublishedEVT {
  const _$IndexChangedToSeriesPublishedEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.indexChangedToSeriesPublishedEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.indexChangedToSeriesPublishedEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IndexChangedToSeriesPublishedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToSeriesPublishedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToSeriesPublishedEVT != null) {
      return indexChangedToSeriesPublishedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return indexChangedToSeriesPublishedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (indexChangedToSeriesPublishedEVT != null) {
      return indexChangedToSeriesPublishedEVT(this);
    }
    return orElse();
  }
}

abstract class IndexChangedToSeriesPublishedEVT
    implements AccountDatabaseEvent {
  const factory IndexChangedToSeriesPublishedEVT() =
      _$IndexChangedToSeriesPublishedEVT;
}

/// @nodoc
abstract class $SeriesDraftDeletedEVTCopyWith<$Res> {
  factory $SeriesDraftDeletedEVTCopyWith(SeriesDraftDeletedEVT value,
          $Res Function(SeriesDraftDeletedEVT) then) =
      _$SeriesDraftDeletedEVTCopyWithImpl<$Res>;
  $Res call({String seriesDraftUID});
}

/// @nodoc
class _$SeriesDraftDeletedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftDeletedEVTCopyWith<$Res> {
  _$SeriesDraftDeletedEVTCopyWithImpl(
      SeriesDraftDeletedEVT _value, $Res Function(SeriesDraftDeletedEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftDeletedEVT));

  @override
  SeriesDraftDeletedEVT get _value => super._value as SeriesDraftDeletedEVT;

  @override
  $Res call({
    Object seriesDraftUID = freezed,
  }) {
    return _then(SeriesDraftDeletedEVT(
      seriesDraftUID == freezed
          ? _value.seriesDraftUID
          : seriesDraftUID as String,
    ));
  }
}

/// @nodoc
class _$SeriesDraftDeletedEVT
    with DiagnosticableTreeMixin
    implements SeriesDraftDeletedEVT {
  const _$SeriesDraftDeletedEVT(this.seriesDraftUID)
      : assert(seriesDraftUID != null);

  @override
  final String seriesDraftUID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.seriesDraftDeletedEVT(seriesDraftUID: $seriesDraftUID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.seriesDraftDeletedEVT'))
      ..add(DiagnosticsProperty('seriesDraftUID', seriesDraftUID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftDeletedEVT &&
            (identical(other.seriesDraftUID, seriesDraftUID) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraftUID, seriesDraftUID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seriesDraftUID);

  @override
  $SeriesDraftDeletedEVTCopyWith<SeriesDraftDeletedEVT> get copyWith =>
      _$SeriesDraftDeletedEVTCopyWithImpl<SeriesDraftDeletedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return seriesDraftDeletedEVT(seriesDraftUID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedEVT != null) {
      return seriesDraftDeletedEVT(seriesDraftUID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return seriesDraftDeletedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftDeletedEVT != null) {
      return seriesDraftDeletedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftDeletedEVT implements AccountDatabaseEvent {
  const factory SeriesDraftDeletedEVT(String seriesDraftUID) =
      _$SeriesDraftDeletedEVT;

  String get seriesDraftUID;
  $SeriesDraftDeletedEVTCopyWith<SeriesDraftDeletedEVT> get copyWith;
}

/// @nodoc
abstract class $SeriesDraftSavedEVTCopyWith<$Res> {
  factory $SeriesDraftSavedEVTCopyWith(
          SeriesDraftSavedEVT value, $Res Function(SeriesDraftSavedEVT) then) =
      _$SeriesDraftSavedEVTCopyWithImpl<$Res>;
  $Res call({Series seriesDraft});
}

/// @nodoc
class _$SeriesDraftSavedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDraftSavedEVTCopyWith<$Res> {
  _$SeriesDraftSavedEVTCopyWithImpl(
      SeriesDraftSavedEVT _value, $Res Function(SeriesDraftSavedEVT) _then)
      : super(_value, (v) => _then(v as SeriesDraftSavedEVT));

  @override
  SeriesDraftSavedEVT get _value => super._value as SeriesDraftSavedEVT;

  @override
  $Res call({
    Object seriesDraft = freezed,
  }) {
    return _then(SeriesDraftSavedEVT(
      seriesDraft == freezed ? _value.seriesDraft : seriesDraft as Series,
    ));
  }
}

/// @nodoc
class _$SeriesDraftSavedEVT
    with DiagnosticableTreeMixin
    implements SeriesDraftSavedEVT {
  const _$SeriesDraftSavedEVT(this.seriesDraft) : assert(seriesDraft != null);

  @override
  final Series seriesDraft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.seriesDraftSavedEVT(seriesDraft: $seriesDraft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.seriesDraftSavedEVT'))
      ..add(DiagnosticsProperty('seriesDraft', seriesDraft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesDraftSavedEVT &&
            (identical(other.seriesDraft, seriesDraft) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDraft, seriesDraft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seriesDraft);

  @override
  $SeriesDraftSavedEVTCopyWith<SeriesDraftSavedEVT> get copyWith =>
      _$SeriesDraftSavedEVTCopyWithImpl<SeriesDraftSavedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return seriesDraftSavedEVT(seriesDraft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedEVT != null) {
      return seriesDraftSavedEVT(seriesDraft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return seriesDraftSavedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesDraftSavedEVT != null) {
      return seriesDraftSavedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesDraftSavedEVT implements AccountDatabaseEvent {
  const factory SeriesDraftSavedEVT(Series seriesDraft) = _$SeriesDraftSavedEVT;

  Series get seriesDraft;
  $SeriesDraftSavedEVTCopyWith<SeriesDraftSavedEVT> get copyWith;
}

/// @nodoc
abstract class $SeriesPublishedEVTCopyWith<$Res> {
  factory $SeriesPublishedEVTCopyWith(
          SeriesPublishedEVT value, $Res Function(SeriesPublishedEVT) then) =
      _$SeriesPublishedEVTCopyWithImpl<$Res>;
  $Res call({Series series});
}

/// @nodoc
class _$SeriesPublishedEVTCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPublishedEVTCopyWith<$Res> {
  _$SeriesPublishedEVTCopyWithImpl(
      SeriesPublishedEVT _value, $Res Function(SeriesPublishedEVT) _then)
      : super(_value, (v) => _then(v as SeriesPublishedEVT));

  @override
  SeriesPublishedEVT get _value => super._value as SeriesPublishedEVT;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(SeriesPublishedEVT(
      series == freezed ? _value.series : series as Series,
    ));
  }
}

/// @nodoc
class _$SeriesPublishedEVT
    with DiagnosticableTreeMixin
    implements SeriesPublishedEVT {
  const _$SeriesPublishedEVT(this.series) : assert(series != null);

  @override
  final Series series;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.seriesPublishedEVT(series: $series)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.seriesPublishedEVT'))
      ..add(DiagnosticsProperty('series', series));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPublishedEVT &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  $SeriesPublishedEVTCopyWith<SeriesPublishedEVT> get copyWith =>
      _$SeriesPublishedEVTCopyWithImpl<SeriesPublishedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult accountLaunchedEVT(),
    @required
        TResult chapterDraftDeletedEVT(
            String chapterDraftUID, String seriesDraftUID),
    @required TResult chapterDraftSavedEVT(Chapter chapterDraft),
    @required TResult chapterPublishedEVT(Chapter chapter),
    @required TResult chapterTileHeldEVT(String seriesUID),
    @required TResult indexChangedToChapterBookmarkedEVT(),
    @required TResult indexChangedToChapterDraftsEVT(),
    @required TResult indexChangedToChapterPublishedEVT(),
    @required TResult indexChangedToSeriesBookmarkedEVT(),
    @required TResult indexChangedToSeriesDraftsEVT(),
    @required TResult indexChangedToSeriesPublishedEVT(),
    @required TResult seriesDraftDeletedEVT(String seriesDraftUID),
    @required TResult seriesDraftSavedEVT(Series seriesDraft),
    @required TResult seriesPublishedEVT(Series series),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return seriesPublishedEVT(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult accountLaunchedEVT(),
    TResult chapterDraftDeletedEVT(
        String chapterDraftUID, String seriesDraftUID),
    TResult chapterDraftSavedEVT(Chapter chapterDraft),
    TResult chapterPublishedEVT(Chapter chapter),
    TResult chapterTileHeldEVT(String seriesUID),
    TResult indexChangedToChapterBookmarkedEVT(),
    TResult indexChangedToChapterDraftsEVT(),
    TResult indexChangedToChapterPublishedEVT(),
    TResult indexChangedToSeriesBookmarkedEVT(),
    TResult indexChangedToSeriesDraftsEVT(),
    TResult indexChangedToSeriesPublishedEVT(),
    TResult seriesDraftDeletedEVT(String seriesDraftUID),
    TResult seriesDraftSavedEVT(Series seriesDraft),
    TResult seriesPublishedEVT(Series series),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedEVT != null) {
      return seriesPublishedEVT(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult accountLaunchedEVT(AccountLaunchedEVT value),
    @required TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    @required TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    @required TResult chapterPublishedEVT(ChapterPublishedEVT value),
    @required TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    @required
        TResult indexChangedToChapterBookmarkedEVT(
            IndexChangedToChapterBookmarkedEVT value),
    @required
        TResult indexChangedToChapterDraftsEVT(
            IndexChangedToChapterDraftsEVT value),
    @required
        TResult indexChangedToChapterPublishedEVT(
            IndexChangedToChapterPublishedEVT value),
    @required
        TResult indexChangedToSeriesBookmarkedEVT(
            IndexChangedToSeriesBookmarkedEVT value),
    @required
        TResult indexChangedToSeriesDraftsEVT(
            IndexChangedToSeriesDraftsEVT value),
    @required
        TResult indexChangedToSeriesPublishedEVT(
            IndexChangedToSeriesPublishedEVT value),
    @required TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    @required TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    @required TResult seriesPublishedEVT(SeriesPublishedEVT value),
  }) {
    assert(accountLaunchedEVT != null);
    assert(chapterDraftDeletedEVT != null);
    assert(chapterDraftSavedEVT != null);
    assert(chapterPublishedEVT != null);
    assert(chapterTileHeldEVT != null);
    assert(indexChangedToChapterBookmarkedEVT != null);
    assert(indexChangedToChapterDraftsEVT != null);
    assert(indexChangedToChapterPublishedEVT != null);
    assert(indexChangedToSeriesBookmarkedEVT != null);
    assert(indexChangedToSeriesDraftsEVT != null);
    assert(indexChangedToSeriesPublishedEVT != null);
    assert(seriesDraftDeletedEVT != null);
    assert(seriesDraftSavedEVT != null);
    assert(seriesPublishedEVT != null);
    return seriesPublishedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult accountLaunchedEVT(AccountLaunchedEVT value),
    TResult chapterDraftDeletedEVT(ChapterDraftDeletedEVT value),
    TResult chapterDraftSavedEVT(ChapterDraftSavedEVT value),
    TResult chapterPublishedEVT(ChapterPublishedEVT value),
    TResult chapterTileHeldEVT(ChapterTileHeldEVT value),
    TResult indexChangedToChapterBookmarkedEVT(
        IndexChangedToChapterBookmarkedEVT value),
    TResult indexChangedToChapterDraftsEVT(
        IndexChangedToChapterDraftsEVT value),
    TResult indexChangedToChapterPublishedEVT(
        IndexChangedToChapterPublishedEVT value),
    TResult indexChangedToSeriesBookmarkedEVT(
        IndexChangedToSeriesBookmarkedEVT value),
    TResult indexChangedToSeriesDraftsEVT(IndexChangedToSeriesDraftsEVT value),
    TResult indexChangedToSeriesPublishedEVT(
        IndexChangedToSeriesPublishedEVT value),
    TResult seriesDraftDeletedEVT(SeriesDraftDeletedEVT value),
    TResult seriesDraftSavedEVT(SeriesDraftSavedEVT value),
    TResult seriesPublishedEVT(SeriesPublishedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seriesPublishedEVT != null) {
      return seriesPublishedEVT(this);
    }
    return orElse();
  }
}

abstract class SeriesPublishedEVT implements AccountDatabaseEvent {
  const factory SeriesPublishedEVT(Series series) = _$SeriesPublishedEVT;

  Series get series;
  $SeriesPublishedEVTCopyWith<SeriesPublishedEVT> get copyWith;
}

/// @nodoc
class _$AccountDatabaseStateTearOff {
  const _$AccountDatabaseStateTearOff();

// ignore: unused_element
  _AccountDatabaseState call(
      {@required
          bool isLoading,
      @required
          List<Chapter> bookmarkedChapters,
      @required
          List<Chapter> chapterDrafts,
      @required
          List<Chapter> chapters,
      @required
          List<Series> bookmarkedSeriesList,
      @required
          List<Series> seriesList,
      @required
          List<Series> seriesDrafts,
      @required
          List<List<bool>> layoutDataUpdated,
      @required
          Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
              chapterDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
              chapterDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
              seriesDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
              seriesDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Session session}) {
    return _AccountDatabaseState(
      isLoading: isLoading,
      bookmarkedChapters: bookmarkedChapters,
      chapterDrafts: chapterDrafts,
      chapters: chapters,
      bookmarkedSeriesList: bookmarkedSeriesList,
      seriesList: seriesList,
      seriesDrafts: seriesDrafts,
      layoutDataUpdated: layoutDataUpdated,
      chapterDatabaseFailureOrSuccessOption:
          chapterDatabaseFailureOrSuccessOption,
      chapterDraftDatabaseFailureOrSuccessOption:
          chapterDraftDatabaseFailureOrSuccessOption,
      seriesDatabaseFailureOrSuccessOption:
          seriesDatabaseFailureOrSuccessOption,
      seriesDraftDatabaseFailureOrSuccessOption:
          seriesDraftDatabaseFailureOrSuccessOption,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption,
      session: session,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountDatabaseState = _$AccountDatabaseStateTearOff();

/// @nodoc
mixin _$AccountDatabaseState {
  bool get isLoading;
  List<Chapter> get bookmarkedChapters;
  List<Chapter> get chapterDrafts;
  List<Chapter> get chapters;
  List<Series> get bookmarkedSeriesList;
  List<Series> get seriesList;
  List<Series> get seriesDrafts;
  List<List<bool>> get layoutDataUpdated;
  Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      get chapterDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      get chapterDraftDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      get seriesDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      get seriesDraftDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  Session get session;

  $AccountDatabaseStateCopyWith<AccountDatabaseState> get copyWith;
}

/// @nodoc
abstract class $AccountDatabaseStateCopyWith<$Res> {
  factory $AccountDatabaseStateCopyWith(AccountDatabaseState value,
          $Res Function(AccountDatabaseState) then) =
      _$AccountDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Chapter> bookmarkedChapters,
      List<Chapter> chapterDrafts,
      List<Chapter> chapters,
      List<Series> bookmarkedSeriesList,
      List<Series> seriesList,
      List<Series> seriesDrafts,
      List<List<bool>> layoutDataUpdated,
      Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
          chapterDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
          chapterDraftDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
          seriesDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
          seriesDraftDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Session session});
}

/// @nodoc
class _$AccountDatabaseStateCopyWithImpl<$Res>
    implements $AccountDatabaseStateCopyWith<$Res> {
  _$AccountDatabaseStateCopyWithImpl(this._value, this._then);

  final AccountDatabaseState _value;
  // ignore: unused_field
  final $Res Function(AccountDatabaseState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object bookmarkedChapters = freezed,
    Object chapterDrafts = freezed,
    Object chapters = freezed,
    Object bookmarkedSeriesList = freezed,
    Object seriesList = freezed,
    Object seriesDrafts = freezed,
    Object layoutDataUpdated = freezed,
    Object chapterDatabaseFailureOrSuccessOption = freezed,
    Object chapterDraftDatabaseFailureOrSuccessOption = freezed,
    Object seriesDatabaseFailureOrSuccessOption = freezed,
    Object seriesDraftDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      bookmarkedChapters: bookmarkedChapters == freezed
          ? _value.bookmarkedChapters
          : bookmarkedChapters as List<Chapter>,
      chapterDrafts: chapterDrafts == freezed
          ? _value.chapterDrafts
          : chapterDrafts as List<Chapter>,
      chapters:
          chapters == freezed ? _value.chapters : chapters as List<Chapter>,
      bookmarkedSeriesList: bookmarkedSeriesList == freezed
          ? _value.bookmarkedSeriesList
          : bookmarkedSeriesList as List<Series>,
      seriesList: seriesList == freezed
          ? _value.seriesList
          : seriesList as List<Series>,
      seriesDrafts: seriesDrafts == freezed
          ? _value.seriesDrafts
          : seriesDrafts as List<Series>,
      layoutDataUpdated: layoutDataUpdated == freezed
          ? _value.layoutDataUpdated
          : layoutDataUpdated as List<List<bool>>,
      chapterDatabaseFailureOrSuccessOption:
          chapterDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDatabaseFailureOrSuccessOption
              : chapterDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>,
      chapterDraftDatabaseFailureOrSuccessOption:
          chapterDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDraftDatabaseFailureOrSuccessOption
              : chapterDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>,
      seriesDatabaseFailureOrSuccessOption:
          seriesDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDatabaseFailureOrSuccessOption
              : seriesDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>,
      seriesDraftDatabaseFailureOrSuccessOption:
          seriesDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDraftDatabaseFailureOrSuccessOption
              : seriesDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      session: session == freezed ? _value.session : session as Session,
    ));
  }
}

/// @nodoc
abstract class _$AccountDatabaseStateCopyWith<$Res>
    implements $AccountDatabaseStateCopyWith<$Res> {
  factory _$AccountDatabaseStateCopyWith(_AccountDatabaseState value,
          $Res Function(_AccountDatabaseState) then) =
      __$AccountDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Chapter> bookmarkedChapters,
      List<Chapter> chapterDrafts,
      List<Chapter> chapters,
      List<Series> bookmarkedSeriesList,
      List<Series> seriesList,
      List<Series> seriesDrafts,
      List<List<bool>> layoutDataUpdated,
      Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
          chapterDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
          chapterDraftDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
          seriesDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
          seriesDraftDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Session session});
}

/// @nodoc
class __$AccountDatabaseStateCopyWithImpl<$Res>
    extends _$AccountDatabaseStateCopyWithImpl<$Res>
    implements _$AccountDatabaseStateCopyWith<$Res> {
  __$AccountDatabaseStateCopyWithImpl(
      _AccountDatabaseState _value, $Res Function(_AccountDatabaseState) _then)
      : super(_value, (v) => _then(v as _AccountDatabaseState));

  @override
  _AccountDatabaseState get _value => super._value as _AccountDatabaseState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object bookmarkedChapters = freezed,
    Object chapterDrafts = freezed,
    Object chapters = freezed,
    Object bookmarkedSeriesList = freezed,
    Object seriesList = freezed,
    Object seriesDrafts = freezed,
    Object layoutDataUpdated = freezed,
    Object chapterDatabaseFailureOrSuccessOption = freezed,
    Object chapterDraftDatabaseFailureOrSuccessOption = freezed,
    Object seriesDatabaseFailureOrSuccessOption = freezed,
    Object seriesDraftDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object session = freezed,
  }) {
    return _then(_AccountDatabaseState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      bookmarkedChapters: bookmarkedChapters == freezed
          ? _value.bookmarkedChapters
          : bookmarkedChapters as List<Chapter>,
      chapterDrafts: chapterDrafts == freezed
          ? _value.chapterDrafts
          : chapterDrafts as List<Chapter>,
      chapters:
          chapters == freezed ? _value.chapters : chapters as List<Chapter>,
      bookmarkedSeriesList: bookmarkedSeriesList == freezed
          ? _value.bookmarkedSeriesList
          : bookmarkedSeriesList as List<Series>,
      seriesList: seriesList == freezed
          ? _value.seriesList
          : seriesList as List<Series>,
      seriesDrafts: seriesDrafts == freezed
          ? _value.seriesDrafts
          : seriesDrafts as List<Series>,
      layoutDataUpdated: layoutDataUpdated == freezed
          ? _value.layoutDataUpdated
          : layoutDataUpdated as List<List<bool>>,
      chapterDatabaseFailureOrSuccessOption:
          chapterDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDatabaseFailureOrSuccessOption
              : chapterDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>,
      chapterDraftDatabaseFailureOrSuccessOption:
          chapterDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.chapterDraftDatabaseFailureOrSuccessOption
              : chapterDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>,
      seriesDatabaseFailureOrSuccessOption:
          seriesDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDatabaseFailureOrSuccessOption
              : seriesDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>,
      seriesDraftDatabaseFailureOrSuccessOption:
          seriesDraftDatabaseFailureOrSuccessOption == freezed
              ? _value.seriesDraftDatabaseFailureOrSuccessOption
              : seriesDraftDatabaseFailureOrSuccessOption as Option<
                  Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      session: session == freezed ? _value.session : session as Session,
    ));
  }
}

/// @nodoc
class _$_AccountDatabaseState
    with DiagnosticableTreeMixin
    implements _AccountDatabaseState {
  const _$_AccountDatabaseState(
      {@required this.isLoading,
      @required this.bookmarkedChapters,
      @required this.chapterDrafts,
      @required this.chapters,
      @required this.bookmarkedSeriesList,
      @required this.seriesList,
      @required this.seriesDrafts,
      @required this.layoutDataUpdated,
      @required this.chapterDatabaseFailureOrSuccessOption,
      @required this.chapterDraftDatabaseFailureOrSuccessOption,
      @required this.seriesDatabaseFailureOrSuccessOption,
      @required this.seriesDraftDatabaseFailureOrSuccessOption,
      @required this.sessionDatabaseFailureOrSuccessOption,
      @required this.session})
      : assert(isLoading != null),
        assert(bookmarkedChapters != null),
        assert(chapterDrafts != null),
        assert(chapters != null),
        assert(bookmarkedSeriesList != null),
        assert(seriesList != null),
        assert(seriesDrafts != null),
        assert(layoutDataUpdated != null),
        assert(chapterDatabaseFailureOrSuccessOption != null),
        assert(chapterDraftDatabaseFailureOrSuccessOption != null),
        assert(seriesDatabaseFailureOrSuccessOption != null),
        assert(seriesDraftDatabaseFailureOrSuccessOption != null),
        assert(sessionDatabaseFailureOrSuccessOption != null),
        assert(session != null);

  @override
  final bool isLoading;
  @override
  final List<Chapter> bookmarkedChapters;
  @override
  final List<Chapter> chapterDrafts;
  @override
  final List<Chapter> chapters;
  @override
  final List<Series> bookmarkedSeriesList;
  @override
  final List<Series> seriesList;
  @override
  final List<Series> seriesDrafts;
  @override
  final List<List<bool>> layoutDataUpdated;
  @override
  final Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      chapterDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      chapterDraftDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      seriesDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      seriesDraftDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      sessionDatabaseFailureOrSuccessOption;
  @override
  final Session session;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseState(isLoading: $isLoading, bookmarkedChapters: $bookmarkedChapters, chapterDrafts: $chapterDrafts, chapters: $chapters, bookmarkedSeriesList: $bookmarkedSeriesList, seriesList: $seriesList, seriesDrafts: $seriesDrafts, layoutDataUpdated: $layoutDataUpdated, chapterDatabaseFailureOrSuccessOption: $chapterDatabaseFailureOrSuccessOption, chapterDraftDatabaseFailureOrSuccessOption: $chapterDraftDatabaseFailureOrSuccessOption, seriesDatabaseFailureOrSuccessOption: $seriesDatabaseFailureOrSuccessOption, seriesDraftDatabaseFailureOrSuccessOption: $seriesDraftDatabaseFailureOrSuccessOption, sessionDatabaseFailureOrSuccessOption: $sessionDatabaseFailureOrSuccessOption, session: $session)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountDatabaseState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('bookmarkedChapters', bookmarkedChapters))
      ..add(DiagnosticsProperty('chapterDrafts', chapterDrafts))
      ..add(DiagnosticsProperty('chapters', chapters))
      ..add(DiagnosticsProperty('bookmarkedSeriesList', bookmarkedSeriesList))
      ..add(DiagnosticsProperty('seriesList', seriesList))
      ..add(DiagnosticsProperty('seriesDrafts', seriesDrafts))
      ..add(DiagnosticsProperty('layoutDataUpdated', layoutDataUpdated))
      ..add(DiagnosticsProperty('chapterDatabaseFailureOrSuccessOption',
          chapterDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('chapterDraftDatabaseFailureOrSuccessOption',
          chapterDraftDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('seriesDatabaseFailureOrSuccessOption',
          seriesDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('seriesDraftDatabaseFailureOrSuccessOption',
          seriesDraftDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('sessionDatabaseFailureOrSuccessOption',
          sessionDatabaseFailureOrSuccessOption))
      ..add(DiagnosticsProperty('session', session));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountDatabaseState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.bookmarkedChapters, bookmarkedChapters) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarkedChapters, bookmarkedChapters)) &&
            (identical(other.chapterDrafts, chapterDrafts) ||
                const DeepCollectionEquality()
                    .equals(other.chapterDrafts, chapterDrafts)) &&
            (identical(other.chapters, chapters) ||
                const DeepCollectionEquality()
                    .equals(other.chapters, chapters)) &&
            (identical(other.bookmarkedSeriesList, bookmarkedSeriesList) ||
                const DeepCollectionEquality().equals(
                    other.bookmarkedSeriesList, bookmarkedSeriesList)) &&
            (identical(other.seriesList, seriesList) ||
                const DeepCollectionEquality()
                    .equals(other.seriesList, seriesList)) &&
            (identical(other.seriesDrafts, seriesDrafts) ||
                const DeepCollectionEquality()
                    .equals(other.seriesDrafts, seriesDrafts)) &&
            (identical(other.layoutDataUpdated, layoutDataUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.layoutDataUpdated, layoutDataUpdated)) &&
            (identical(other.chapterDatabaseFailureOrSuccessOption, chapterDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.chapterDatabaseFailureOrSuccessOption,
                    chapterDatabaseFailureOrSuccessOption)) &&
            (identical(other.chapterDraftDatabaseFailureOrSuccessOption,
                    chapterDraftDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.chapterDraftDatabaseFailureOrSuccessOption,
                    chapterDraftDatabaseFailureOrSuccessOption)) &&
            (identical(other.seriesDatabaseFailureOrSuccessOption, seriesDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.seriesDatabaseFailureOrSuccessOption,
                    seriesDatabaseFailureOrSuccessOption)) &&
            (identical(other.seriesDraftDatabaseFailureOrSuccessOption, seriesDraftDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.seriesDraftDatabaseFailureOrSuccessOption,
                    seriesDraftDatabaseFailureOrSuccessOption)) &&
            (identical(other.sessionDatabaseFailureOrSuccessOption, sessionDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.sessionDatabaseFailureOrSuccessOption,
                    sessionDatabaseFailureOrSuccessOption)) &&
            (identical(other.session, session) || const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(bookmarkedChapters) ^
      const DeepCollectionEquality().hash(chapterDrafts) ^
      const DeepCollectionEquality().hash(chapters) ^
      const DeepCollectionEquality().hash(bookmarkedSeriesList) ^
      const DeepCollectionEquality().hash(seriesList) ^
      const DeepCollectionEquality().hash(seriesDrafts) ^
      const DeepCollectionEquality().hash(layoutDataUpdated) ^
      const DeepCollectionEquality()
          .hash(chapterDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(chapterDraftDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(seriesDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(seriesDraftDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(sessionDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(session);

  @override
  _$AccountDatabaseStateCopyWith<_AccountDatabaseState> get copyWith =>
      __$AccountDatabaseStateCopyWithImpl<_AccountDatabaseState>(
          this, _$identity);
}

abstract class _AccountDatabaseState implements AccountDatabaseState {
  const factory _AccountDatabaseState(
      {@required
          bool isLoading,
      @required
          List<Chapter> bookmarkedChapters,
      @required
          List<Chapter> chapterDrafts,
      @required
          List<Chapter> chapters,
      @required
          List<Series> bookmarkedSeriesList,
      @required
          List<Series> seriesList,
      @required
          List<Series> seriesDrafts,
      @required
          List<List<bool>> layoutDataUpdated,
      @required
          Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
              chapterDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
              chapterDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
              seriesDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
              seriesDraftDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Session session}) = _$_AccountDatabaseState;

  @override
  bool get isLoading;
  @override
  List<Chapter> get bookmarkedChapters;
  @override
  List<Chapter> get chapterDrafts;
  @override
  List<Chapter> get chapters;
  @override
  List<Series> get bookmarkedSeriesList;
  @override
  List<Series> get seriesList;
  @override
  List<Series> get seriesDrafts;
  @override
  List<List<bool>> get layoutDataUpdated;
  @override
  Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      get chapterDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, ChapterDraftDatabaseSuccess>>
      get chapterDraftDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
      get seriesDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SeriesDraftDatabaseSuccess>>
      get seriesDraftDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  @override
  Session get session;
  @override
  _$AccountDatabaseStateCopyWith<_AccountDatabaseState> get copyWith;
}
