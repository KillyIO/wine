// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeDatabaseEventTearOff {
  const _$HomeDatabaseEventTearOff();

  HomePageLaunched homePageLaunched({BuildContext context}) {
    return HomePageLaunched(
      context: context,
    );
  }

  FetchMoreTopSeries fetchMoreTopSeries() {
    return const FetchMoreTopSeries();
  }

  FetchMoreNewSeries fetchMoreNewSeries() {
    return const FetchMoreNewSeries();
  }

  TimeFilterKeyChanged timeFilterKeyChanged(String key) {
    return TimeFilterKeyChanged(
      key,
    );
  }

  GenreFilterKeyChanged genreFilterKeyChanged(String key) {
    return GenreFilterKeyChanged(
      key,
    );
  }

  LanguageFilterKeyChanged languageFilterKeyChanged(String key) {
    return LanguageFilterKeyChanged(
      key,
    );
  }

  ApplyFilterChanges applyFilterChanges() {
    return const ApplyFilterChanges();
  }
}

// ignore: unused_element
const $HomeDatabaseEvent = _$HomeDatabaseEventTearOff();

mixin _$HomeDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  });
}

abstract class $HomeDatabaseEventCopyWith<$Res> {
  factory $HomeDatabaseEventCopyWith(
          HomeDatabaseEvent value, $Res Function(HomeDatabaseEvent) then) =
      _$HomeDatabaseEventCopyWithImpl<$Res>;
}

class _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $HomeDatabaseEventCopyWith<$Res> {
  _$HomeDatabaseEventCopyWithImpl(this._value, this._then);

  final HomeDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(HomeDatabaseEvent) _then;
}

