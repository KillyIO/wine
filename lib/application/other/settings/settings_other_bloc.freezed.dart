// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_other_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsOtherEventTearOff {
  const _$SettingsOtherEventTearOff();

// ignore: unused_element
  GetAppDetailsEVT getAppDetailsEVT() {
    return const GetAppDetailsEVT();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsOtherEvent = _$SettingsOtherEventTearOff();

/// @nodoc
mixin _$SettingsOtherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAppDetailsEVT(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAppDetailsEVT(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAppDetailsEVT(GetAppDetailsEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAppDetailsEVT(GetAppDetailsEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SettingsOtherEventCopyWith<$Res> {
  factory $SettingsOtherEventCopyWith(
          SettingsOtherEvent value, $Res Function(SettingsOtherEvent) then) =
      _$SettingsOtherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsOtherEventCopyWithImpl<$Res>
    implements $SettingsOtherEventCopyWith<$Res> {
  _$SettingsOtherEventCopyWithImpl(this._value, this._then);

  final SettingsOtherEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsOtherEvent) _then;
}

/// @nodoc
abstract class $GetAppDetailsEVTCopyWith<$Res> {
  factory $GetAppDetailsEVTCopyWith(
          GetAppDetailsEVT value, $Res Function(GetAppDetailsEVT) then) =
      _$GetAppDetailsEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAppDetailsEVTCopyWithImpl<$Res>
    extends _$SettingsOtherEventCopyWithImpl<$Res>
    implements $GetAppDetailsEVTCopyWith<$Res> {
  _$GetAppDetailsEVTCopyWithImpl(
      GetAppDetailsEVT _value, $Res Function(GetAppDetailsEVT) _then)
      : super(_value, (v) => _then(v as GetAppDetailsEVT));

  @override
  GetAppDetailsEVT get _value => super._value as GetAppDetailsEVT;
}

/// @nodoc
class _$GetAppDetailsEVT implements GetAppDetailsEVT {
  const _$GetAppDetailsEVT();

  @override
  String toString() {
    return 'SettingsOtherEvent.getAppDetailsEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAppDetailsEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAppDetailsEVT(),
  }) {
    assert(getAppDetailsEVT != null);
    return getAppDetailsEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAppDetailsEVT(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAppDetailsEVT != null) {
      return getAppDetailsEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAppDetailsEVT(GetAppDetailsEVT value),
  }) {
    assert(getAppDetailsEVT != null);
    return getAppDetailsEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAppDetailsEVT(GetAppDetailsEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAppDetailsEVT != null) {
      return getAppDetailsEVT(this);
    }
    return orElse();
  }
}

abstract class GetAppDetailsEVT implements SettingsOtherEvent {
  const factory GetAppDetailsEVT() = _$GetAppDetailsEVT;
}

/// @nodoc
class _$SettingsOtherStateTearOff {
  const _$SettingsOtherStateTearOff();

// ignore: unused_element
  _SettingsOtherState call(
      {@required String appName, @required String appVersion}) {
    return _SettingsOtherState(
      appName: appName,
      appVersion: appVersion,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsOtherState = _$SettingsOtherStateTearOff();

/// @nodoc
mixin _$SettingsOtherState {
  String get appName;
  String get appVersion;

  @JsonKey(ignore: true)
  $SettingsOtherStateCopyWith<SettingsOtherState> get copyWith;
}

/// @nodoc
abstract class $SettingsOtherStateCopyWith<$Res> {
  factory $SettingsOtherStateCopyWith(
          SettingsOtherState value, $Res Function(SettingsOtherState) then) =
      _$SettingsOtherStateCopyWithImpl<$Res>;
  $Res call({String appName, String appVersion});
}

/// @nodoc
class _$SettingsOtherStateCopyWithImpl<$Res>
    implements $SettingsOtherStateCopyWith<$Res> {
  _$SettingsOtherStateCopyWithImpl(this._value, this._then);

  final SettingsOtherState _value;
  // ignore: unused_field
  final $Res Function(SettingsOtherState) _then;

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
abstract class _$SettingsOtherStateCopyWith<$Res>
    implements $SettingsOtherStateCopyWith<$Res> {
  factory _$SettingsOtherStateCopyWith(
          _SettingsOtherState value, $Res Function(_SettingsOtherState) then) =
      __$SettingsOtherStateCopyWithImpl<$Res>;
  @override
  $Res call({String appName, String appVersion});
}

/// @nodoc
class __$SettingsOtherStateCopyWithImpl<$Res>
    extends _$SettingsOtherStateCopyWithImpl<$Res>
    implements _$SettingsOtherStateCopyWith<$Res> {
  __$SettingsOtherStateCopyWithImpl(
      _SettingsOtherState _value, $Res Function(_SettingsOtherState) _then)
      : super(_value, (v) => _then(v as _SettingsOtherState));

  @override
  _SettingsOtherState get _value => super._value as _SettingsOtherState;

  @override
  $Res call({
    Object appName = freezed,
    Object appVersion = freezed,
  }) {
    return _then(_SettingsOtherState(
      appName: appName == freezed ? _value.appName : appName as String,
      appVersion:
          appVersion == freezed ? _value.appVersion : appVersion as String,
    ));
  }
}

/// @nodoc
class _$_SettingsOtherState implements _SettingsOtherState {
  const _$_SettingsOtherState(
      {@required this.appName, @required this.appVersion})
      : assert(appName != null),
        assert(appVersion != null);

  @override
  final String appName;
  @override
  final String appVersion;

  @override
  String toString() {
    return 'SettingsOtherState(appName: $appName, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsOtherState &&
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
  _$SettingsOtherStateCopyWith<_SettingsOtherState> get copyWith =>
      __$SettingsOtherStateCopyWithImpl<_SettingsOtherState>(this, _$identity);
}

abstract class _SettingsOtherState implements SettingsOtherState {
  const factory _SettingsOtherState(
      {@required String appName,
      @required String appVersion}) = _$_SettingsOtherState;

  @override
  String get appName;
  @override
  String get appVersion;
  @override
  @JsonKey(ignore: true)
  _$SettingsOtherStateCopyWith<_SettingsOtherState> get copyWith;
}
