// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'config_database_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ConfigDatabaseSuccessTearOff {
  const _$ConfigDatabaseSuccessTearOff();

// ignore: unused_element
  ConfigDeletedSuccess configDeletedSuccess() {
    return const ConfigDeletedSuccess();
  }

// ignore: unused_element
  ConfigFetchedSuccess configFetchedSuccess(Config config) {
    return ConfigFetchedSuccess(
      config,
    );
  }

// ignore: unused_element
  ConfigInitializedSuccess configInitializedSuccess() {
    return const ConfigInitializedSuccess();
  }

// ignore: unused_element
  ConfigUpdatedSuccess configUpdatedSuccess() {
    return const ConfigUpdatedSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $ConfigDatabaseSuccess = _$ConfigDatabaseSuccessTearOff();

/// @nodoc
mixin _$ConfigDatabaseSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeletedSuccess(),
    @required TResult configFetchedSuccess(Config config),
    @required TResult configInitializedSuccess(),
    @required TResult configUpdatedSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeletedSuccess(),
    TResult configFetchedSuccess(Config config),
    TResult configInitializedSuccess(),
    TResult configUpdatedSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeletedSuccess(ConfigDeletedSuccess value),
    @required TResult configFetchedSuccess(ConfigFetchedSuccess value),
    @required TResult configInitializedSuccess(ConfigInitializedSuccess value),
    @required TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeletedSuccess(ConfigDeletedSuccess value),
    TResult configFetchedSuccess(ConfigFetchedSuccess value),
    TResult configInitializedSuccess(ConfigInitializedSuccess value),
    TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ConfigDatabaseSuccessCopyWith<$Res> {
  factory $ConfigDatabaseSuccessCopyWith(ConfigDatabaseSuccess value,
          $Res Function(ConfigDatabaseSuccess) then) =
      _$ConfigDatabaseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigDatabaseSuccessCopyWith<$Res> {
  _$ConfigDatabaseSuccessCopyWithImpl(this._value, this._then);

  final ConfigDatabaseSuccess _value;
  // ignore: unused_field
  final $Res Function(ConfigDatabaseSuccess) _then;
}

/// @nodoc
abstract class $ConfigDeletedSuccessCopyWith<$Res> {
  factory $ConfigDeletedSuccessCopyWith(ConfigDeletedSuccess value,
          $Res Function(ConfigDeletedSuccess) then) =
      _$ConfigDeletedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfigDeletedSuccessCopyWithImpl<$Res>
    extends _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigDeletedSuccessCopyWith<$Res> {
  _$ConfigDeletedSuccessCopyWithImpl(
      ConfigDeletedSuccess _value, $Res Function(ConfigDeletedSuccess) _then)
      : super(_value, (v) => _then(v as ConfigDeletedSuccess));

  @override
  ConfigDeletedSuccess get _value => super._value as ConfigDeletedSuccess;
}

/// @nodoc
class _$ConfigDeletedSuccess implements ConfigDeletedSuccess {
  const _$ConfigDeletedSuccess();

  @override
  String toString() {
    return 'ConfigDatabaseSuccess.configDeletedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfigDeletedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeletedSuccess(),
    @required TResult configFetchedSuccess(Config config),
    @required TResult configInitializedSuccess(),
    @required TResult configUpdatedSuccess(),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configDeletedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeletedSuccess(),
    TResult configFetchedSuccess(Config config),
    TResult configInitializedSuccess(),
    TResult configUpdatedSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configDeletedSuccess != null) {
      return configDeletedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeletedSuccess(ConfigDeletedSuccess value),
    @required TResult configFetchedSuccess(ConfigFetchedSuccess value),
    @required TResult configInitializedSuccess(ConfigInitializedSuccess value),
    @required TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configDeletedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeletedSuccess(ConfigDeletedSuccess value),
    TResult configFetchedSuccess(ConfigFetchedSuccess value),
    TResult configInitializedSuccess(ConfigInitializedSuccess value),
    TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configDeletedSuccess != null) {
      return configDeletedSuccess(this);
    }
    return orElse();
  }
}

abstract class ConfigDeletedSuccess implements ConfigDatabaseSuccess {
  const factory ConfigDeletedSuccess() = _$ConfigDeletedSuccess;
}

/// @nodoc
abstract class $ConfigFetchedSuccessCopyWith<$Res> {
  factory $ConfigFetchedSuccessCopyWith(ConfigFetchedSuccess value,
          $Res Function(ConfigFetchedSuccess) then) =
      _$ConfigFetchedSuccessCopyWithImpl<$Res>;
  $Res call({Config config});
}

/// @nodoc
class _$ConfigFetchedSuccessCopyWithImpl<$Res>
    extends _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigFetchedSuccessCopyWith<$Res> {
  _$ConfigFetchedSuccessCopyWithImpl(
      ConfigFetchedSuccess _value, $Res Function(ConfigFetchedSuccess) _then)
      : super(_value, (v) => _then(v as ConfigFetchedSuccess));

  @override
  ConfigFetchedSuccess get _value => super._value as ConfigFetchedSuccess;

  @override
  $Res call({
    Object config = freezed,
  }) {
    return _then(ConfigFetchedSuccess(
      config == freezed ? _value.config : config as Config,
    ));
  }
}

/// @nodoc
class _$ConfigFetchedSuccess implements ConfigFetchedSuccess {
  const _$ConfigFetchedSuccess(this.config) : assert(config != null);

  @override
  final Config config;

  @override
  String toString() {
    return 'ConfigDatabaseSuccess.configFetchedSuccess(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfigFetchedSuccess &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(config);

  @override
  $ConfigFetchedSuccessCopyWith<ConfigFetchedSuccess> get copyWith =>
      _$ConfigFetchedSuccessCopyWithImpl<ConfigFetchedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeletedSuccess(),
    @required TResult configFetchedSuccess(Config config),
    @required TResult configInitializedSuccess(),
    @required TResult configUpdatedSuccess(),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configFetchedSuccess(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeletedSuccess(),
    TResult configFetchedSuccess(Config config),
    TResult configInitializedSuccess(),
    TResult configUpdatedSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetchedSuccess != null) {
      return configFetchedSuccess(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeletedSuccess(ConfigDeletedSuccess value),
    @required TResult configFetchedSuccess(ConfigFetchedSuccess value),
    @required TResult configInitializedSuccess(ConfigInitializedSuccess value),
    @required TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configFetchedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeletedSuccess(ConfigDeletedSuccess value),
    TResult configFetchedSuccess(ConfigFetchedSuccess value),
    TResult configInitializedSuccess(ConfigInitializedSuccess value),
    TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetchedSuccess != null) {
      return configFetchedSuccess(this);
    }
    return orElse();
  }
}

abstract class ConfigFetchedSuccess implements ConfigDatabaseSuccess {
  const factory ConfigFetchedSuccess(Config config) = _$ConfigFetchedSuccess;

  Config get config;
  $ConfigFetchedSuccessCopyWith<ConfigFetchedSuccess> get copyWith;
}

/// @nodoc
abstract class $ConfigInitializedSuccessCopyWith<$Res> {
  factory $ConfigInitializedSuccessCopyWith(ConfigInitializedSuccess value,
          $Res Function(ConfigInitializedSuccess) then) =
      _$ConfigInitializedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfigInitializedSuccessCopyWithImpl<$Res>
    extends _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigInitializedSuccessCopyWith<$Res> {
  _$ConfigInitializedSuccessCopyWithImpl(ConfigInitializedSuccess _value,
      $Res Function(ConfigInitializedSuccess) _then)
      : super(_value, (v) => _then(v as ConfigInitializedSuccess));

  @override
  ConfigInitializedSuccess get _value =>
      super._value as ConfigInitializedSuccess;
}

/// @nodoc
class _$ConfigInitializedSuccess implements ConfigInitializedSuccess {
  const _$ConfigInitializedSuccess();

  @override
  String toString() {
    return 'ConfigDatabaseSuccess.configInitializedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfigInitializedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeletedSuccess(),
    @required TResult configFetchedSuccess(Config config),
    @required TResult configInitializedSuccess(),
    @required TResult configUpdatedSuccess(),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configInitializedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeletedSuccess(),
    TResult configFetchedSuccess(Config config),
    TResult configInitializedSuccess(),
    TResult configUpdatedSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configInitializedSuccess != null) {
      return configInitializedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeletedSuccess(ConfigDeletedSuccess value),
    @required TResult configFetchedSuccess(ConfigFetchedSuccess value),
    @required TResult configInitializedSuccess(ConfigInitializedSuccess value),
    @required TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configInitializedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeletedSuccess(ConfigDeletedSuccess value),
    TResult configFetchedSuccess(ConfigFetchedSuccess value),
    TResult configInitializedSuccess(ConfigInitializedSuccess value),
    TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configInitializedSuccess != null) {
      return configInitializedSuccess(this);
    }
    return orElse();
  }
}

abstract class ConfigInitializedSuccess implements ConfigDatabaseSuccess {
  const factory ConfigInitializedSuccess() = _$ConfigInitializedSuccess;
}

/// @nodoc
abstract class $ConfigUpdatedSuccessCopyWith<$Res> {
  factory $ConfigUpdatedSuccessCopyWith(ConfigUpdatedSuccess value,
          $Res Function(ConfigUpdatedSuccess) then) =
      _$ConfigUpdatedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfigUpdatedSuccessCopyWithImpl<$Res>
    extends _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigUpdatedSuccessCopyWith<$Res> {
  _$ConfigUpdatedSuccessCopyWithImpl(
      ConfigUpdatedSuccess _value, $Res Function(ConfigUpdatedSuccess) _then)
      : super(_value, (v) => _then(v as ConfigUpdatedSuccess));

  @override
  ConfigUpdatedSuccess get _value => super._value as ConfigUpdatedSuccess;
}

/// @nodoc
class _$ConfigUpdatedSuccess implements ConfigUpdatedSuccess {
  const _$ConfigUpdatedSuccess();

  @override
  String toString() {
    return 'ConfigDatabaseSuccess.configUpdatedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfigUpdatedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeletedSuccess(),
    @required TResult configFetchedSuccess(Config config),
    @required TResult configInitializedSuccess(),
    @required TResult configUpdatedSuccess(),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configUpdatedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeletedSuccess(),
    TResult configFetchedSuccess(Config config),
    TResult configInitializedSuccess(),
    TResult configUpdatedSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configUpdatedSuccess != null) {
      return configUpdatedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeletedSuccess(ConfigDeletedSuccess value),
    @required TResult configFetchedSuccess(ConfigFetchedSuccess value),
    @required TResult configInitializedSuccess(ConfigInitializedSuccess value),
    @required TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
  }) {
    assert(configDeletedSuccess != null);
    assert(configFetchedSuccess != null);
    assert(configInitializedSuccess != null);
    assert(configUpdatedSuccess != null);
    return configUpdatedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeletedSuccess(ConfigDeletedSuccess value),
    TResult configFetchedSuccess(ConfigFetchedSuccess value),
    TResult configInitializedSuccess(ConfigInitializedSuccess value),
    TResult configUpdatedSuccess(ConfigUpdatedSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configUpdatedSuccess != null) {
      return configUpdatedSuccess(this);
    }
    return orElse();
  }
}

abstract class ConfigUpdatedSuccess implements ConfigDatabaseSuccess {
  const factory ConfigUpdatedSuccess() = _$ConfigUpdatedSuccess;
}
