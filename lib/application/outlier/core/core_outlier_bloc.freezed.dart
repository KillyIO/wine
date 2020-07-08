// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'core_outlier_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreOutlierEventTearOff {
  const _$CoreOutlierEventTearOff();

  AppLaunchedEVT appLaunchedEVT() {
    return const AppLaunchedEVT();
  }
}

// ignore: unused_element
const $CoreOutlierEvent = _$CoreOutlierEventTearOff();

mixin _$CoreOutlierEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunchedEVT(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunchedEVT(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunchedEVT(AppLaunchedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunchedEVT(AppLaunchedEVT value),
    @required Result orElse(),
  });
}

abstract class $CoreOutlierEventCopyWith<$Res> {
  factory $CoreOutlierEventCopyWith(
          CoreOutlierEvent value, $Res Function(CoreOutlierEvent) then) =
      _$CoreOutlierEventCopyWithImpl<$Res>;
}

class _$CoreOutlierEventCopyWithImpl<$Res>
    implements $CoreOutlierEventCopyWith<$Res> {
  _$CoreOutlierEventCopyWithImpl(this._value, this._then);

  final CoreOutlierEvent _value;
  // ignore: unused_field
  final $Res Function(CoreOutlierEvent) _then;
}

abstract class $AppLaunchedEVTCopyWith<$Res> {
  factory $AppLaunchedEVTCopyWith(
          AppLaunchedEVT value, $Res Function(AppLaunchedEVT) then) =
      _$AppLaunchedEVTCopyWithImpl<$Res>;
}

class _$AppLaunchedEVTCopyWithImpl<$Res>
    extends _$CoreOutlierEventCopyWithImpl<$Res>
    implements $AppLaunchedEVTCopyWith<$Res> {
  _$AppLaunchedEVTCopyWithImpl(
      AppLaunchedEVT _value, $Res Function(AppLaunchedEVT) _then)
      : super(_value, (v) => _then(v as AppLaunchedEVT));

  @override
  AppLaunchedEVT get _value => super._value as AppLaunchedEVT;
}

class _$AppLaunchedEVT implements AppLaunchedEVT {
  const _$AppLaunchedEVT();

  @override
  String toString() {
    return 'CoreOutlierEvent.appLaunchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLaunchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appLaunchedEVT(),
  }) {
    assert(appLaunchedEVT != null);
    return appLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appLaunchedEVT(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEVT != null) {
      return appLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appLaunchedEVT(AppLaunchedEVT value),
  }) {
    assert(appLaunchedEVT != null);
    return appLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appLaunchedEVT(AppLaunchedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEVT != null) {
      return appLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class AppLaunchedEVT implements CoreOutlierEvent {
  const factory AppLaunchedEVT() = _$AppLaunchedEVT;
}

class _$CoreOutlierStateTearOff {
  const _$CoreOutlierStateTearOff();

  _CoreOutlierState call({@required String deviceLocale}) {
    return _CoreOutlierState(
      deviceLocale: deviceLocale,
    );
  }
}

// ignore: unused_element
const $CoreOutlierState = _$CoreOutlierStateTearOff();

mixin _$CoreOutlierState {
  String get deviceLocale;

  $CoreOutlierStateCopyWith<CoreOutlierState> get copyWith;
}

abstract class $CoreOutlierStateCopyWith<$Res> {
  factory $CoreOutlierStateCopyWith(
          CoreOutlierState value, $Res Function(CoreOutlierState) then) =
      _$CoreOutlierStateCopyWithImpl<$Res>;
  $Res call({String deviceLocale});
}

class _$CoreOutlierStateCopyWithImpl<$Res>
    implements $CoreOutlierStateCopyWith<$Res> {
  _$CoreOutlierStateCopyWithImpl(this._value, this._then);

  final CoreOutlierState _value;
  // ignore: unused_field
  final $Res Function(CoreOutlierState) _then;

  @override
  $Res call({
    Object deviceLocale = freezed,
  }) {
    return _then(_value.copyWith(
      deviceLocale: deviceLocale == freezed
          ? _value.deviceLocale
          : deviceLocale as String,
    ));
  }
}

abstract class _$CoreOutlierStateCopyWith<$Res>
    implements $CoreOutlierStateCopyWith<$Res> {
  factory _$CoreOutlierStateCopyWith(
          _CoreOutlierState value, $Res Function(_CoreOutlierState) then) =
      __$CoreOutlierStateCopyWithImpl<$Res>;
  @override
  $Res call({String deviceLocale});
}

class __$CoreOutlierStateCopyWithImpl<$Res>
    extends _$CoreOutlierStateCopyWithImpl<$Res>
    implements _$CoreOutlierStateCopyWith<$Res> {
  __$CoreOutlierStateCopyWithImpl(
      _CoreOutlierState _value, $Res Function(_CoreOutlierState) _then)
      : super(_value, (v) => _then(v as _CoreOutlierState));

  @override
  _CoreOutlierState get _value => super._value as _CoreOutlierState;

  @override
  $Res call({
    Object deviceLocale = freezed,
  }) {
    return _then(_CoreOutlierState(
      deviceLocale: deviceLocale == freezed
          ? _value.deviceLocale
          : deviceLocale as String,
    ));
  }
}

class _$_CoreOutlierState implements _CoreOutlierState {
  const _$_CoreOutlierState({@required this.deviceLocale})
      : assert(deviceLocale != null);

  @override
  final String deviceLocale;

  @override
  String toString() {
    return 'CoreOutlierState(deviceLocale: $deviceLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoreOutlierState &&
            (identical(other.deviceLocale, deviceLocale) ||
                const DeepCollectionEquality()
                    .equals(other.deviceLocale, deviceLocale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceLocale);

  @override
  _$CoreOutlierStateCopyWith<_CoreOutlierState> get copyWith =>
      __$CoreOutlierStateCopyWithImpl<_CoreOutlierState>(this, _$identity);
}

abstract class _CoreOutlierState implements CoreOutlierState {
  const factory _CoreOutlierState({@required String deviceLocale}) =
      _$_CoreOutlierState;

  @override
  String get deviceLocale;
  @override
  _$CoreOutlierStateCopyWith<_CoreOutlierState> get copyWith;
}
