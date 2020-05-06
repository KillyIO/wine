// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'settings_outlier_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingsOutlierEventTearOff {
  const _$SettingsOutlierEventTearOff();

  GetAppDetails getAppDetails() {
    return const GetAppDetails();
  }
}

// ignore: unused_element
const $SettingsOutlierEvent = _$SettingsOutlierEventTearOff();

mixin _$SettingsOutlierEvent {}

abstract class $SettingsOutlierEventCopyWith<$Res> {
  factory $SettingsOutlierEventCopyWith(SettingsOutlierEvent value,
          $Res Function(SettingsOutlierEvent) then) =
      _$SettingsOutlierEventCopyWithImpl<$Res>;
}

class _$SettingsOutlierEventCopyWithImpl<$Res>
    implements $SettingsOutlierEventCopyWith<$Res> {
  _$SettingsOutlierEventCopyWithImpl(this._value, this._then);

  final SettingsOutlierEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsOutlierEvent) _then;
}

abstract class $GetAppDetailsCopyWith<$Res> {
  factory $GetAppDetailsCopyWith(
          GetAppDetails value, $Res Function(GetAppDetails) then) =
      _$GetAppDetailsCopyWithImpl<$Res>;
}

class _$GetAppDetailsCopyWithImpl<$Res>
    extends _$SettingsOutlierEventCopyWithImpl<$Res>
    implements $GetAppDetailsCopyWith<$Res> {
  _$GetAppDetailsCopyWithImpl(
      GetAppDetails _value, $Res Function(GetAppDetails) _then)
      : super(_value, (v) => _then(v as GetAppDetails));

  @override
  GetAppDetails get _value => super._value as GetAppDetails;
}

class _$GetAppDetails implements GetAppDetails {
  const _$GetAppDetails();

  @override
  String toString() {
    return 'SettingsOutlierEvent.getAppDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAppDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class GetAppDetails implements SettingsOutlierEvent {
  const factory GetAppDetails() = _$GetAppDetails;
}

class _$SettingsOutlierStateTearOff {
  const _$SettingsOutlierStateTearOff();

  _SettingsOutlierState call(
      {@required String appName, @required String appVersion}) {
    return _SettingsOutlierState(
      appName: appName,
      appVersion: appVersion,
    );
  }
}

// ignore: unused_element
const $SettingsOutlierState = _$SettingsOutlierStateTearOff();

mixin _$SettingsOutlierState {
  String get appName;
  String get appVersion;

  $SettingsOutlierStateCopyWith<SettingsOutlierState> get copyWith;
}

abstract class $SettingsOutlierStateCopyWith<$Res> {
  factory $SettingsOutlierStateCopyWith(SettingsOutlierState value,
          $Res Function(SettingsOutlierState) then) =
      _$SettingsOutlierStateCopyWithImpl<$Res>;
  $Res call({String appName, String appVersion});
}

class _$SettingsOutlierStateCopyWithImpl<$Res>
    implements $SettingsOutlierStateCopyWith<$Res> {
  _$SettingsOutlierStateCopyWithImpl(this._value, this._then);

  final SettingsOutlierState _value;
  // ignore: unused_field
  final $Res Function(SettingsOutlierState) _then;

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

abstract class _$SettingsOutlierStateCopyWith<$Res>
    implements $SettingsOutlierStateCopyWith<$Res> {
  factory _$SettingsOutlierStateCopyWith(_SettingsOutlierState value,
          $Res Function(_SettingsOutlierState) then) =
      __$SettingsOutlierStateCopyWithImpl<$Res>;
  @override
  $Res call({String appName, String appVersion});
}

class __$SettingsOutlierStateCopyWithImpl<$Res>
    extends _$SettingsOutlierStateCopyWithImpl<$Res>
    implements _$SettingsOutlierStateCopyWith<$Res> {
  __$SettingsOutlierStateCopyWithImpl(
      _SettingsOutlierState _value, $Res Function(_SettingsOutlierState) _then)
      : super(_value, (v) => _then(v as _SettingsOutlierState));

  @override
  _SettingsOutlierState get _value => super._value as _SettingsOutlierState;

  @override
  $Res call({
    Object appName = freezed,
    Object appVersion = freezed,
  }) {
    return _then(_SettingsOutlierState(
      appName: appName == freezed ? _value.appName : appName as String,
      appVersion:
          appVersion == freezed ? _value.appVersion : appVersion as String,
    ));
  }
}

class _$_SettingsOutlierState implements _SettingsOutlierState {
  const _$_SettingsOutlierState(
      {@required this.appName, @required this.appVersion})
      : assert(appName != null),
        assert(appVersion != null);

  @override
  final String appName;
  @override
  final String appVersion;

  @override
  String toString() {
    return 'SettingsOutlierState(appName: $appName, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsOutlierState &&
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

  @override
  _$SettingsOutlierStateCopyWith<_SettingsOutlierState> get copyWith =>
      __$SettingsOutlierStateCopyWithImpl<_SettingsOutlierState>(
          this, _$identity);
}

abstract class _SettingsOutlierState implements SettingsOutlierState {
  const factory _SettingsOutlierState(
      {@required String appName,
      @required String appVersion}) = _$_SettingsOutlierState;

  @override
  String get appName;
  @override
  String get appVersion;
  @override
  _$SettingsOutlierStateCopyWith<_SettingsOutlierState> get copyWith;
}
