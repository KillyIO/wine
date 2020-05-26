// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'series_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SeriesDatabaseEventTearOff {
  const _$SeriesDatabaseEventTearOff();

  SeriesPageLaunched seriesPageLaunched({Series series, BuildContext context}) {
    return SeriesPageLaunched(
      series: series,
      context: context,
    );
  }

  LikeButtonPressed likeButtonPressed() {
    return const LikeButtonPressed();
  }

  BookmarkButtonPressed bookmarkButtonPressed() {
    return const BookmarkButtonPressed();
  }

  ShowMoreSummaryButtonPressed showMoreSummaryButtonPressed() {
    return const ShowMoreSummaryButtonPressed();
  }

  ReadChapterOneButtonPressed readChapterOneButtonPressed() {
    return const ReadChapterOneButtonPressed();
  }
}

// ignore: unused_element
const $SeriesDatabaseEvent = _$SeriesDatabaseEventTearOff();

mixin _$SeriesDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result seriesPageLaunched(Series series, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
    @required Result readChapterOneButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    Result readChapterOneButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result seriesPageLaunched(SeriesPageLaunched value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required
        Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    @required
        Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
    @required Result orElse(),
  });
}

abstract class $SeriesDatabaseEventCopyWith<$Res> {
  factory $SeriesDatabaseEventCopyWith(
          SeriesDatabaseEvent value, $Res Function(SeriesDatabaseEvent) then) =
      _$SeriesDatabaseEventCopyWithImpl<$Res>;
}

class _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDatabaseEventCopyWith<$Res> {
  _$SeriesDatabaseEventCopyWithImpl(this._value, this._then);

  final SeriesDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SeriesDatabaseEvent) _then;
}

abstract class $SeriesPageLaunchedCopyWith<$Res> {
  factory $SeriesPageLaunchedCopyWith(
          SeriesPageLaunched value, $Res Function(SeriesPageLaunched) then) =
      _$SeriesPageLaunchedCopyWithImpl<$Res>;
  $Res call({Series series, BuildContext context});
}

class _$SeriesPageLaunchedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $SeriesPageLaunchedCopyWith<$Res> {
  _$SeriesPageLaunchedCopyWithImpl(
      SeriesPageLaunched _value, $Res Function(SeriesPageLaunched) _then)
      : super(_value, (v) => _then(v as SeriesPageLaunched));

  @override
  SeriesPageLaunched get _value => super._value as SeriesPageLaunched;

