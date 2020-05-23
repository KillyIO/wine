// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountDatabaseEventTearOff {
  const _$AccountDatabaseEventTearOff();

  AccountPageLaunched accountPageLaunched({BuildContext context}) {
    return AccountPageLaunched(
      context: context,
    );
  }

  FetchMoreSeries fetchMoreSeries() {
    return const FetchMoreSeries();
  }

  FetchMoreChapters fetchMoreChapters() {
    return const FetchMoreChapters();
  }
}

// ignore: unused_element
const $AccountDatabaseEvent = _$AccountDatabaseEventTearOff();

mixin _$AccountDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result fetchMoreSeries(),
    @required Result fetchMoreChapters(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result fetchMoreSeries(),
    Result fetchMoreChapters(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result fetchMoreSeries(FetchMoreSeries value),
    @required Result fetchMoreChapters(FetchMoreChapters value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result fetchMoreSeries(FetchMoreSeries value),
    Result fetchMoreChapters(FetchMoreChapters value),
    @required Result orElse(),
  });
}

abstract class $AccountDatabaseEventCopyWith<$Res> {
  factory $AccountDatabaseEventCopyWith(AccountDatabaseEvent value,
          $Res Function(AccountDatabaseEvent) then) =
      _$AccountDatabaseEventCopyWithImpl<$Res>;
}

class _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $AccountDatabaseEventCopyWith<$Res> {
  _$AccountDatabaseEventCopyWithImpl(this._value, this._then);

  final AccountDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(AccountDatabaseEvent) _then;
}

