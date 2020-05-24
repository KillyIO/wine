// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'series_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SeriesDatabaseEventTearOff {
  const _$SeriesDatabaseEventTearOff();

  SeriesPageLaunched seriesPageLaunched(
      {@required Series series,
      @required String placeholderUrl,
      String username,
      BuildContext context}) {
    return SeriesPageLaunched(
      series: series,
      placeholderUrl: placeholderUrl,
      username: username,
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
}

// ignore: unused_element
const $SeriesDatabaseEvent = _$SeriesDatabaseEventTearOff();

mixin _$SeriesDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result seriesPageLaunched(Series series, String placeholderUrl,
            String username, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, String placeholderUrl,
        String username, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result seriesPageLaunched(SeriesPageLaunched value),
    @required Result likeButtonPressed(LikeButtonPressed value),
    @required Result bookmarkButtonPressed(BookmarkButtonPressed value),
    @required
        Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
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
  $Res call(
      {Series series,
      String placeholderUrl,
      String username,
      BuildContext context});
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
    Object placeholderUrl = freezed,
    Object username = freezed,
    Object context = freezed,
  }) {
    return _then(SeriesPageLaunched(
      series: series == freezed ? _value.series : series as Series,
      placeholderUrl: placeholderUrl == freezed
          ? _value.placeholderUrl
          : placeholderUrl as String,
      username: username == freezed ? _value.username : username as String,
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$SeriesPageLaunched
    with DiagnosticableTreeMixin
    implements SeriesPageLaunched {
  const _$SeriesPageLaunched(
      {@required this.series,
      @required this.placeholderUrl,
      this.username,
      this.context})
      : assert(series != null),
        assert(placeholderUrl != null);

  @override
  final Series series;
  @override
  final String placeholderUrl;
  @override
  final String username;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseEvent.seriesPageLaunched(series: $series, placeholderUrl: $placeholderUrl, username: $username, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SeriesDatabaseEvent.seriesPageLaunched'))
      ..add(DiagnosticsProperty('series', series))
      ..add(DiagnosticsProperty('placeholderUrl', placeholderUrl))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPageLaunched &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.placeholderUrl, placeholderUrl) ||
                const DeepCollectionEquality()
                    .equals(other.placeholderUrl, placeholderUrl)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(series) ^
      const DeepCollectionEquality().hash(placeholderUrl) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(context);

  @override
  $SeriesPageLaunchedCopyWith<SeriesPageLaunched> get copyWith =>
      _$SeriesPageLaunchedCopyWithImpl<SeriesPageLaunched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result seriesPageLaunched(Series series, String placeholderUrl,
            String username, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return seriesPageLaunched(series, placeholderUrl, username, context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, String placeholderUrl,
        String username, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (seriesPageLaunched != null) {
      return seriesPageLaunched(series, placeholderUrl, username, context);
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
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return seriesPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
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
  const factory SeriesPageLaunched(
      {@required Series series,
      @required String placeholderUrl,
      String username,
      BuildContext context}) = _$SeriesPageLaunched;

  Series get series;
  String get placeholderUrl;
  String get username;
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
    @required
        Result seriesPageLaunched(Series series, String placeholderUrl,
            String username, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return likeButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, String placeholderUrl,
        String username, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
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
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return likeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
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
    @required
        Result seriesPageLaunched(Series series, String placeholderUrl,
            String username, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return bookmarkButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, String placeholderUrl,
        String username, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
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
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return bookmarkButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
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
    @required
        Result seriesPageLaunched(Series series, String placeholderUrl,
            String username, BuildContext context),
    @required Result likeButtonPressed(),
    @required Result bookmarkButtonPressed(),
    @required Result showMoreSummaryButtonPressed(),
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return showMoreSummaryButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result seriesPageLaunched(Series series, String placeholderUrl,
        String username, BuildContext context),
    Result likeButtonPressed(),
    Result bookmarkButtonPressed(),
    Result showMoreSummaryButtonPressed(),
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
  }) {
    assert(seriesPageLaunched != null);
    assert(likeButtonPressed != null);
    assert(bookmarkButtonPressed != null);
    assert(showMoreSummaryButtonPressed != null);
    return showMoreSummaryButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result seriesPageLaunched(SeriesPageLaunched value),
    Result likeButtonPressed(LikeButtonPressed value),
    Result bookmarkButtonPressed(BookmarkButtonPressed value),
    Result showMoreSummaryButtonPressed(ShowMoreSummaryButtonPressed value),
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

class _$SeriesDatabaseStateTearOff {
  const _$SeriesDatabaseStateTearOff();

  _SeriesDatabaseState call(
      {@required Series series,
      @required String placeholderUrl,
      @required String username,
      @required Map<String, String> genresMap,
      @required Map<String, String> languagesMap}) {
    return _SeriesDatabaseState(
      series: series,
      placeholderUrl: placeholderUrl,
      username: username,
      genresMap: genresMap,
      languagesMap: languagesMap,
    );
  }
}

// ignore: unused_element
const $SeriesDatabaseState = _$SeriesDatabaseStateTearOff();

mixin _$SeriesDatabaseState {
  Series get series;
  String get placeholderUrl;
  String get username;
  Map<String, String> get genresMap;
  Map<String, String> get languagesMap;

  $SeriesDatabaseStateCopyWith<SeriesDatabaseState> get copyWith;
}

abstract class $SeriesDatabaseStateCopyWith<$Res> {
  factory $SeriesDatabaseStateCopyWith(
          SeriesDatabaseState value, $Res Function(SeriesDatabaseState) then) =
      _$SeriesDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {Series series,
      String placeholderUrl,
      String username,
      Map<String, String> genresMap,
      Map<String, String> languagesMap});
}

class _$SeriesDatabaseStateCopyWithImpl<$Res>
    implements $SeriesDatabaseStateCopyWith<$Res> {
  _$SeriesDatabaseStateCopyWithImpl(this._value, this._then);

  final SeriesDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SeriesDatabaseState) _then;

  @override
  $Res call({
    Object series = freezed,
    Object placeholderUrl = freezed,
    Object username = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
  }) {
    return _then(_value.copyWith(
      series: series == freezed ? _value.series : series as Series,
      placeholderUrl: placeholderUrl == freezed
          ? _value.placeholderUrl
          : placeholderUrl as String,
      username: username == freezed ? _value.username : username as String,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
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
      {Series series,
      String placeholderUrl,
      String username,
      Map<String, String> genresMap,
      Map<String, String> languagesMap});
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
    Object series = freezed,
    Object placeholderUrl = freezed,
    Object username = freezed,
    Object genresMap = freezed,
    Object languagesMap = freezed,
  }) {
    return _then(_SeriesDatabaseState(
      series: series == freezed ? _value.series : series as Series,
      placeholderUrl: placeholderUrl == freezed
          ? _value.placeholderUrl
          : placeholderUrl as String,
      username: username == freezed ? _value.username : username as String,
      genresMap: genresMap == freezed
          ? _value.genresMap
          : genresMap as Map<String, String>,
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap as Map<String, String>,
    ));
  }
}

class _$_SeriesDatabaseState
    with DiagnosticableTreeMixin
    implements _SeriesDatabaseState {
  const _$_SeriesDatabaseState(
      {@required this.series,
      @required this.placeholderUrl,
      @required this.username,
      @required this.genresMap,
      @required this.languagesMap})
      : assert(series != null),
        assert(placeholderUrl != null),
        assert(username != null),
        assert(genresMap != null),
        assert(languagesMap != null);

  @override
  final Series series;
  @override
  final String placeholderUrl;
  @override
  final String username;
  @override
  final Map<String, String> genresMap;
  @override
  final Map<String, String> languagesMap;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDatabaseState(series: $series, placeholderUrl: $placeholderUrl, username: $username, genresMap: $genresMap, languagesMap: $languagesMap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SeriesDatabaseState'))
      ..add(DiagnosticsProperty('series', series))
      ..add(DiagnosticsProperty('placeholderUrl', placeholderUrl))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('genresMap', genresMap))
      ..add(DiagnosticsProperty('languagesMap', languagesMap));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDatabaseState &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.placeholderUrl, placeholderUrl) ||
                const DeepCollectionEquality()
                    .equals(other.placeholderUrl, placeholderUrl)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.genresMap, genresMap) ||
                const DeepCollectionEquality()
                    .equals(other.genresMap, genresMap)) &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(series) ^
      const DeepCollectionEquality().hash(placeholderUrl) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(genresMap) ^
      const DeepCollectionEquality().hash(languagesMap);

  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith =>
      __$SeriesDatabaseStateCopyWithImpl<_SeriesDatabaseState>(
          this, _$identity);
}

abstract class _SeriesDatabaseState implements SeriesDatabaseState {
  const factory _SeriesDatabaseState(
      {@required Series series,
      @required String placeholderUrl,
      @required String username,
      @required Map<String, String> genresMap,
      @required Map<String, String> languagesMap}) = _$_SeriesDatabaseState;

  @override
  Series get series;
  @override
  String get placeholderUrl;
  @override
  String get username;
  @override
  Map<String, String> get genresMap;
  @override
  Map<String, String> get languagesMap;
  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith;
}