  @override
  $Res call({
    Object series = freezed,
    Object context = freezed,
  }) {
    return _then(SeriesPageLaunched(
      series: series == freezed ? _value.series : series as Series,
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$SeriesPageLaunched
    with DiagnosticableTreeMixin
    implements SeriesPageLaunched {
  const _$SeriesPageLaunched({this.series, this.context});

  @override
  final Series series;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseEvent.seriesPageLaunched(series: $series, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SeriesDatabaseEvent.seriesPageLaunched'))
      ..add(DiagnosticsProperty('series', series))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPageLaunched &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(series) ^
      const DeepCollectionEquality().hash(context);

  @override
  $SeriesPageLaunchedCopyWith<SeriesPageLaunched> get copyWith =>
      _$SeriesPageLaunchedCopyWithImpl<SeriesPageLaunched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result seriesPageLaunched(Series series, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
    @required Result readChapterOneButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return seriesPageLaunched(series, context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    Result readChapterOneButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesPageLaunched != null) {
      return seriesPageLaunched(series, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result seriesPageLaunched(SeriesPageLaunched value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required
        Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    @required
        Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return seriesPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesPageLaunched != null) {
      return seriesPageLaunched(this);
    }
    return orElse();
  }
}

abstract class SeriesPageLaunched implements SeriesDatabaseEvent {
  const factory SeriesPageLaunched({Series series, BuildContext context}) =
      _$SeriesPageLaunched;

  Series get series;
  BuildContext get context;
  $SeriesPageLaunchedCopyWith<SeriesPageLaunched> get copyWith;
}

abstract class $LikeButtonPressedCopyWith<$Res> {
  factory $LikeButtonPressedCopyWith(
          LikeButtonPressed value, $Res Function(LikeButtonPressed) then) =
      _$LikeButtonPressedCopyWithImpl<$Res>;
}

class _$LikeButtonPressedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $LikeButtonPressedCopyWith<$Res> {
  _$LikeButtonPressedCopyWithImpl(
      LikeButtonPressed _value, $Res Function(LikeButtonPressed) _then)
      : super(_value, (v) => _then(v as LikeButtonPressed));

  @override
  LikeButtonPressed get _value => super._value as LikeButtonPressed;
}

class _$LikeButtonPressed
    with DiagnosticableTreeMixin
    implements LikeButtonPressed {
  const _$LikeButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseEvent.likeButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SeriesDatabaseEvent.likeButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LikeButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result seriesPageLaunched(Series series, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
    @required Result readChapterOneButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return likeButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    Result readChapterOneButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeButtonPressed != null) {
      return likeButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result seriesPageLaunched(SeriesPageLaunched value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required
        Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    @required
        Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return likeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeButtonPressed != null) {
      return likeButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LikeButtonPressed implements SeriesDatabaseEvent {
  const factory LikeButtonPressed() = _$LikeButtonPressed;
}

abstract class $BookmarkButtonPressedCopyWith<$Res> {
  factory $BookmarkButtonPressedCopyWith(BookmarkButtonPressed value,
          $Res Function(BookmarkButtonPressed) then) =
      _$BookmarkButtonPressedCopyWithImpl<$Res>;
}

class _$BookmarkButtonPressedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $BookmarkButtonPressedCopyWith<$Res> {
  _$BookmarkButtonPressedCopyWithImpl(
      BookmarkButtonPressed _value, $Res Function(BookmarkButtonPressed) _then)
      : super(_value, (v) => _then(v as BookmarkButtonPressed));

  @override
  BookmarkButtonPressed get _value => super._value as BookmarkButtonPressed;
}

class _$BookmarkButtonPressed
    with DiagnosticableTreeMixin
    implements BookmarkButtonPressed {
  const _$BookmarkButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseEvent.bookmarkButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SeriesDatabaseEvent.bookmarkButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BookmarkButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result seriesPageLaunched(Series series, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
    @required Result readChapterOneButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return bookmarkButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    Result readChapterOneButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result seriesPageLaunched(SeriesPageLaunched value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required
        Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    @required
        Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return bookmarkButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed(this);
    }
    return orElse();
  }
}

abstract class BookmarkButtonPressed implements SeriesDatabaseEvent {
  const factory BookmarkButtonPressed() = _$BookmarkButtonPressed;
}

abstract class $ShowMoreSummaryButtonPressedCopyWith<$Res> {
  factory $ShowMoreSummaryButtonPressedCopyWith(
          ShowMoreSummaryButtonPressed value,
          $Res Function(ShowMoreSummaryButtonPressed) then) =
      _$ShowMoreSummaryButtonPressedCopyWithImpl<$Res>;
}

class _$ShowMoreSummaryButtonPressedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $ShowMoreSummaryButtonPressedCopyWith<$Res> {
  _$ShowMoreSummaryButtonPressedCopyWithImpl(
      ShowMoreSummaryButtonPressed _value,
      $Res Function(ShowMoreSummaryButtonPressed) _then)
      : super(_value, (v) => _then(v as ShowMoreSummaryButtonPressed));

  @override
  ShowMoreSummaryButtonPressed get _value =>
      super._value as ShowMoreSummaryButtonPressed;
}

class _$ShowMoreSummaryButtonPressed
    with DiagnosticableTreeMixin
    implements ShowMoreSummaryButtonPressed {
  const _$ShowMoreSummaryButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseEvent.showMoreSummaryButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SeriesDatabaseEvent.showMoreSummaryButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowMoreSummaryButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result seriesPageLaunched(Series series, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
    @required Result readChapterOneButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return showMoreSummaryButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    Result readChapterOneButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showMoreSummaryButtonPressed != null) {
      return showMoreSummaryButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result seriesPageLaunched(SeriesPageLaunched value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required
        Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    @required
        Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return showMoreSummaryButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showMoreSummaryButtonPressed != null) {
      return showMoreSummaryButtonPressed(this);
    }
    return orElse();
  }
}

abstract class ShowMoreSummaryButtonPressed implements SeriesDatabaseEvent {
  const factory ShowMoreSummaryButtonPressed() = _$ShowMoreSummaryButtonPressed;
}

abstract class $ReadChapterOneButtonPressedCopyWith<$Res> {
  factory $ReadChapterOneButtonPressedCopyWith(
          ReadChapterOneButtonPressed value,
          $Res Function(ReadChapterOneButtonPressed) then) =
      _$ReadChapterOneButtonPressedCopyWithImpl<$Res>;
}

class _$ReadChapterOneButtonPressedCopyWithImpl<$Res>
    extends _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $ReadChapterOneButtonPressedCopyWith<$Res> {
  _$ReadChapterOneButtonPressedCopyWithImpl(ReadChapterOneButtonPressed _value,
      $Res Function(ReadChapterOneButtonPressed) _then)
      : super(_value, (v) => _then(v as ReadChapterOneButtonPressed));

  @override
  ReadChapterOneButtonPressed get _value =>
      super._value as ReadChapterOneButtonPressed;
}

class _$ReadChapterOneButtonPressed
    with DiagnosticableTreeMixin
    implements ReadChapterOneButtonPressed {
  const _$ReadChapterOneButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseEvent.readChapterOneButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SeriesDatabaseEvent.readChapterOneButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadChapterOneButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result seriesPageLaunched(Series series, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
    @required Result readChapterOneButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return readChapterOneButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    Result readChapterOneButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (readChapterOneButtonPressed != null) {
      return readChapterOneButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result seriesPageLaunched(SeriesPageLaunched value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required
        Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    @required
        Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    assert(readChapterOneButtonPressed != null);
    return readChapterOneButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
    Result readChapterOneButtonPressed(ReadChapterOneButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (readChapterOneButtonPressed != null) {
      return readChapterOneButtonPressed(this);
    }
    return orElse();
  }
}

abstract class ReadChapterOneButtonPressed implements SeriesDatabaseEvent {
  const factory ReadChapterOneButtonPressed() = _$ReadChapterOneButtonPressed;
}

class _$SeriesDatabaseStateTearOff {
  const _$SeriesDatabaseStateTearOff();

  _SeriesDatabaseState call(
      {@required
          Session session,
      @required
          Series series,
      @required
          Chapter chapterOne,
      @required
          bool isLiked,
      @required
          bool isBookmarked,
      @required
          int viewsCount,
      @required
          int likesCount,
      @required
          int bookmarksCount,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _SeriesDatabaseState(
      session: session,
      series: series,
      chapterOne: chapterOne,
      isLiked: isLiked,
      isBookmarked: isBookmarked,
      viewsCount: viewsCount,
      likesCount: likesCount,
      bookmarksCount: bookmarksCount,
      genresMap: genresMap,
      languagesMap: languagesMap,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SeriesDatabaseState = _$SeriesDatabaseStateTearOff();

mixin _$SeriesDatabaseState {
  Session get session;
  Series get series;
  Chapter get chapterOne;
  bool get isLiked;
  bool get isBookmarked;
  int get viewsCount;
  int get likesCount;
  int get bookmarksCount;
  Map<String, String> get genresMap;
  Map<String, String> get languagesMap;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $SeriesDatabaseStateCopyWith<SeriesDatabaseState> get copyWith;
}

abstract class $SeriesDatabaseStateCopyWith<$Res> {
  factory $SeriesDatabaseStateCopyWith(
          SeriesDatabaseState value, $Res Function(SeriesDatabaseState) then) =
      _$SeriesDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {Session session,
      Series series,
      Chapter chapterOne,
      bool isLiked,
      bool isBookmarked,
      int viewsCount,
      int likesCount,
      int bookmarksCount,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$SeriesDatabaseStateCopyWithImpl<$Res>
    implements $SeriesDatabaseStateCopyWith<$Res> {
  _$SeriesDatabaseStateCopyWithImpl(this._value, this._then);

  final SeriesDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SeriesDatabaseState) _then;

  @override
  $Res call({
    Object session = freezed,
    Object series = freezed,
    Object chapterOne = freezed,
    Object isLiked = freezed,
    Object isBookmarked = freezed,
    Object viewsCount = freezed,
    Object likesCount = freezed,
    Object bookmarksCount = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed ? _value.session : session as Session,
      series: series == freezed ? _value.series : series as Series,
      chapterOne:
          chapterOne == freezed ? _value.chapterOne : chapterOne as Chapter,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      isBookmarked:
          isBookmarked == freezed ? _value.isBookmarked : isBookmarked as bool,
      viewsCount: viewsCount == freezed ? _value.viewsCount : viewsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount as int,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

abstract class _$SeriesDatabaseStateCopyWith<$Res>
    implements $SeriesDatabaseStateCopyWith<$Res> {
  factory _$SeriesDatabaseStateCopyWith(_SeriesDatabaseState value,
          $Res Function(_SeriesDatabaseState) then) =
      __$SeriesDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Session session,
      Series series,
      Chapter chapterOne,
      bool isLiked,
      bool isBookmarked,
      int viewsCount,
      int likesCount,
      int bookmarksCount,
      Map<String, String> genresMap,
      Map<String, String> languagesMap,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class __$SeriesDatabaseStateCopyWithImpl<$Res>
    extends _$SeriesDatabaseStateCopyWithImpl<$Res>
    implements _$SeriesDatabaseStateCopyWith<$Res> {
  __$SeriesDatabaseStateCopyWithImpl(
      _SeriesDatabaseState _value, $Res Function(_SeriesDatabaseState) _then)
      : super(_value, (v) => _then(v as _SeriesDatabaseState));

  @override
  _SeriesDatabaseState get _value => super._value as _SeriesDatabaseState;

  @override
  $Res call({
    Object session = freezed,
    Object series = freezed,
    Object chapterOne = freezed,
    Object isLiked = freezed,
    Object isBookmarked = freezed,
    Object viewsCount = freezed,
    Object likesCount = freezed,
    Object bookmarksCount = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_SeriesDatabaseState(
      session: session == freezed ? _value.session : session as Session,
      series: series == freezed ? _value.series : series as Series,
      chapterOne:
          chapterOne == freezed ? _value.chapterOne : chapterOne as Chapter,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      isBookmarked:
          isBookmarked == freezed ? _value.isBookmarked : isBookmarked as bool,
      viewsCount: viewsCount == freezed ? _value.viewsCount : viewsCount as int,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      bookmarksCount: bookmarksCount == freezed
          ? _value.bookmarksCount
          : bookmarksCount as int,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_SeriesDatabaseState
    with DiagnosticableTreeMixin
    implements _SeriesDatabaseState {
  const _$_SeriesDatabaseState(
      {@required this.session,
      @required this.series,
      @required this.chapterOne,
      @required this.isLiked,
      @required this.isBookmarked,
      @required this.viewsCount,
      @required this.likesCount,
      @required this.bookmarksCount,
      @required this.genresMap,
      @required this.languagesMap,
      @required this.databaseFailureOrSuccessOption})
      : assert(session != null),
        assert(series != null),
        assert(chapterOne != null),
        assert(isLiked != null),
        assert(isBookmarked != null),
        assert(viewsCount != null),
        assert(likesCount != null),
        assert(bookmarksCount != null),
        assert(genresMap != null),
        assert(languagesMap != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final Session session;
  @override
  final Series series;
  @override
  final Chapter chapterOne;
  @override
  final bool isLiked;
  @override
  final bool isBookmarked;
  @override
  final int viewsCount;
  @override
  final int likesCount;
  @override
  final int bookmarksCount;
  @override
  final Map<String, String> genresMap;
  @override
  final Map<String, String> languagesMap;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseState(session: $session, series: $series, chapterOne: $chapterOne, isLiked: $isLiked, isBookmarked: $isBookmarked, viewsCount: $viewsCount, likesCount: $likesCount, bookmarksCount: $bookmarksCount, genresMap: $genresMap, languagesMap: $languagesMap, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SeriesDatabaseState'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('series', series))
      ..add(DiagnosticsProperty('chapterOne', chapterOne))
      ..add(DiagnosticsProperty('isLiked', isLiked))
      ..add(DiagnosticsProperty('isBookmarked', isBookmarked))
      ..add(DiagnosticsProperty('viewsCount', viewsCount))
      ..add(DiagnosticsProperty('likesCount', likesCount))
      ..add(DiagnosticsProperty('bookmarksCount', bookmarksCount))
      ..add(DiagnosticsProperty('genresMap', genresMap))
      ..add(DiagnosticsProperty('languagesMap', languagesMap))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDatabaseState &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.chapterOne, chapterOne) ||
                const DeepCollectionEquality()
                    .equals(other.chapterOne, chapterOne)) &&
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isLiked, isLiked)) &&
            (identical(other.isBookmarked, isBookmarked) ||
                const DeepCollectionEquality()
                    .equals(other.isBookmarked, isBookmarked)) &&
            (identical(other.viewsCount, viewsCount) ||
                const DeepCollectionEquality()
                    .equals(other.viewsCount, viewsCount)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.bookmarksCount, bookmarksCount) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarksCount, bookmarksCount)) &&
            (identical(other.genresMap, genresMap) ||
                const DeepCollectionEquality()
                    .equals(other.genresMap, genresMap)) &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)) &&
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(series) ^
      const DeepCollectionEquality().hash(chapterOne) ^
      const DeepCollectionEquality().hash(isLiked) ^
      const DeepCollectionEquality().hash(isBookmarked) ^
      const DeepCollectionEquality().hash(viewsCount) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(bookmarksCount) ^
      const DeepCollectionEquality().hash(genresMap) ^
      const DeepCollectionEquality().hash(languagesMap) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith =>
      __$SeriesDatabaseStateCopyWithImpl<_SeriesDatabaseState>(
          this, _$identity);
}

abstract class _SeriesDatabaseState implements SeriesDatabaseState {
  const factory _SeriesDatabaseState(
      {@required
          Session session,
      @required
          Series series,
      @required
          Chapter chapterOne,
      @required
          bool isLiked,
      @required
          bool isBookmarked,
      @required
          int viewsCount,
      @required
          int likesCount,
      @required
          int bookmarksCount,
      @required
          Map<String, String> genresMap,
      @required
          Map<String, String> languagesMap,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_SeriesDatabaseState;

  @override
  Session get session;
  @override
  Series get series;
  @override
  Chapter get chapterOne;
  @override
  bool get isLiked;
  @override
  bool get isBookmarked;
  @override
  int get viewsCount;
  @override
  int get likesCount;
  @override
  int get bookmarksCount;
  @override
  Map<String, String> get genresMap;
  @override
  Map<String, String> get languagesMap;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith;
}
