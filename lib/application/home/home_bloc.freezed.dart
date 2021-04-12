// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

// ignore: unused_element
  HomePageLaunched homePageLaunched() {
    return const HomePageLaunched();
  }

// ignore: unused_element
  LoadSeriesByGenre loadSeriesByGenre(String key) {
    return LoadSeriesByGenre(
      key,
    );
  }

// ignore: unused_element
  LoadSeriesByLanguage loadSeriesByLanguage(String key) {
    return LoadSeriesByLanguage(
      key,
    );
  }

// ignore: unused_element
  LoadSeriesByTime loadSeriesByTime(String key) {
    return LoadSeriesByTime(
      key,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homePageLaunched(),
    @required TResult loadSeriesByGenre(String key),
    @required TResult loadSeriesByLanguage(String key),
    @required TResult loadSeriesByTime(String key),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homePageLaunched(),
    TResult loadSeriesByGenre(String key),
    TResult loadSeriesByLanguage(String key),
    TResult loadSeriesByTime(String key),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homePageLaunched(HomePageLaunched value),
    @required TResult loadSeriesByGenre(LoadSeriesByGenre value),
    @required TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    @required TResult loadSeriesByTime(LoadSeriesByTime value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homePageLaunched(HomePageLaunched value),
    TResult loadSeriesByGenre(LoadSeriesByGenre value),
    TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    TResult loadSeriesByTime(LoadSeriesByTime value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $HomePageLaunchedCopyWith<$Res> {
  factory $HomePageLaunchedCopyWith(
          HomePageLaunched value, $Res Function(HomePageLaunched) then) =
      _$HomePageLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageLaunchedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomePageLaunchedCopyWith<$Res> {
  _$HomePageLaunchedCopyWithImpl(
      HomePageLaunched _value, $Res Function(HomePageLaunched) _then)
      : super(_value, (v) => _then(v as HomePageLaunched));

  @override
  HomePageLaunched get _value => super._value as HomePageLaunched;
}

/// @nodoc
class _$HomePageLaunched implements HomePageLaunched {
  const _$HomePageLaunched();

  @override
  String toString() {
    return 'HomeEvent.homePageLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomePageLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homePageLaunched(),
    @required TResult loadSeriesByGenre(String key),
    @required TResult loadSeriesByLanguage(String key),
    @required TResult loadSeriesByTime(String key),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return homePageLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homePageLaunched(),
    TResult loadSeriesByGenre(String key),
    TResult loadSeriesByLanguage(String key),
    TResult loadSeriesByTime(String key),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunched != null) {
      return homePageLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homePageLaunched(HomePageLaunched value),
    @required TResult loadSeriesByGenre(LoadSeriesByGenre value),
    @required TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    @required TResult loadSeriesByTime(LoadSeriesByTime value),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return homePageLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homePageLaunched(HomePageLaunched value),
    TResult loadSeriesByGenre(LoadSeriesByGenre value),
    TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    TResult loadSeriesByTime(LoadSeriesByTime value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (homePageLaunched != null) {
      return homePageLaunched(this);
    }
    return orElse();
  }
}

abstract class HomePageLaunched implements HomeEvent {
  const factory HomePageLaunched() = _$HomePageLaunched;
}

/// @nodoc
abstract class $LoadSeriesByGenreCopyWith<$Res> {
  factory $LoadSeriesByGenreCopyWith(
          LoadSeriesByGenre value, $Res Function(LoadSeriesByGenre) then) =
      _$LoadSeriesByGenreCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class _$LoadSeriesByGenreCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadSeriesByGenreCopyWith<$Res> {
  _$LoadSeriesByGenreCopyWithImpl(
      LoadSeriesByGenre _value, $Res Function(LoadSeriesByGenre) _then)
      : super(_value, (v) => _then(v as LoadSeriesByGenre));

  @override
  LoadSeriesByGenre get _value => super._value as LoadSeriesByGenre;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(LoadSeriesByGenre(
      key == freezed ? _value.key : key as String,
    ));
  }
}

/// @nodoc
class _$LoadSeriesByGenre implements LoadSeriesByGenre {
  const _$LoadSeriesByGenre(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString() {
    return 'HomeEvent.loadSeriesByGenre(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSeriesByGenre &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  $LoadSeriesByGenreCopyWith<LoadSeriesByGenre> get copyWith =>
      _$LoadSeriesByGenreCopyWithImpl<LoadSeriesByGenre>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homePageLaunched(),
    @required TResult loadSeriesByGenre(String key),
    @required TResult loadSeriesByLanguage(String key),
    @required TResult loadSeriesByTime(String key),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return loadSeriesByGenre(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homePageLaunched(),
    TResult loadSeriesByGenre(String key),
    TResult loadSeriesByLanguage(String key),
    TResult loadSeriesByTime(String key),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSeriesByGenre != null) {
      return loadSeriesByGenre(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homePageLaunched(HomePageLaunched value),
    @required TResult loadSeriesByGenre(LoadSeriesByGenre value),
    @required TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    @required TResult loadSeriesByTime(LoadSeriesByTime value),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return loadSeriesByGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homePageLaunched(HomePageLaunched value),
    TResult loadSeriesByGenre(LoadSeriesByGenre value),
    TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    TResult loadSeriesByTime(LoadSeriesByTime value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSeriesByGenre != null) {
      return loadSeriesByGenre(this);
    }
    return orElse();
  }
}

abstract class LoadSeriesByGenre implements HomeEvent {
  const factory LoadSeriesByGenre(String key) = _$LoadSeriesByGenre;

  String get key;
  @JsonKey(ignore: true)
  $LoadSeriesByGenreCopyWith<LoadSeriesByGenre> get copyWith;
}

/// @nodoc
abstract class $LoadSeriesByLanguageCopyWith<$Res> {
  factory $LoadSeriesByLanguageCopyWith(LoadSeriesByLanguage value,
          $Res Function(LoadSeriesByLanguage) then) =
      _$LoadSeriesByLanguageCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class _$LoadSeriesByLanguageCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadSeriesByLanguageCopyWith<$Res> {
  _$LoadSeriesByLanguageCopyWithImpl(
      LoadSeriesByLanguage _value, $Res Function(LoadSeriesByLanguage) _then)
      : super(_value, (v) => _then(v as LoadSeriesByLanguage));

  @override
  LoadSeriesByLanguage get _value => super._value as LoadSeriesByLanguage;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(LoadSeriesByLanguage(
      key == freezed ? _value.key : key as String,
    ));
  }
}

/// @nodoc
class _$LoadSeriesByLanguage implements LoadSeriesByLanguage {
  const _$LoadSeriesByLanguage(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString() {
    return 'HomeEvent.loadSeriesByLanguage(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSeriesByLanguage &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  $LoadSeriesByLanguageCopyWith<LoadSeriesByLanguage> get copyWith =>
      _$LoadSeriesByLanguageCopyWithImpl<LoadSeriesByLanguage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homePageLaunched(),
    @required TResult loadSeriesByGenre(String key),
    @required TResult loadSeriesByLanguage(String key),
    @required TResult loadSeriesByTime(String key),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return loadSeriesByLanguage(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homePageLaunched(),
    TResult loadSeriesByGenre(String key),
    TResult loadSeriesByLanguage(String key),
    TResult loadSeriesByTime(String key),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSeriesByLanguage != null) {
      return loadSeriesByLanguage(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homePageLaunched(HomePageLaunched value),
    @required TResult loadSeriesByGenre(LoadSeriesByGenre value),
    @required TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    @required TResult loadSeriesByTime(LoadSeriesByTime value),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return loadSeriesByLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homePageLaunched(HomePageLaunched value),
    TResult loadSeriesByGenre(LoadSeriesByGenre value),
    TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    TResult loadSeriesByTime(LoadSeriesByTime value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSeriesByLanguage != null) {
      return loadSeriesByLanguage(this);
    }
    return orElse();
  }
}

abstract class LoadSeriesByLanguage implements HomeEvent {
  const factory LoadSeriesByLanguage(String key) = _$LoadSeriesByLanguage;

  String get key;
  @JsonKey(ignore: true)
  $LoadSeriesByLanguageCopyWith<LoadSeriesByLanguage> get copyWith;
}

/// @nodoc
abstract class $LoadSeriesByTimeCopyWith<$Res> {
  factory $LoadSeriesByTimeCopyWith(
          LoadSeriesByTime value, $Res Function(LoadSeriesByTime) then) =
      _$LoadSeriesByTimeCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class _$LoadSeriesByTimeCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadSeriesByTimeCopyWith<$Res> {
  _$LoadSeriesByTimeCopyWithImpl(
      LoadSeriesByTime _value, $Res Function(LoadSeriesByTime) _then)
      : super(_value, (v) => _then(v as LoadSeriesByTime));

  @override
  LoadSeriesByTime get _value => super._value as LoadSeriesByTime;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(LoadSeriesByTime(
      key == freezed ? _value.key : key as String,
    ));
  }
}

/// @nodoc
class _$LoadSeriesByTime implements LoadSeriesByTime {
  const _$LoadSeriesByTime(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString() {
    return 'HomeEvent.loadSeriesByTime(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSeriesByTime &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  $LoadSeriesByTimeCopyWith<LoadSeriesByTime> get copyWith =>
      _$LoadSeriesByTimeCopyWithImpl<LoadSeriesByTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homePageLaunched(),
    @required TResult loadSeriesByGenre(String key),
    @required TResult loadSeriesByLanguage(String key),
    @required TResult loadSeriesByTime(String key),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return loadSeriesByTime(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homePageLaunched(),
    TResult loadSeriesByGenre(String key),
    TResult loadSeriesByLanguage(String key),
    TResult loadSeriesByTime(String key),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSeriesByTime != null) {
      return loadSeriesByTime(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homePageLaunched(HomePageLaunched value),
    @required TResult loadSeriesByGenre(LoadSeriesByGenre value),
    @required TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    @required TResult loadSeriesByTime(LoadSeriesByTime value),
  }) {
    assert(homePageLaunched != null);
    assert(loadSeriesByGenre != null);
    assert(loadSeriesByLanguage != null);
    assert(loadSeriesByTime != null);
    return loadSeriesByTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homePageLaunched(HomePageLaunched value),
    TResult loadSeriesByGenre(LoadSeriesByGenre value),
    TResult loadSeriesByLanguage(LoadSeriesByLanguage value),
    TResult loadSeriesByTime(LoadSeriesByTime value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSeriesByTime != null) {
      return loadSeriesByTime(this);
    }
    return orElse();
  }
}

abstract class LoadSeriesByTime implements HomeEvent {
  const factory LoadSeriesByTime(String key) = _$LoadSeriesByTime;

  String get key;
  @JsonKey(ignore: true)
  $LoadSeriesByTimeCopyWith<LoadSeriesByTime> get copyWith;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call(
      {@required String genreFilterKey,
      @required String languageFilterKey,
      @required String timeFilterKey}) {
    return _HomeState(
      genreFilterKey: genreFilterKey,
      languageFilterKey: languageFilterKey,
      timeFilterKey: timeFilterKey,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  String get genreFilterKey;
  String get languageFilterKey;
  String get timeFilterKey;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String genreFilterKey, String languageFilterKey, String timeFilterKey});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object genreFilterKey = freezed,
    Object languageFilterKey = freezed,
    Object timeFilterKey = freezed,
  }) {
    return _then(_value.copyWith(
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey as String,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String genreFilterKey, String languageFilterKey, String timeFilterKey});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object genreFilterKey = freezed,
    Object languageFilterKey = freezed,
    Object timeFilterKey = freezed,
  }) {
    return _then(_HomeState(
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey as String,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey as String,
    ));
  }
}

/// @nodoc
class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {@required this.genreFilterKey,
      @required this.languageFilterKey,
      @required this.timeFilterKey})
      : assert(genreFilterKey != null),
        assert(languageFilterKey != null),
        assert(timeFilterKey != null);

  @override
  final String genreFilterKey;
  @override
  final String languageFilterKey;
  @override
  final String timeFilterKey;

  @override
  String toString() {
    return 'HomeState(genreFilterKey: $genreFilterKey, languageFilterKey: $languageFilterKey, timeFilterKey: $timeFilterKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.genreFilterKey, genreFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.genreFilterKey, genreFilterKey)) &&
            (identical(other.languageFilterKey, languageFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.languageFilterKey, languageFilterKey)) &&
            (identical(other.timeFilterKey, timeFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.timeFilterKey, timeFilterKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(genreFilterKey) ^
      const DeepCollectionEquality().hash(languageFilterKey) ^
      const DeepCollectionEquality().hash(timeFilterKey);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {@required String genreFilterKey,
      @required String languageFilterKey,
      @required String timeFilterKey}) = _$_HomeState;

  @override
  String get genreFilterKey;
  @override
  String get languageFilterKey;
  @override
  String get timeFilterKey;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
