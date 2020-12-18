// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_other_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreOtherEventTearOff {
  const _$CoreOtherEventTearOff();

// ignore: unused_element
  AppLaunchedEVT appLaunchedEVT() {
    return const AppLaunchedEVT();
  }
}

/// @nodoc
// ignore: unused_element
const $CoreOtherEvent = _$CoreOtherEventTearOff();

/// @nodoc
mixin _$CoreOtherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunchedEVT(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunchedEVT(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunchedEVT(AppLaunchedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunchedEVT(AppLaunchedEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreOtherEventCopyWith<$Res> {
  factory $CoreOtherEventCopyWith(
          CoreOtherEvent value, $Res Function(CoreOtherEvent) then) =
      _$CoreOtherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreOtherEventCopyWithImpl<$Res>
    implements $CoreOtherEventCopyWith<$Res> {
  _$CoreOtherEventCopyWithImpl(this._value, this._then);

  final CoreOtherEvent _value;
  // ignore: unused_field
  final $Res Function(CoreOtherEvent) _then;
}

/// @nodoc
abstract class $AppLaunchedEVTCopyWith<$Res> {
  factory $AppLaunchedEVTCopyWith(
          AppLaunchedEVT value, $Res Function(AppLaunchedEVT) then) =
      _$AppLaunchedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLaunchedEVTCopyWithImpl<$Res>
    extends _$CoreOtherEventCopyWithImpl<$Res>
    implements $AppLaunchedEVTCopyWith<$Res> {
  _$AppLaunchedEVTCopyWithImpl(
      AppLaunchedEVT _value, $Res Function(AppLaunchedEVT) _then)
      : super(_value, (v) => _then(v as AppLaunchedEVT));

  @override
  AppLaunchedEVT get _value => super._value as AppLaunchedEVT;
}

/// @nodoc
class _$AppLaunchedEVT implements AppLaunchedEVT {
  const _$AppLaunchedEVT();

  @override
  String toString() {
    return 'CoreOtherEvent.appLaunchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLaunchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunchedEVT(),
  }) {
    assert(appLaunchedEVT != null);
    return appLaunchedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunchedEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEVT != null) {
      return appLaunchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunchedEVT(AppLaunchedEVT value),
  }) {
    assert(appLaunchedEVT != null);
    return appLaunchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunchedEVT(AppLaunchedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEVT != null) {
      return appLaunchedEVT(this);
    }
    return orElse();
  }
}

abstract class AppLaunchedEVT implements CoreOtherEvent {
  const factory AppLaunchedEVT() = _$AppLaunchedEVT;
}

/// @nodoc
class _$CoreOtherStateTearOff {
  const _$CoreOtherStateTearOff();

// ignore: unused_element
  _CoreOtherState call({@required String deviceLocale}) {
    return _CoreOtherState(
      deviceLocale: deviceLocale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreOtherState = _$CoreOtherStateTearOff();

/// @nodoc
mixin _$CoreOtherState {
  String get deviceLocale;

  $CoreOtherStateCopyWith<CoreOtherState> get copyWith;
}

/// @nodoc
abstract class $CoreOtherStateCopyWith<$Res> {
  factory $CoreOtherStateCopyWith(
          CoreOtherState value, $Res Function(CoreOtherState) then) =
      _$CoreOtherStateCopyWithImpl<$Res>;
  $Res call({String deviceLocale});
}

/// @nodoc
class _$CoreOtherStateCopyWithImpl<$Res>
    implements $CoreOtherStateCopyWith<$Res> {
  _$CoreOtherStateCopyWithImpl(this._value, this._then);

  final CoreOtherState _value;
  // ignore: unused_field
  final $Res Function(CoreOtherState) _then;

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

/// @nodoc
abstract class _$CoreOtherStateCopyWith<$Res>
    implements $CoreOtherStateCopyWith<$Res> {
  factory _$CoreOtherStateCopyWith(
          _CoreOtherState value, $Res Function(_CoreOtherState) then) =
      __$CoreOtherStateCopyWithImpl<$Res>;
  @override
  $Res call({String deviceLocale});
}

/// @nodoc
class __$CoreOtherStateCopyWithImpl<$Res>
    extends _$CoreOtherStateCopyWithImpl<$Res>
    implements _$CoreOtherStateCopyWith<$Res> {
  __$CoreOtherStateCopyWithImpl(
      _CoreOtherState _value, $Res Function(_CoreOtherState) _then)
      : super(_value, (v) => _then(v as _CoreOtherState));

  @override
  _CoreOtherState get _value => super._value as _CoreOtherState;

  @override
  $Res call({
    Object deviceLocale = freezed,
  }) {
    return _then(_CoreOtherState(
      deviceLocale: deviceLocale == freezed
          ? _value.deviceLocale
          : deviceLocale as String,
    ));
  }
}

/// @nodoc
class _$_CoreOtherState implements _CoreOtherState {
  const _$_CoreOtherState({@required this.deviceLocale})
      : assert(deviceLocale != null);

  @override
  final String deviceLocale;

  @override
  String toString() {
    return 'CoreOtherState(deviceLocale: $deviceLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoreOtherState &&
            (identical(other.deviceLocale, deviceLocale) ||
                const DeepCollectionEquality()
                    .equals(other.deviceLocale, deviceLocale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceLocale);

  @override
  _$CoreOtherStateCopyWith<_CoreOtherState> get copyWith =>
      __$CoreOtherStateCopyWithImpl<_CoreOtherState>(this, _$identity);
}

abstract class _CoreOtherState implements CoreOtherState {
  const factory _CoreOtherState({@required String deviceLocale}) =
      _$_CoreOtherState;

  @override
  String get deviceLocale;
  @override
  _$CoreOtherStateCopyWith<_CoreOtherState> get copyWith;
}