abstract class $HomePageLaunchedCopyWith<$Res> {
  factory $HomePageLaunchedCopyWith(
          HomePageLaunched value, $Res Function(HomePageLaunched) then) =
      _$HomePageLaunchedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$HomePageLaunchedCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $HomePageLaunchedCopyWith<$Res> {
  _$HomePageLaunchedCopyWithImpl(
      HomePageLaunched _value, $Res Function(HomePageLaunched) _then)
      : super(_value, (v) => _then(v as HomePageLaunched));

  @override
  HomePageLaunched get _value => super._value as HomePageLaunched;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(HomePageLaunched(
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$HomePageLaunched
    with DiagnosticableTreeMixin
    implements HomePageLaunched {
  const _$HomePageLaunched({this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.homePageLaunched(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeDatabaseEvent.homePageLaunched'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomePageLaunched &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $HomePageLaunchedCopyWith<HomePageLaunched> get copyWith =>
      _$HomePageLaunchedCopyWithImpl<HomePageLaunched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return homePageLaunched(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunched != null) {
      return homePageLaunched(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return homePageLaunched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunched != null) {
      return homePageLaunched(this);
    }
    return orElse();
  }
}

abstract class HomePageLaunched implements HomeDatabaseEvent {
  const factory HomePageLaunched({BuildContext context}) = _$HomePageLaunched;

  BuildContext get context;
  $HomePageLaunchedCopyWith<HomePageLaunched> get copyWith;
}

abstract class $FetchMoreTopSeriesCopyWith<$Res> {
  factory $FetchMoreTopSeriesCopyWith(
          FetchMoreTopSeries value, $Res Function(FetchMoreTopSeries) then) =
      _$FetchMoreTopSeriesCopyWithImpl<$Res>;
}

class _$FetchMoreTopSeriesCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $FetchMoreTopSeriesCopyWith<$Res> {
  _$FetchMoreTopSeriesCopyWithImpl(
      FetchMoreTopSeries _value, $Res Function(FetchMoreTopSeries) _then)
      : super(_value, (v) => _then(v as FetchMoreTopSeries));

  @override
  FetchMoreTopSeries get _value => super._value as FetchMoreTopSeries;
}

class _$FetchMoreTopSeries
    with DiagnosticableTreeMixin
    implements FetchMoreTopSeries {
  const _$FetchMoreTopSeries();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.fetchMoreTopSeries()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeDatabaseEvent.fetchMoreTopSeries'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchMoreTopSeries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return fetchMoreTopSeries();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreTopSeries != null) {
      return fetchMoreTopSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return fetchMoreTopSeries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreTopSeries != null) {
      return fetchMoreTopSeries(this);
    }
    return orElse();
  }
}

abstract class FetchMoreTopSeries implements HomeDatabaseEvent {
  const factory FetchMoreTopSeries() = _$FetchMoreTopSeries;
}

abstract class $FetchMoreNewSeriesCopyWith<$Res> {
  factory $FetchMoreNewSeriesCopyWith(
          FetchMoreNewSeries value, $Res Function(FetchMoreNewSeries) then) =
      _$FetchMoreNewSeriesCopyWithImpl<$Res>;
}

class _$FetchMoreNewSeriesCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $FetchMoreNewSeriesCopyWith<$Res> {
  _$FetchMoreNewSeriesCopyWithImpl(
      FetchMoreNewSeries _value, $Res Function(FetchMoreNewSeries) _then)
      : super(_value, (v) => _then(v as FetchMoreNewSeries));

  @override
  FetchMoreNewSeries get _value => super._value as FetchMoreNewSeries;
}

class _$FetchMoreNewSeries
    with DiagnosticableTreeMixin
    implements FetchMoreNewSeries {
  const _$FetchMoreNewSeries();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.fetchMoreNewSeries()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeDatabaseEvent.fetchMoreNewSeries'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchMoreNewSeries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return fetchMoreNewSeries();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreNewSeries != null) {
      return fetchMoreNewSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return fetchMoreNewSeries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMoreNewSeries != null) {
      return fetchMoreNewSeries(this);
    }
    return orElse();
  }
}

abstract class FetchMoreNewSeries implements HomeDatabaseEvent {
  const factory FetchMoreNewSeries() = _$FetchMoreNewSeries;
}

abstract class $TimeFilterKeyChangedCopyWith<$Res> {
  factory $TimeFilterKeyChangedCopyWith(TimeFilterKeyChanged value,
          $Res Function(TimeFilterKeyChanged) then) =
      _$TimeFilterKeyChangedCopyWithImpl<$Res>;
  $Res call({String key});
}

class _$TimeFilterKeyChangedCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $TimeFilterKeyChangedCopyWith<$Res> {
  _$TimeFilterKeyChangedCopyWithImpl(
      TimeFilterKeyChanged _value, $Res Function(TimeFilterKeyChanged) _then)
      : super(_value, (v) => _then(v as TimeFilterKeyChanged));

  @override
  TimeFilterKeyChanged get _value => super._value as TimeFilterKeyChanged;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(TimeFilterKeyChanged(
      key == freezed ? _value.key : key as String,
    ));
  }
}

class _$TimeFilterKeyChanged
    with DiagnosticableTreeMixin
    implements TimeFilterKeyChanged {
  const _$TimeFilterKeyChanged(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.timeFilterKeyChanged(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeDatabaseEvent.timeFilterKeyChanged'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeFilterKeyChanged &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  $TimeFilterKeyChangedCopyWith<TimeFilterKeyChanged> get copyWith =>
      _$TimeFilterKeyChangedCopyWithImpl<TimeFilterKeyChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return timeFilterKeyChanged(key);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeFilterKeyChanged != null) {
      return timeFilterKeyChanged(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return timeFilterKeyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeFilterKeyChanged != null) {
      return timeFilterKeyChanged(this);
    }
    return orElse();
  }
}

abstract class TimeFilterKeyChanged implements HomeDatabaseEvent {
  const factory TimeFilterKeyChanged(String key) = _$TimeFilterKeyChanged;

  String get key;
  $TimeFilterKeyChangedCopyWith<TimeFilterKeyChanged> get copyWith;
}

abstract class $GenreFilterKeyChangedCopyWith<$Res> {
  factory $GenreFilterKeyChangedCopyWith(GenreFilterKeyChanged value,
          $Res Function(GenreFilterKeyChanged) then) =
      _$GenreFilterKeyChangedCopyWithImpl<$Res>;
  $Res call({String key});
}

class _$GenreFilterKeyChangedCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $GenreFilterKeyChangedCopyWith<$Res> {
  _$GenreFilterKeyChangedCopyWithImpl(
      GenreFilterKeyChanged _value, $Res Function(GenreFilterKeyChanged) _then)
      : super(_value, (v) => _then(v as GenreFilterKeyChanged));

  @override
  GenreFilterKeyChanged get _value => super._value as GenreFilterKeyChanged;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(GenreFilterKeyChanged(
      key == freezed ? _value.key : key as String,
    ));
  }
}

class _$GenreFilterKeyChanged
    with DiagnosticableTreeMixin
    implements GenreFilterKeyChanged {
  const _$GenreFilterKeyChanged(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.genreFilterKeyChanged(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.genreFilterKeyChanged'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenreFilterKeyChanged &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  $GenreFilterKeyChangedCopyWith<GenreFilterKeyChanged> get copyWith =>
      _$GenreFilterKeyChangedCopyWithImpl<GenreFilterKeyChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return genreFilterKeyChanged(key);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreFilterKeyChanged != null) {
      return genreFilterKeyChanged(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return genreFilterKeyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genreFilterKeyChanged != null) {
      return genreFilterKeyChanged(this);
    }
    return orElse();
  }
}

abstract class GenreFilterKeyChanged implements HomeDatabaseEvent {
  const factory GenreFilterKeyChanged(String key) = _$GenreFilterKeyChanged;

  String get key;
  $GenreFilterKeyChangedCopyWith<GenreFilterKeyChanged> get copyWith;
}

abstract class $LanguageFilterKeyChangedCopyWith<$Res> {
  factory $LanguageFilterKeyChangedCopyWith(LanguageFilterKeyChanged value,
          $Res Function(LanguageFilterKeyChanged) then) =
      _$LanguageFilterKeyChangedCopyWithImpl<$Res>;
  $Res call({String key});
}

class _$LanguageFilterKeyChangedCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $LanguageFilterKeyChangedCopyWith<$Res> {
  _$LanguageFilterKeyChangedCopyWithImpl(LanguageFilterKeyChanged _value,
      $Res Function(LanguageFilterKeyChanged) _then)
      : super(_value, (v) => _then(v as LanguageFilterKeyChanged));

  @override
  LanguageFilterKeyChanged get _value =>
      super._value as LanguageFilterKeyChanged;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(LanguageFilterKeyChanged(
      key == freezed ? _value.key : key as String,
    ));
  }
}

class _$LanguageFilterKeyChanged
    with DiagnosticableTreeMixin
    implements LanguageFilterKeyChanged {
  const _$LanguageFilterKeyChanged(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.languageFilterKeyChanged(key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeDatabaseEvent.languageFilterKeyChanged'))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageFilterKeyChanged &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  $LanguageFilterKeyChangedCopyWith<LanguageFilterKeyChanged> get copyWith =>
      _$LanguageFilterKeyChangedCopyWithImpl<LanguageFilterKeyChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return languageFilterKeyChanged(key);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageFilterKeyChanged != null) {
      return languageFilterKeyChanged(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return languageFilterKeyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageFilterKeyChanged != null) {
      return languageFilterKeyChanged(this);
    }
    return orElse();
  }
}

abstract class LanguageFilterKeyChanged implements HomeDatabaseEvent {
  const factory LanguageFilterKeyChanged(String key) =
      _$LanguageFilterKeyChanged;

  String get key;
  $LanguageFilterKeyChangedCopyWith<LanguageFilterKeyChanged> get copyWith;
}

abstract class $ApplyFilterChangesCopyWith<$Res> {
  factory $ApplyFilterChangesCopyWith(
          ApplyFilterChanges value, $Res Function(ApplyFilterChanges) then) =
      _$ApplyFilterChangesCopyWithImpl<$Res>;
}

class _$ApplyFilterChangesCopyWithImpl<$Res>
    extends _$HomeDatabaseEventCopyWithImpl<$Res>
    implements $ApplyFilterChangesCopyWith<$Res> {
  _$ApplyFilterChangesCopyWithImpl(
      ApplyFilterChanges _value, $Res Function(ApplyFilterChanges) _then)
      : super(_value, (v) => _then(v as ApplyFilterChanges));

  @override
  ApplyFilterChanges get _value => super._value as ApplyFilterChanges;
}

class _$ApplyFilterChanges
    with DiagnosticableTreeMixin
    implements ApplyFilterChanges {
  const _$ApplyFilterChanges();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseEvent.applyFilterChanges()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HomeDatabaseEvent.applyFilterChanges'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ApplyFilterChanges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homePageLaunched(BuildContext context),
    @required Result fetchMoreTopSeries(),
    @required Result fetchMoreNewSeries(),
    @required Result timeFilterKeyChanged(String key),
    @required Result genreFilterKeyChanged(String key),
    @required Result languageFilterKeyChanged(String key),
    @required Result applyFilterChanges(),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return applyFilterChanges();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homePageLaunched(BuildContext context),
    Result fetchMoreTopSeries(),
    Result fetchMoreNewSeries(),
    Result timeFilterKeyChanged(String key),
    Result genreFilterKeyChanged(String key),
    Result languageFilterKeyChanged(String key),
    Result applyFilterChanges(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (applyFilterChanges != null) {
      return applyFilterChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homePageLaunched(HomePageLaunched value),
    @required Result fetchMoreTopSeries(FetchMoreTopSeries value),
    @required Result fetchMoreNewSeries(FetchMoreNewSeries value),
    @required Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    @required Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    @required Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    @required Result applyFilterChanges(ApplyFilterChanges value),
  }) {
    assert(homePageLaunched != null);
    assert(fetchMoreTopSeries != null);
    assert(fetchMoreNewSeries != null);
    assert(timeFilterKeyChanged != null);
    assert(genreFilterKeyChanged != null);
    assert(languageFilterKeyChanged != null);
    assert(applyFilterChanges != null);
    return applyFilterChanges(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homePageLaunched(HomePageLaunched value),
    Result fetchMoreTopSeries(FetchMoreTopSeries value),
    Result fetchMoreNewSeries(FetchMoreNewSeries value),
    Result timeFilterKeyChanged(TimeFilterKeyChanged value),
    Result genreFilterKeyChanged(GenreFilterKeyChanged value),
    Result languageFilterKeyChanged(LanguageFilterKeyChanged value),
    Result applyFilterChanges(ApplyFilterChanges value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (applyFilterChanges != null) {
      return applyFilterChanges(this);
    }
    return orElse();
  }
}

abstract class ApplyFilterChanges implements HomeDatabaseEvent {
  const factory ApplyFilterChanges() = _$ApplyFilterChanges;
}

class _$HomeDatabaseStateTearOff {
  const _$HomeDatabaseStateTearOff();

  _HomeDatabaseState call(
      {@required
          List<Series> topFiveSeries,
      @required
          List<Series> topSeries,
      @required
          List<Series> newSeries,
      @required
          Map<String, dynamic> filters,
      @required
          String timeFilterKey,
      @required
          String genreFilterKey,
      @required
          String languageFilterKey,
      @required
          Map<String, String> times,
      @required
          Map<String, String> genres,
      @required
          Map<String, String> languages,
      @required
          List<String> placeholders,
      @required
          bool isFetching,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) {
    return _HomeDatabaseState(
      topFiveSeries: topFiveSeries,
      topSeries: topSeries,
      newSeries: newSeries,
      filters: filters,
      timeFilterKey: timeFilterKey,
      genreFilterKey: genreFilterKey,
      languageFilterKey: languageFilterKey,
      times: times,
      genres: genres,
      languages: languages,
      placeholders: placeholders,
      isFetching: isFetching,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $HomeDatabaseState = _$HomeDatabaseStateTearOff();

mixin _$HomeDatabaseState {
  List<Series> get topFiveSeries;
  List<Series> get topSeries;
  List<Series> get newSeries;
  Map<String, dynamic> get filters;
  String get timeFilterKey;
  String get genreFilterKey;
  String get languageFilterKey;
  Map<String, String> get times;
  Map<String, String> get genres;
  Map<String, String> get languages;
  List<String> get placeholders;
  bool get isFetching;
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;

  $HomeDatabaseStateCopyWith<HomeDatabaseState> get copyWith;
}

abstract class $HomeDatabaseStateCopyWith<$Res> {
  factory $HomeDatabaseStateCopyWith(
          HomeDatabaseState value, $Res Function(HomeDatabaseState) then) =
      _$HomeDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {List<Series> topFiveSeries,
      List<Series> topSeries,
      List<Series> newSeries,
      Map<String, dynamic> filters,
      String timeFilterKey,
      String genreFilterKey,
      String languageFilterKey,
      Map<String, String> times,
      Map<String, String> genres,
      Map<String, String> languages,
      List<String> placeholders,
      bool isFetching,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class _$HomeDatabaseStateCopyWithImpl<$Res>
    implements $HomeDatabaseStateCopyWith<$Res> {
  _$HomeDatabaseStateCopyWithImpl(this._value, this._then);

  final HomeDatabaseState _value;
  // ignore: unused_field
  final $Res Function(HomeDatabaseState) _then;

  @override
  $Res call({
    Object topFiveSeries = freezed,
    Object topSeries = freezed,
    Object newSeries = freezed,
    Object filters = freezed,
    Object timeFilterKey = freezed,
    Object genreFilterKey = freezed,
    Object languageFilterKey = freezed,
    Object times = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object placeholders = freezed,
    Object isFetching = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      topFiveSeries: topFiveSeries == freezed
          ? _value.topFiveSeries
          : topFiveSeries as List<Series>,
      topSeries:
          topSeries == freezed ? _value.topSeries : topSeries as List<Series>,
      newSeries:
          newSeries == freezed ? _value.newSeries : newSeries as List<Series>,
      filters:
          filters == freezed ? _value.filters : filters as Map<String, dynamic>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey as String,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey as String,
      times: times == freezed ? _value.times : times as Map<String, String>,
      genres: genres == freezed ? _value.genres : genres as Map<String, String>,
      languages: languages == freezed
          ? _value.languages
          : languages as Map<String, String>,
      placeholders: placeholders == freezed
          ? _value.placeholders
          : placeholders as List<String>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

abstract class _$HomeDatabaseStateCopyWith<$Res>
    implements $HomeDatabaseStateCopyWith<$Res> {
  factory _$HomeDatabaseStateCopyWith(
          _HomeDatabaseState value, $Res Function(_HomeDatabaseState) then) =
      __$HomeDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Series> topFiveSeries,
      List<Series> topSeries,
      List<Series> newSeries,
      Map<String, dynamic> filters,
      String timeFilterKey,
      String genreFilterKey,
      String languageFilterKey,
      Map<String, String> times,
      Map<String, String> genres,
      Map<String, String> languages,
      List<String> placeholders,
      bool isFetching,
      Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption});
}

class __$HomeDatabaseStateCopyWithImpl<$Res>
    extends _$HomeDatabaseStateCopyWithImpl<$Res>
    implements _$HomeDatabaseStateCopyWith<$Res> {
  __$HomeDatabaseStateCopyWithImpl(
      _HomeDatabaseState _value, $Res Function(_HomeDatabaseState) _then)
      : super(_value, (v) => _then(v as _HomeDatabaseState));

  @override
  _HomeDatabaseState get _value => super._value as _HomeDatabaseState;

  @override
  $Res call({
    Object topFiveSeries = freezed,
    Object topSeries = freezed,
    Object newSeries = freezed,
    Object filters = freezed,
    Object timeFilterKey = freezed,
    Object genreFilterKey = freezed,
    Object languageFilterKey = freezed,
    Object times = freezed,
    Object genres = freezed,
    Object languages = freezed,
    Object placeholders = freezed,
    Object isFetching = freezed,
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_HomeDatabaseState(
      topFiveSeries: topFiveSeries == freezed
          ? _value.topFiveSeries
          : topFiveSeries as List<Series>,
      topSeries:
          topSeries == freezed ? _value.topSeries : topSeries as List<Series>,
      newSeries:
          newSeries == freezed ? _value.newSeries : newSeries as List<Series>,
      filters:
          filters == freezed ? _value.filters : filters as Map<String, dynamic>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey as String,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey as String,
      times: times == freezed ? _value.times : times as Map<String, String>,
      genres: genres == freezed ? _value.genres : genres as Map<String, String>,
      languages: languages == freezed
          ? _value.languages
          : languages as Map<String, String>,
      placeholders: placeholders == freezed
          ? _value.placeholders
          : placeholders as List<String>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, dynamic>>,
    ));
  }
}

class _$_HomeDatabaseState
    with DiagnosticableTreeMixin
    implements _HomeDatabaseState {
  const _$_HomeDatabaseState(
      {@required this.topFiveSeries,
      @required this.topSeries,
      @required this.newSeries,
      @required this.filters,
      @required this.timeFilterKey,
      @required this.genreFilterKey,
      @required this.languageFilterKey,
      @required this.times,
      @required this.genres,
      @required this.languages,
      @required this.placeholders,
      @required this.isFetching,
      @required this.databaseFailureOrSuccessOption})
      : assert(topFiveSeries != null),
        assert(topSeries != null),
        assert(newSeries != null),
        assert(filters != null),
        assert(timeFilterKey != null),
        assert(genreFilterKey != null),
        assert(languageFilterKey != null),
        assert(times != null),
        assert(genres != null),
        assert(languages != null),
        assert(placeholders != null),
        assert(isFetching != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final List<Series> topFiveSeries;
  @override
  final List<Series> topSeries;
  @override
  final List<Series> newSeries;
  @override
  final Map<String, dynamic> filters;
  @override
  final String timeFilterKey;
  @override
  final String genreFilterKey;
  @override
  final String languageFilterKey;
  @override
  final Map<String, String> times;
  @override
  final Map<String, String> genres;
  @override
  final Map<String, String> languages;
  @override
  final List<String> placeholders;
  @override
  final bool isFetching;
  @override
  final Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeDatabaseState(topFiveSeries: $topFiveSeries, topSeries: $topSeries, newSeries: $newSeries, filters: $filters, timeFilterKey: $timeFilterKey, genreFilterKey: $genreFilterKey, languageFilterKey: $languageFilterKey, times: $times, genres: $genres, languages: $languages, placeholders: $placeholders, isFetching: $isFetching, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeDatabaseState'))
      ..add(DiagnosticsProperty('topFiveSeries', topFiveSeries))
      ..add(DiagnosticsProperty('topSeries', topSeries))
      ..add(DiagnosticsProperty('newSeries', newSeries))
      ..add(DiagnosticsProperty('filters', filters))
      ..add(DiagnosticsProperty('timeFilterKey', timeFilterKey))
      ..add(DiagnosticsProperty('genreFilterKey', genreFilterKey))
      ..add(DiagnosticsProperty('languageFilterKey', languageFilterKey))
      ..add(DiagnosticsProperty('times', times))
      ..add(DiagnosticsProperty('genres', genres))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('placeholders', placeholders))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty(
          'databaseFailureOrSuccessOption', databaseFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeDatabaseState &&
            (identical(other.topFiveSeries, topFiveSeries) ||
                const DeepCollectionEquality()
                    .equals(other.topFiveSeries, topFiveSeries)) &&
            (identical(other.topSeries, topSeries) ||
                const DeepCollectionEquality()
                    .equals(other.topSeries, topSeries)) &&
            (identical(other.newSeries, newSeries) ||
                const DeepCollectionEquality()
                    .equals(other.newSeries, newSeries)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.timeFilterKey, timeFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.timeFilterKey, timeFilterKey)) &&
            (identical(other.genreFilterKey, genreFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.genreFilterKey, genreFilterKey)) &&
            (identical(other.languageFilterKey, languageFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.languageFilterKey, languageFilterKey)) &&
            (identical(other.times, times) ||
                const DeepCollectionEquality().equals(other.times, times)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.placeholders, placeholders) ||
                const DeepCollectionEquality()
                    .equals(other.placeholders, placeholders)) &&
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
      const DeepCollectionEquality().hash(topFiveSeries) ^
      const DeepCollectionEquality().hash(topSeries) ^
      const DeepCollectionEquality().hash(newSeries) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(timeFilterKey) ^
      const DeepCollectionEquality().hash(genreFilterKey) ^
      const DeepCollectionEquality().hash(languageFilterKey) ^
      const DeepCollectionEquality().hash(times) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(placeholders) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

  @override
  _$HomeDatabaseStateCopyWith<_HomeDatabaseState> get copyWith =>
      __$HomeDatabaseStateCopyWithImpl<_HomeDatabaseState>(this, _$identity);
}

abstract class _HomeDatabaseState implements HomeDatabaseState {
  const factory _HomeDatabaseState(
      {@required
          List<Series> topFiveSeries,
      @required
          List<Series> topSeries,
      @required
          List<Series> newSeries,
      @required
          Map<String, dynamic> filters,
      @required
          String timeFilterKey,
      @required
          String genreFilterKey,
      @required
          String languageFilterKey,
      @required
          Map<String, String> times,
      @required
          Map<String, String> genres,
      @required
          Map<String, String> languages,
      @required
          List<String> placeholders,
      @required
          bool isFetching,
      @required
          Option<Either<DatabaseFailure, dynamic>>
              databaseFailureOrSuccessOption}) = _$_HomeDatabaseState;

  @override
  List<Series> get topFiveSeries;
  @override
  List<Series> get topSeries;
  @override
  List<Series> get newSeries;
  @override
  Map<String, dynamic> get filters;
  @override
  String get timeFilterKey;
  @override
  String get genreFilterKey;
  @override
  String get languageFilterKey;
  @override
  Map<String, String> get times;
  @override
  Map<String, String> get genres;
  @override
  Map<String, String> get languages;
  @override
  List<String> get placeholders;
  @override
  bool get isFetching;
  @override
  Option<Either<DatabaseFailure, dynamic>> get databaseFailureOrSuccessOption;
  @override
  _$HomeDatabaseStateCopyWith<_HomeDatabaseState> get copyWith;
}
