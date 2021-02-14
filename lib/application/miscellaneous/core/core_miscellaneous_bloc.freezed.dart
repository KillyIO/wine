// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_miscellaneous_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreMiscellaneousEventTearOff {
  const _$CoreMiscellaneousEventTearOff();

// ignore: unused_element
  AppLaunchedEvent appLaunchedEvent() {
    return const AppLaunchedEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $CoreMiscellaneousEvent = _$CoreMiscellaneousEventTearOff();

/// @nodoc
mixin _$CoreMiscellaneousEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunchedEvent(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunchedEvent(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunchedEvent(AppLaunchedEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunchedEvent(AppLaunchedEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreMiscellaneousEventCopyWith<$Res> {
  factory $CoreMiscellaneousEventCopyWith(CoreMiscellaneousEvent value,
          $Res Function(CoreMiscellaneousEvent) then) =
      _$CoreMiscellaneousEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreMiscellaneousEventCopyWithImpl<$Res>
    implements $CoreMiscellaneousEventCopyWith<$Res> {
  _$CoreMiscellaneousEventCopyWithImpl(this._value, this._then);

  final CoreMiscellaneousEvent _value;
  // ignore: unused_field
  final $Res Function(CoreMiscellaneousEvent) _then;
}

/// @nodoc
abstract class $AppLaunchedEventCopyWith<$Res> {
  factory $AppLaunchedEventCopyWith(
          AppLaunchedEvent value, $Res Function(AppLaunchedEvent) then) =
      _$AppLaunchedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLaunchedEventCopyWithImpl<$Res>
    extends _$CoreMiscellaneousEventCopyWithImpl<$Res>
    implements $AppLaunchedEventCopyWith<$Res> {
  _$AppLaunchedEventCopyWithImpl(
      AppLaunchedEvent _value, $Res Function(AppLaunchedEvent) _then)
      : super(_value, (v) => _then(v as AppLaunchedEvent));

  @override
  AppLaunchedEvent get _value => super._value as AppLaunchedEvent;
}

/// @nodoc
class _$AppLaunchedEvent implements AppLaunchedEvent {
  const _$AppLaunchedEvent();

  @override
  String toString() {
    return 'CoreMiscellaneousEvent.appLaunchedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLaunchedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult appLaunchedEvent(),
  }) {
    assert(appLaunchedEvent != null);
    return appLaunchedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult appLaunchedEvent(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEvent != null) {
      return appLaunchedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult appLaunchedEvent(AppLaunchedEvent value),
  }) {
    assert(appLaunchedEvent != null);
    return appLaunchedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult appLaunchedEvent(AppLaunchedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (appLaunchedEvent != null) {
      return appLaunchedEvent(this);
    }
    return orElse();
  }
}

abstract class AppLaunchedEvent implements CoreMiscellaneousEvent {
  const factory AppLaunchedEvent() = _$AppLaunchedEvent;
}

/// @nodoc
class _$CoreMiscellaneousStateTearOff {
  const _$CoreMiscellaneousStateTearOff();

// ignore: unused_element
  _CoreMiscellaneousState call({@required String deviceLocale}) {
    return _CoreMiscellaneousState(
      deviceLocale: deviceLocale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreMiscellaneousState = _$CoreMiscellaneousStateTearOff();

/// @nodoc
mixin _$CoreMiscellaneousState {
  String get deviceLocale;

  @JsonKey(ignore: true)
  $CoreMiscellaneousStateCopyWith<CoreMiscellaneousState> get copyWith;
}

/// @nodoc
abstract class $CoreMiscellaneousStateCopyWith<$Res> {
  factory $CoreMiscellaneousStateCopyWith(CoreMiscellaneousState value,
          $Res Function(CoreMiscellaneousState) then) =
      _$CoreMiscellaneousStateCopyWithImpl<$Res>;
  $Res call({String deviceLocale});
}

/// @nodoc
class _$CoreMiscellaneousStateCopyWithImpl<$Res>
    implements $CoreMiscellaneousStateCopyWith<$Res> {
  _$CoreMiscellaneousStateCopyWithImpl(this._value, this._then);

  final CoreMiscellaneousState _value;
  // ignore: unused_field
  final $Res Function(CoreMiscellaneousState) _then;

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
abstract class _$CoreMiscellaneousStateCopyWith<$Res>
    implements $CoreMiscellaneousStateCopyWith<$Res> {
  factory _$CoreMiscellaneousStateCopyWith(_CoreMiscellaneousState value,
          $Res Function(_CoreMiscellaneousState) then) =
      __$CoreMiscellaneousStateCopyWithImpl<$Res>;
  @override
  $Res call({String deviceLocale});
}

/// @nodoc
class __$CoreMiscellaneousStateCopyWithImpl<$Res>
    extends _$CoreMiscellaneousStateCopyWithImpl<$Res>
    implements _$CoreMiscellaneousStateCopyWith<$Res> {
  __$CoreMiscellaneousStateCopyWithImpl(_CoreMiscellaneousState _value,
      $Res Function(_CoreMiscellaneousState) _then)
      : super(_value, (v) => _then(v as _CoreMiscellaneousState));

  @override
  _CoreMiscellaneousState get _value => super._value as _CoreMiscellaneousState;

  @override
  $Res call({
    Object deviceLocale = freezed,
  }) {
    return _then(_CoreMiscellaneousState(
      deviceLocale: deviceLocale == freezed
          ? _value.deviceLocale
          : deviceLocale as String,
    ));
  }
}

/// @nodoc
class _$_CoreMiscellaneousState implements _CoreMiscellaneousState {
  const _$_CoreMiscellaneousState({@required this.deviceLocale})
      : assert(deviceLocale != null);

  @override
  final String deviceLocale;

  @override
  String toString() {
    return 'CoreMiscellaneousState(deviceLocale: $deviceLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoreMiscellaneousState &&
            (identical(other.deviceLocale, deviceLocale) ||
                const DeepCollectionEquality()
                    .equals(other.deviceLocale, deviceLocale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceLocale);

  @JsonKey(ignore: true)
  @override
  _$CoreMiscellaneousStateCopyWith<_CoreMiscellaneousState> get copyWith =>
      __$CoreMiscellaneousStateCopyWithImpl<_CoreMiscellaneousState>(
          this, _$identity);
}

abstract class _CoreMiscellaneousState implements CoreMiscellaneousState {
  const factory _CoreMiscellaneousState({@required String deviceLocale}) =
      _$_CoreMiscellaneousState;

  @override
  String get deviceLocale;
  @override
  @JsonKey(ignore: true)
  _$CoreMiscellaneousStateCopyWith<_CoreMiscellaneousState> get copyWith;
}
