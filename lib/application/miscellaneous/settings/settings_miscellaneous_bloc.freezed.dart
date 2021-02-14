// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_miscellaneous_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsMiscellaneousEventTearOff {
  const _$SettingsMiscellaneousEventTearOff();

// ignore: unused_element
  SettingsLaunched settingsLaunched() {
    return const SettingsLaunched();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsMiscellaneousEvent = _$SettingsMiscellaneousEventTearOff();

/// @nodoc
mixin _$SettingsMiscellaneousEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult settingsLaunched(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult settingsLaunched(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult settingsLaunched(SettingsLaunched value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult settingsLaunched(SettingsLaunched value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsMiscellaneousEventCopyWith<$Res> {
  factory $SettingsMiscellaneousEventCopyWith(SettingsMiscellaneousEvent value,
          $Res Function(SettingsMiscellaneousEvent) then) =
      _$SettingsMiscellaneousEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsMiscellaneousEventCopyWithImpl<$Res>
    implements $SettingsMiscellaneousEventCopyWith<$Res> {
  _$SettingsMiscellaneousEventCopyWithImpl(this._value, this._then);

  final SettingsMiscellaneousEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsMiscellaneousEvent) _then;
}

/// @nodoc
abstract class $SettingsLaunchedCopyWith<$Res> {
  factory $SettingsLaunchedCopyWith(
          SettingsLaunched value, $Res Function(SettingsLaunched) then) =
      _$SettingsLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsLaunchedCopyWithImpl<$Res>
    extends _$SettingsMiscellaneousEventCopyWithImpl<$Res>
    implements $SettingsLaunchedCopyWith<$Res> {
  _$SettingsLaunchedCopyWithImpl(
      SettingsLaunched _value, $Res Function(SettingsLaunched) _then)
      : super(_value, (v) => _then(v as SettingsLaunched));

  @override
  SettingsLaunched get _value => super._value as SettingsLaunched;
}

/// @nodoc
class _$SettingsLaunched implements SettingsLaunched {
  const _$SettingsLaunched();

  @override
  String toString() {
    return 'SettingsMiscellaneousEvent.settingsLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult settingsLaunched(),
  }) {
    assert(settingsLaunched != null);
    return settingsLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult settingsLaunched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsLaunched != null) {
      return settingsLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult settingsLaunched(SettingsLaunched value),
  }) {
    assert(settingsLaunched != null);
    return settingsLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult settingsLaunched(SettingsLaunched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsLaunched != null) {
      return settingsLaunched(this);
    }
    return orElse();
  }
}

abstract class SettingsLaunched implements SettingsMiscellaneousEvent {
  const factory SettingsLaunched() = _$SettingsLaunched;
}

/// @nodoc
class _$SettingsMiscellaneousStateTearOff {
  const _$SettingsMiscellaneousStateTearOff();

// ignore: unused_element
  _SettingMmiscellaneousState call(
      {@required String appName, @required String appVersion}) {
    return _SettingMmiscellaneousState(
      appName: appName,
      appVersion: appVersion,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsMiscellaneousState = _$SettingsMiscellaneousStateTearOff();

/// @nodoc
mixin _$SettingsMiscellaneousState {
  String get appName;
  String get appVersion;

  @JsonKey(ignore: true)
  $SettingsMiscellaneousStateCopyWith<SettingsMiscellaneousState> get copyWith;
}

/// @nodoc
abstract class $SettingsMiscellaneousStateCopyWith<$Res> {
  factory $SettingsMiscellaneousStateCopyWith(SettingsMiscellaneousState value,
          $Res Function(SettingsMiscellaneousState) then) =
      _$SettingsMiscellaneousStateCopyWithImpl<$Res>;
  $Res call({String appName, String appVersion});
}

/// @nodoc
class _$SettingsMiscellaneousStateCopyWithImpl<$Res>
    implements $SettingsMiscellaneousStateCopyWith<$Res> {
  _$SettingsMiscellaneousStateCopyWithImpl(this._value, this._then);

  final SettingsMiscellaneousState _value;
  // ignore: unused_field
  final $Res Function(SettingsMiscellaneousState) _then;

  @override
  $Res call({
    Object appName = freezed,
    Object appVersion = freezed,
  }) {
    return _then(_value.copyWith(
      appName: appName == freezed ? _value.appName : appName as String,
      appVersion:
          appVersion == freezed ? _value.appVersion : appVersion as String,
    ));
  }
}

/// @nodoc
abstract class _$SettingMmiscellaneousStateCopyWith<$Res>
    implements $SettingsMiscellaneousStateCopyWith<$Res> {
  factory _$SettingMmiscellaneousStateCopyWith(
          _SettingMmiscellaneousState value,
          $Res Function(_SettingMmiscellaneousState) then) =
      __$SettingMmiscellaneousStateCopyWithImpl<$Res>;
  @override
  $Res call({String appName, String appVersion});
}

/// @nodoc
class __$SettingMmiscellaneousStateCopyWithImpl<$Res>
    extends _$SettingsMiscellaneousStateCopyWithImpl<$Res>
    implements _$SettingMmiscellaneousStateCopyWith<$Res> {
  __$SettingMmiscellaneousStateCopyWithImpl(_SettingMmiscellaneousState _value,
      $Res Function(_SettingMmiscellaneousState) _then)
      : super(_value, (v) => _then(v as _SettingMmiscellaneousState));

  @override
  _SettingMmiscellaneousState get _value =>
      super._value as _SettingMmiscellaneousState;

  @override
  $Res call({
    Object appName = freezed,
    Object appVersion = freezed,
  }) {
    return _then(_SettingMmiscellaneousState(
      appName: appName == freezed ? _value.appName : appName as String,
      appVersion:
          appVersion == freezed ? _value.appVersion : appVersion as String,
    ));
  }
}

/// @nodoc
class _$_SettingMmiscellaneousState implements _SettingMmiscellaneousState {
  const _$_SettingMmiscellaneousState(
      {@required this.appName, @required this.appVersion})
      : assert(appName != null),
        assert(appVersion != null);

  @override
  final String appName;
  @override
  final String appVersion;

  @override
  String toString() {
    return 'SettingsMiscellaneousState(appName: $appName, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingMmiscellaneousState &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(appVersion);

  @JsonKey(ignore: true)
  @override
  _$SettingMmiscellaneousStateCopyWith<_SettingMmiscellaneousState>
      get copyWith => __$SettingMmiscellaneousStateCopyWithImpl<
          _SettingMmiscellaneousState>(this, _$identity);
}

abstract class _SettingMmiscellaneousState
    implements SettingsMiscellaneousState {
  const factory _SettingMmiscellaneousState(
      {@required String appName,
      @required String appVersion}) = _$_SettingMmiscellaneousState;

  @override
  String get appName;
  @override
  String get appVersion;
  @override
  @JsonKey(ignore: true)
  _$SettingMmiscellaneousStateCopyWith<_SettingMmiscellaneousState>
      get copyWith;
}
