// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  InitBloc initBloc() {
    return const InitBloc();
  }

  LoadNewSeries loadNewSeries() {
    return const LoadNewSeries();
  }

  LoadSeriesByGenre loadSeriesByGenre(String key) {
    return LoadSeriesByGenre(
      key,
    );
  }

  LoadSeriesByLanguage loadSeriesByLanguage(String key) {
    return LoadSeriesByLanguage(
      key,
    );
  }

  LoadSeriesByTime loadSeriesByTime(String key) {
    return LoadSeriesByTime(
      key,
    );
  }

  LoadTopSeries loadTopSeries() {
    return const LoadTopSeries();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
abstract class $InitBlocCopyWith<$Res> {
  factory $InitBlocCopyWith(InitBloc value, $Res Function(InitBloc) then) =
      _$InitBlocCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitBlocCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $InitBlocCopyWith<$Res> {
  _$InitBlocCopyWithImpl(InitBloc _value, $Res Function(InitBloc) _then)
      : super(_value, (v) => _then(v as InitBloc));

  @override
  InitBloc get _value => super._value as InitBloc;
}

/// @nodoc

class _$InitBloc implements InitBloc {
  const _$InitBloc();

  @override
  String toString() {
    return 'HomeEvent.initBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return initBloc();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (initBloc != null) {
      return initBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return initBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (initBloc != null) {
      return initBloc(this);
    }
    return orElse();
  }
}

abstract class InitBloc implements HomeEvent {
  const factory InitBloc() = _$InitBloc;
}

/// @nodoc
abstract class $LoadNewSeriesCopyWith<$Res> {
  factory $LoadNewSeriesCopyWith(
          LoadNewSeries value, $Res Function(LoadNewSeries) then) =
      _$LoadNewSeriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadNewSeriesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadNewSeriesCopyWith<$Res> {
  _$LoadNewSeriesCopyWithImpl(
      LoadNewSeries _value, $Res Function(LoadNewSeries) _then)
      : super(_value, (v) => _then(v as LoadNewSeries));

  @override
  LoadNewSeries get _value => super._value as LoadNewSeries;
}

/// @nodoc

class _$LoadNewSeries implements LoadNewSeries {
  const _$LoadNewSeries();

  @override
  String toString() {
    return 'HomeEvent.loadNewSeries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadNewSeries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return loadNewSeries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadNewSeries != null) {
      return loadNewSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return loadNewSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadNewSeries != null) {
      return loadNewSeries(this);
    }
    return orElse();
  }
}

abstract class LoadNewSeries implements HomeEvent {
  const factory LoadNewSeries() = _$LoadNewSeries;
}

/// @nodoc
abstract class $LoadNewSeriesCopyWith<$Res> {
  factory $LoadNewSeriesCopyWith(
          LoadNewSeries value, $Res Function(LoadNewSeries) then) =
      _$LoadNewSeriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadNewSeriesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadNewSeriesCopyWith<$Res> {
  _$LoadNewSeriesCopyWithImpl(
      LoadNewSeries _value, $Res Function(LoadNewSeries) _then)
      : super(_value, (v) => _then(v as LoadNewSeries));

  @override
  LoadNewSeries get _value => super._value as LoadNewSeries;
}

/// @nodoc

class _$LoadNewSeries implements LoadNewSeries {
  const _$LoadNewSeries();

  @override
  String toString() {
    return 'HomeEvent.loadNewSeries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadNewSeries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return loadNewSeries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadNewSeries != null) {
      return loadNewSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return loadNewSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadNewSeries != null) {
      return loadNewSeries(this);
    }
    return orElse();
  }
}

abstract class LoadNewSeries implements HomeEvent {
  const factory LoadNewSeries() = _$LoadNewSeries;
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
    Object? key = freezed,
  }) {
    return _then(LoadSeriesByGenre(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSeriesByGenre implements LoadSeriesByGenre {
  const _$LoadSeriesByGenre(this.key);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return loadSeriesByGenre(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadSeriesByGenre != null) {
      return loadSeriesByGenre(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return loadSeriesByGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadSeriesByGenre != null) {
      return loadSeriesByGenre(this);
    }
    return orElse();
  }
}

abstract class LoadSeriesByGenre implements HomeEvent {
  const factory LoadSeriesByGenre(String key) = _$LoadSeriesByGenre;

  String get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSeriesByGenreCopyWith<LoadSeriesByGenre> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? key = freezed,
  }) {
    return _then(LoadSeriesByLanguage(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSeriesByLanguage implements LoadSeriesByLanguage {
  const _$LoadSeriesByLanguage(this.key);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return loadSeriesByLanguage(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadSeriesByLanguage != null) {
      return loadSeriesByLanguage(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return loadSeriesByLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadSeriesByLanguage != null) {
      return loadSeriesByLanguage(this);
    }
    return orElse();
  }
}

abstract class LoadSeriesByLanguage implements HomeEvent {
  const factory LoadSeriesByLanguage(String key) = _$LoadSeriesByLanguage;

  String get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSeriesByLanguageCopyWith<LoadSeriesByLanguage> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? key = freezed,
  }) {
    return _then(LoadSeriesByTime(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSeriesByTime implements LoadSeriesByTime {
  const _$LoadSeriesByTime(this.key);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return loadSeriesByTime(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadSeriesByTime != null) {
      return loadSeriesByTime(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return loadSeriesByTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadSeriesByTime != null) {
      return loadSeriesByTime(this);
    }
    return orElse();
  }
}

abstract class LoadSeriesByTime implements HomeEvent {
  const factory LoadSeriesByTime(String key) = _$LoadSeriesByTime;

  String get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSeriesByTimeCopyWith<LoadSeriesByTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTopSeriesCopyWith<$Res> {
  factory $LoadTopSeriesCopyWith(
          LoadTopSeries value, $Res Function(LoadTopSeries) then) =
      _$LoadTopSeriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadTopSeriesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadTopSeriesCopyWith<$Res> {
  _$LoadTopSeriesCopyWithImpl(
      LoadTopSeries _value, $Res Function(LoadTopSeries) _then)
      : super(_value, (v) => _then(v as LoadTopSeries));

  @override
  LoadTopSeries get _value => super._value as LoadTopSeries;
}

/// @nodoc

class _$LoadTopSeries implements LoadTopSeries {
  const _$LoadTopSeries();

  @override
  String toString() {
    return 'HomeEvent.loadTopSeries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadTopSeries);
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
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return loadTopSeries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadTopSeries != null) {
      return loadTopSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return loadTopSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadTopSeries != null) {
      return loadTopSeries(this);
    }
    return orElse();
  }
}

abstract class LoadTopSeries implements HomeEvent {
  const factory LoadTopSeries() = _$LoadTopSeries;
}

/// @nodoc
abstract class $LoadTopSeriesCopyWith<$Res> {
  factory $LoadTopSeriesCopyWith(
          LoadTopSeries value, $Res Function(LoadTopSeries) then) =
      _$LoadTopSeriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadTopSeriesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadTopSeriesCopyWith<$Res> {
  _$LoadTopSeriesCopyWithImpl(
      LoadTopSeries _value, $Res Function(LoadTopSeries) _then)
      : super(_value, (v) => _then(v as LoadTopSeries));

  @override
  LoadTopSeries get _value => super._value as LoadTopSeries;
}

/// @nodoc

class _$LoadTopSeries implements LoadTopSeries {
  const _$LoadTopSeries();

  @override
  String toString() {
    return 'HomeEvent.loadTopSeries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadTopSeries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBloc,
    required TResult Function() loadNewSeries,
    required TResult Function(String key) loadSeriesByGenre,
    required TResult Function(String key) loadSeriesByLanguage,
    required TResult Function(String key) loadSeriesByTime,
    required TResult Function() loadTopSeries,
  }) {
    return loadTopSeries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBloc,
    TResult Function()? loadNewSeries,
    TResult Function(String key)? loadSeriesByGenre,
    TResult Function(String key)? loadSeriesByLanguage,
    TResult Function(String key)? loadSeriesByTime,
    TResult Function()? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadTopSeries != null) {
      return loadTopSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(LoadNewSeries value) loadNewSeries,
    required TResult Function(LoadSeriesByGenre value) loadSeriesByGenre,
    required TResult Function(LoadSeriesByLanguage value) loadSeriesByLanguage,
    required TResult Function(LoadSeriesByTime value) loadSeriesByTime,
    required TResult Function(LoadTopSeries value) loadTopSeries,
  }) {
    return loadTopSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBloc value)? initBloc,
    TResult Function(LoadNewSeries value)? loadNewSeries,
    TResult Function(LoadSeriesByGenre value)? loadSeriesByGenre,
    TResult Function(LoadSeriesByLanguage value)? loadSeriesByLanguage,
    TResult Function(LoadSeriesByTime value)? loadSeriesByTime,
    TResult Function(LoadTopSeries value)? loadTopSeries,
    required TResult orElse(),
  }) {
    if (loadTopSeries != null) {
      return loadTopSeries(this);
    }
    return orElse();
  }
}

abstract class LoadTopSeries implements HomeEvent {
  const factory LoadTopSeries() = _$LoadTopSeries;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required Option<Result<Unit, CoreFailure>> failure,
      required String genreFilterKey,
      required String languageFilterKey,
      required List<Series> newSeriesList,
      required String timeFilterKey,
      required List<Series> topSeriesList}) {
    return _HomeState(
      failure: failure,
      genreFilterKey: genreFilterKey,
      languageFilterKey: languageFilterKey,
      newSeriesList: newSeriesList,
      timeFilterKey: timeFilterKey,
      topSeriesList: topSeriesList,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  Option<Result<Unit, CoreFailure>> get failure =>
      throw _privateConstructorUsedError;
  String get genreFilterKey => throw _privateConstructorUsedError;
  String get languageFilterKey => throw _privateConstructorUsedError;
  List<Series> get newSeriesList => throw _privateConstructorUsedError;
  String get timeFilterKey => throw _privateConstructorUsedError;
  List<Series> get topSeriesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Result<Unit, CoreFailure>> failure,
      String genreFilterKey,
      String languageFilterKey,
      List<Series> newSeriesList,
      String timeFilterKey,
      List<Series> topSeriesList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? failure = freezed,
    Object? genreFilterKey = freezed,
    Object? languageFilterKey = freezed,
    Object? newSeriesList = freezed,
    Object? timeFilterKey = freezed,
    Object? topSeriesList = freezed,
  }) {
    return _then(_value.copyWith(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Result<Unit, CoreFailure>>,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      newSeriesList: newSeriesList == freezed
          ? _value.newSeriesList
          : newSeriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      topSeriesList: topSeriesList == freezed
          ? _value.topSeriesList
          : topSeriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
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
      {Option<Result<Unit, CoreFailure>> failure,
      String genreFilterKey,
      String languageFilterKey,
      List<Series> newSeriesList,
      String timeFilterKey,
      List<Series> topSeriesList});
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
    Object? failure = freezed,
    Object? genreFilterKey = freezed,
    Object? languageFilterKey = freezed,
    Object? newSeriesList = freezed,
    Object? timeFilterKey = freezed,
    Object? topSeriesList = freezed,
  }) {
    return _then(_HomeState(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Result<Unit, CoreFailure>>,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      newSeriesList: newSeriesList == freezed
          ? _value.newSeriesList
          : newSeriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      topSeriesList: topSeriesList == freezed
          ? _value.topSeriesList
          : topSeriesList // ignore: cast_nullable_to_non_nullable
              as List<Series>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.failure,
      required this.genreFilterKey,
      required this.languageFilterKey,
      required this.newSeriesList,
      required this.timeFilterKey,
      required this.topSeriesList});

  @override
  final Option<Result<Unit, CoreFailure>> failure;
  @override
  final String genreFilterKey;
  @override
  final String languageFilterKey;
  @override
  final List<Series> newSeriesList;
  @override
  final String timeFilterKey;
  @override
  final List<Series> topSeriesList;

  @override
  String toString() {
    return 'HomeState(failure: $failure, genreFilterKey: $genreFilterKey, languageFilterKey: $languageFilterKey, newSeriesList: $newSeriesList, timeFilterKey: $timeFilterKey, topSeriesList: $topSeriesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.genreFilterKey, genreFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.genreFilterKey, genreFilterKey)) &&
            (identical(other.languageFilterKey, languageFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.languageFilterKey, languageFilterKey)) &&
            (identical(other.newSeriesList, newSeriesList) ||
                const DeepCollectionEquality()
                    .equals(other.newSeriesList, newSeriesList)) &&
            (identical(other.timeFilterKey, timeFilterKey) ||
                const DeepCollectionEquality()
                    .equals(other.timeFilterKey, timeFilterKey)) &&
            (identical(other.topSeriesList, topSeriesList) ||
                const DeepCollectionEquality()
                    .equals(other.topSeriesList, topSeriesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(genreFilterKey) ^
      const DeepCollectionEquality().hash(languageFilterKey) ^
      const DeepCollectionEquality().hash(newSeriesList) ^
      const DeepCollectionEquality().hash(timeFilterKey) ^
      const DeepCollectionEquality().hash(topSeriesList);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required Option<Result<Unit, CoreFailure>> failure,
      required String genreFilterKey,
      required String languageFilterKey,
      required List<Series> newSeriesList,
      required String timeFilterKey,
      required List<Series> topSeriesList}) = _$_HomeState;

  @override
  Option<Result<Unit, CoreFailure>> get failure =>
      throw _privateConstructorUsedError;
  @override
  String get genreFilterKey => throw _privateConstructorUsedError;
  @override
  String get languageFilterKey => throw _privateConstructorUsedError;
  @override
  List<Series> get newSeriesList => throw _privateConstructorUsedError;
  @override
  String get timeFilterKey => throw _privateConstructorUsedError;
  @override
  List<Series> get topSeriesList => throw _privateConstructorUsedError;
  @override
  List<Series> get topSeriesList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