abstract class $AccountPageLaunchedCopyWith<$Res> {
  factory $AccountPageLaunchedCopyWith(
          AccountPageLaunched value, $Res Function(AccountPageLaunched) then) =
      _$AccountPageLaunchedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$AccountPageLaunchedCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $AccountPageLaunchedCopyWith<$Res> {
  _$AccountPageLaunchedCopyWithImpl(
      AccountPageLaunched _value, $Res Function(AccountPageLaunched) _then)
      : super(_value, (v) => _then(v as AccountPageLaunched));

  @override
  AccountPageLaunched get _value => super._value as AccountPageLaunched;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(AccountPageLaunched(
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$AccountPageLaunched
    with DiagnosticableTreeMixin
    implements AccountPageLaunched {
  const _$AccountPageLaunched({this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.accountPageLaunched(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.accountPageLaunched'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountPageLaunched &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $AccountPageLaunchedCopyWith<AccountPageLaunched> get copyWith =>
      _$AccountPageLaunchedCopyWithImpl<AccountPageLaunched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result fetchMoreSeries(),
    @required Result fetchMoreChapters(),
  }) {
    assert(accountPageLaunched != null);
    assert(fetchMoreSeries != null);
    assert(fetchMoreChapters != null);
    return accountPageLaunched(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result fetchMoreSeries(),
    Result fetchMoreChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPageLaunched != null) {
      return accountPageLaunched(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result fetchMoreSeries(FetchMoreSeries value),
    @required Result fetchMoreChapters(FetchMoreChapters value),
  }) {
    assert(accountPageLaunched != null);
    assert(fetchMoreSeries != null);
    assert(fetchMoreChapters != null);
    return accountPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result fetchMoreSeries(FetchMoreSeries value),
    Result fetchMoreChapters(FetchMoreChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountPageLaunched != null) {
      return accountPageLaunched(this);
    }
    return orElse();
  }
}

abstract class AccountPageLaunched implements AccountDatabaseEvent {
  const factory AccountPageLaunched({BuildContext context}) =
      _$AccountPageLaunched;

  BuildContext get context;
  $AccountPageLaunchedCopyWith<AccountPageLaunched> get copyWith;
}

abstract class $FetchMoreSeriesCopyWith<$Res> {
  factory $FetchMoreSeriesCopyWith(
          FetchMoreSeries value, $Res Function(FetchMoreSeries) then) =
      _$FetchMoreSeriesCopyWithImpl<$Res>;
}

class _$FetchMoreSeriesCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $FetchMoreSeriesCopyWith<$Res> {
  _$FetchMoreSeriesCopyWithImpl(
      FetchMoreSeries _value, $Res Function(FetchMoreSeries) _then)
      : super(_value, (v) => _then(v as FetchMoreSeries));

  @override
  FetchMoreSeries get _value => super._value as FetchMoreSeries;
}

class _$FetchMoreSeries
    with DiagnosticableTreeMixin
    implements FetchMoreSeries {
  const _$FetchMoreSeries();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.fetchMoreSeries()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AccountDatabaseEvent.fetchMoreSeries'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchMoreSeries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result fetchMoreSeries(),
    @required Result fetchMoreChapters(),
  }) {
    assert(accountPageLaunched != null);
    assert(fetchMoreSeries != null);
    assert(fetchMoreChapters != null);
    return fetchMoreSeries();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result fetchMoreSeries(),
    Result fetchMoreChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreSeries != null) {
      return fetchMoreSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result fetchMoreSeries(FetchMoreSeries value),
    @required Result fetchMoreChapters(FetchMoreChapters value),
  }) {
    assert(accountPageLaunched != null);
    assert(fetchMoreSeries != null);
    assert(fetchMoreChapters != null);
    return fetchMoreSeries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result fetchMoreSeries(FetchMoreSeries value),
    Result fetchMoreChapters(FetchMoreChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreSeries != null) {
      return fetchMoreSeries(this);
    }
    return orElse();
  }
}

abstract class FetchMoreSeries implements AccountDatabaseEvent {
  const factory FetchMoreSeries() = _$FetchMoreSeries;
}

abstract class $FetchMoreChaptersCopyWith<$Res> {
  factory $FetchMoreChaptersCopyWith(
          FetchMoreChapters value, $Res Function(FetchMoreChapters) then) =
      _$FetchMoreChaptersCopyWithImpl<$Res>;
}

class _$FetchMoreChaptersCopyWithImpl<$Res>
    extends _$AccountDatabaseEventCopyWithImpl<$Res>
    implements $FetchMoreChaptersCopyWith<$Res> {
  _$FetchMoreChaptersCopyWithImpl(
      FetchMoreChapters _value, $Res Function(FetchMoreChapters) _then)
      : super(_value, (v) => _then(v as FetchMoreChapters));

  @override
  FetchMoreChapters get _value => super._value as FetchMoreChapters;
}

class _$FetchMoreChapters
    with DiagnosticableTreeMixin
    implements FetchMoreChapters {
  const _$FetchMoreChapters();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseEvent.fetchMoreChapters()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountDatabaseEvent.fetchMoreChapters'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchMoreChapters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountPageLaunched(BuildContext context),
    @required Result fetchMoreSeries(),
    @required Result fetchMoreChapters(),
  }) {
    assert(accountPageLaunched != null);
    assert(fetchMoreSeries != null);
    assert(fetchMoreChapters != null);
    return fetchMoreChapters();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountPageLaunched(BuildContext context),
    Result fetchMoreSeries(),
    Result fetchMoreChapters(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreChapters != null) {
      return fetchMoreChapters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountPageLaunched(AccountPageLaunched value),
    @required Result fetchMoreSeries(FetchMoreSeries value),
    @required Result fetchMoreChapters(FetchMoreChapters value),
  }) {
    assert(accountPageLaunched != null);
    assert(fetchMoreSeries != null);
    assert(fetchMoreChapters != null);
    return fetchMoreChapters(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountPageLaunched(AccountPageLaunched value),
    Result fetchMoreSeries(FetchMoreSeries value),
    Result fetchMoreChapters(FetchMoreChapters value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreChapters != null) {
      return fetchMoreChapters(this);
    }
    return orElse();
  }
}

abstract class FetchMoreChapters implements AccountDatabaseEvent {
  const factory FetchMoreChapters() = _$FetchMoreChapters;
}

class _$AccountDatabaseStateTearOff {
  const _$AccountDatabaseStateTearOff();

  _AccountSettingsState call(
      {@required
          Session session,
      @required
          List<Series> series,
      @required
          List<Chapter> chapters,
      @required
          Map<String, String> genres,
      @required
          Map<String, String> languages,
      @required
          Map<String, String> copyrights,
      @required
          List<String> placeholders,
      @required
          List<int> placeholderIndexes,
      @required
          bool isFetching,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _AccountSettingsState(
      session: session,
      series: series,
      chapters: chapters,
      genres: genres,
      languages: languages,
      copyrights: copyrights,
      placeholders: placeholders,
      placeholderIndexes: placeholderIndexes,
      isFetching: isFetching,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $AccountDatabaseState = _$AccountDatabaseStateTearOff();

mixin _$AccountDatabaseState {
  Session get session;
  List<Series> get series;
  List<Chapter> get chapters;
  Map<String, String> get genres;
  Map<String, String> get languages;
  Map<String, String> get copyrights;
  List<String> get placeholders;
  List<int> get placeholderIndexes;
  bool get isFetching;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $AccountDatabaseStateCopyWith<AccountDatabaseState> get copyWith;
}

abstract class $AccountDatabaseStateCopyWith<$Res> {
  factory $AccountDatabaseStateCopyWith(AccountDatabaseState value,
          $Res Function(AccountDatabaseState) then) =
      _$AccountDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {Session session,
      List<Series> series,
      List<Chapter> chapters,
      Map<String, String> genres,
      Map<String, String> languages,
      Map<String, String> copyrights,
      List<String> placeholders,
      List<int> placeholderIndexes,
      bool isFetching,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$AccountDatabaseStateCopyWithImpl<$Res>
    implements $AccountDatabaseStateCopyWith<$Res> {
  _$AccountDatabaseStateCopyWithImpl(this._value, this._then);

  final AccountDatabaseState _value;
  // ignore: unused_field
  final $Res Function(AccountDatabaseState) _then;

  @override
  $Res call({
    Object session = freezed,
    Object series = freezed,
    Object chapters = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object copyrights = freezed,
    Object placeholders = freezed,
    Object placeholderIndexes = freezed,
    Object isFetching = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed ? _value.session : session as Session,
      series: series == freezed ? _value.series : series as List<Series>,
      chapters:
          chapters == freezed ? _value.chapters : chapters as List<Chapter>,
      genres: genres == freezed ? _value.genres : genres as Map<String, String>,
      languages: languages == freezed
          ? _value.languages
          : languages as Map<String, String>,
      copyrights: copyrights == freezed
          ? _value.copyrights
          : copyrights as Map<String, String>,
      placeholders: placeholders == freezed
          ? _value.placeholders
          : placeholders as List<String>,
      placeholderIndexes: placeholderIndexes == freezed
          ? _value.placeholderIndexes
          : placeholderIndexes as List<int>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

abstract class _$AccountSettingsStateCopyWith<$Res>
    implements $AccountDatabaseStateCopyWith<$Res> {
  factory _$AccountSettingsStateCopyWith(_AccountSettingsState value,
          $Res Function(_AccountSettingsState) then) =
      __$AccountSettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Session session,
      List<Series> series,
      List<Chapter> chapters,
      Map<String, String> genres,
      Map<String, String> languages,
      Map<String, String> copyrights,
      List<String> placeholders,
      List<int> placeholderIndexes,
      bool isFetching,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class __$AccountSettingsStateCopyWithImpl<$Res>
    extends _$AccountDatabaseStateCopyWithImpl<$Res>
    implements _$AccountSettingsStateCopyWith<$Res> {
  __$AccountSettingsStateCopyWithImpl(
      _AccountSettingsState _value, $Res Function(_AccountSettingsState) _then)
      : super(_value, (v) => _then(v as _AccountSettingsState));

  @override
  _AccountSettingsState get _value => super._value as _AccountSettingsState;

  @override
  $Res call({
    Object session = freezed,
    Object series = freezed,
    Object chapters = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object copyrights = freezed,
    Object placeholders = freezed,
    Object placeholderIndexes = freezed,
    Object isFetching = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_AccountSettingsState(
      session: session == freezed ? _value.session : session as Session,
      series: series == freezed ? _value.series : series as List<Series>,
      chapters:
          chapters == freezed ? _value.chapters : chapters as List<Chapter>,
      genres: genres == freezed ? _value.genres : genres as Map<String, String>,
      languages: languages == freezed
          ? _value.languages
          : languages as Map<String, String>,
      copyrights: copyrights == freezed
          ? _value.copyrights
          : copyrights as Map<String, String>,
      placeholders: placeholders == freezed
          ? _value.placeholders
          : placeholders as List<String>,
      placeholderIndexes: placeholderIndexes == freezed
          ? _value.placeholderIndexes
          : placeholderIndexes as List<int>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_AccountSettingsState
    with DiagnosticableTreeMixin
    implements _AccountSettingsState {
  const _$_AccountSettingsState(
      {@required this.session,
      @required this.series,
      @required this.chapters,
      @required this.genres,
      @required this.languages,
      @required this.copyrights,
      @required this.placeholders,
      @required this.placeholderIndexes,
      @required this.isFetching,
      @required this.databaseFailureOrSuccessOption})
      : assert(session != null),
        assert(series != null),
        assert(chapters != null),
        assert(genres != null),
        assert(languages != null),
        assert(copyrights != null),
        assert(placeholders != null),
        assert(placeholderIndexes != null),
        assert(isFetching != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final Session session;
  @override
  final List<Series> series;
  @override
  final List<Chapter> chapters;
  @override
  final Map<String, String> genres;
  @override
  final Map<String, String> languages;
  @override
  final Map<String, String> copyrights;
  @override
  final List<String> placeholders;
  @override
  final List<int> placeholderIndexes;
  @override
  final bool isFetching;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDatabaseState(session: $session, series: $series, chapters: $chapters, genres: $genres, languages: $languages, copyrights: $copyrights, placeholders: $placeholders, placeholderIndexes: $placeholderIndexes, isFetching: $isFetching, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountDatabaseState'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('series', series))
      ..add(DiagnosticsProperty('chapters', chapters))
      ..add(DiagnosticsProperty('genres', genres))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('copyrights', copyrights))
      ..add(DiagnosticsProperty('placeholders', placeholders))
      ..add(DiagnosticsProperty('placeholderIndexes', placeholderIndexes))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountSettingsState &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.chapters, chapters) ||
                const DeepCollectionEquality()
                    .equals(other.chapters, chapters)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.placeholders, placeholders) ||
                const DeepCollectionEquality()
                    .equals(other.placeholders, placeholders)) &&
            (identical(other.placeholderIndexes, placeholderIndexes) ||
                const DeepCollectionEquality()
                    .equals(other.placeholderIndexes, placeholderIndexes)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
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
      const DeepCollectionEquality().hash(chapters) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(placeholders) ^
      const DeepCollectionEquality().hash(placeholderIndexes) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$AccountSettingsStateCopyWith<_AccountSettingsState> get copyWith =>
      __$AccountSettingsStateCopyWithImpl<_AccountSettingsState>(
          this, _$identity);
}

abstract class _AccountSettingsState implements AccountDatabaseState {
  const factory _AccountSettingsState(
      {@required
          Session session,
      @required
          List<Series> series,
      @required
          List<Chapter> chapters,
      @required
          Map<String, String> genres,
      @required
          Map<String, String> languages,
      @required
          Map<String, String> copyrights,
      @required
          List<String> placeholders,
      @required
          List<int> placeholderIndexes,
      @required
          bool isFetching,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_AccountSettingsState;

  @override
  Session get session;
  @override
  List<Series> get series;
  @override
  List<Chapter> get chapters;
  @override
  Map<String, String> get genres;
  @override
  Map<String, String> get languages;
  @override
  Map<String, String> get copyrights;
  @override
  List<String> get placeholders;
  @override
  List<int> get placeholderIndexes;
  @override
  bool get isFetching;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$AccountSettingsStateCopyWith<_AccountSettingsState> get copyWith;
}
