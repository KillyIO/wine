// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'series_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SeriesDatabaseEventTearOff {
  const _$SeriesDatabaseEventTearOff();

  SeriesPageLaunched seriesPageLaunched(String uid) {
    return SeriesPageLaunched(
      uid,
    );
  }
}

// ignore: unused_element
const $SeriesDatabaseEvent = _$SeriesDatabaseEventTearOff();

mixin _$SeriesDatabaseEvent {
  String get uid;

  $SeriesDatabaseEventCopyWith<SeriesDatabaseEvent> get copyWith;
}

abstract class $SeriesDatabaseEventCopyWith<$Res> {
  factory $SeriesDatabaseEventCopyWith(
          SeriesDatabaseEvent value, $Res Function(SeriesDatabaseEvent) then) =
      _$SeriesDatabaseEventCopyWithImpl<$Res>;
  $Res call({String uid});
}

class _$SeriesDatabaseEventCopyWithImpl<$Res>
    implements $SeriesDatabaseEventCopyWith<$Res> {
  _$SeriesDatabaseEventCopyWithImpl(this._value, this._then);

  final SeriesDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SeriesDatabaseEvent) _then;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

abstract class $SeriesPageLaunchedCopyWith<$Res>
    implements $SeriesDatabaseEventCopyWith<$Res> {
  factory $SeriesPageLaunchedCopyWith(
          SeriesPageLaunched value, $Res Function(SeriesPageLaunched) then) =
      _$SeriesPageLaunchedCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
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
    Object uid = freezed,
  }) {
    return _then(SeriesPageLaunched(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

class _$SeriesPageLaunched implements SeriesPageLaunched {
  const _$SeriesPageLaunched(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'SeriesDatabaseEvent.seriesPageLaunched(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeriesPageLaunched &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @override
  $SeriesPageLaunchedCopyWith<SeriesPageLaunched> get copyWith =>
      _$SeriesPageLaunchedCopyWithImpl<SeriesPageLaunched>(this, _$identity);
}

abstract class SeriesPageLaunched implements SeriesDatabaseEvent {
  const factory SeriesPageLaunched(String uid) = _$SeriesPageLaunched;

  @override
  String get uid;
  @override
  $SeriesPageLaunchedCopyWith<SeriesPageLaunched> get copyWith;
}

class _$SeriesDatabaseStateTearOff {
  const _$SeriesDatabaseStateTearOff();

  _SeriesDatabaseState call({@required Series series}) {
    return _SeriesDatabaseState(
      series: series,
    );
  }
}

// ignore: unused_element
const $SeriesDatabaseState = _$SeriesDatabaseStateTearOff();

mixin _$SeriesDatabaseState {
  Series get series;

  $SeriesDatabaseStateCopyWith<SeriesDatabaseState> get copyWith;
}

abstract class $SeriesDatabaseStateCopyWith<$Res> {
  factory $SeriesDatabaseStateCopyWith(
          SeriesDatabaseState value, $Res Function(SeriesDatabaseState) then) =
      _$SeriesDatabaseStateCopyWithImpl<$Res>;
  $Res call({Series series});
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
  }) {
    return _then(_value.copyWith(
      series: series == freezed ? _value.series : series as Series,
    ));
  }
}

abstract class _$SeriesDatabaseStateCopyWith<$Res>
    implements $SeriesDatabaseStateCopyWith<$Res> {
  factory _$SeriesDatabaseStateCopyWith(_SeriesDatabaseState value,
          $Res Function(_SeriesDatabaseState) then) =
      __$SeriesDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call({Series series});
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
  }) {
    return _then(_SeriesDatabaseState(
      series: series == freezed ? _value.series : series as Series,
    ));
  }
}

class _$_SeriesDatabaseState implements _SeriesDatabaseState {
  const _$_SeriesDatabaseState({@required this.series})
      : assert(series != null);

  @override
  final Series series;

  @override
  String toString() {
    return 'SeriesDatabaseState(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDatabaseState &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith =>
      __$SeriesDatabaseStateCopyWithImpl<_SeriesDatabaseState>(
          this, _$identity);
}

abstract class _SeriesDatabaseState implements SeriesDatabaseState {
  const factory _SeriesDatabaseState({@required Series series}) =
      _$_SeriesDatabaseState;

  @override
  Series get series;
  @override
  _$SeriesDatabaseStateCopyWith<_SeriesDatabaseState> get copyWith;
}
