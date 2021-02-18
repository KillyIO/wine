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
  ConfigDeletedSuccess configDeleted() {
    return const ConfigDeletedSuccess();
  }

// ignore: unused_element
  ConfigFetched configFetched(Config config) {
    return ConfigFetched(
      config,
    );
  }

// ignore: unused_element
  ConfigInitialized configInitialized(Config config) {
    return ConfigInitialized(
      config,
    );
  }

// ignore: unused_element
  ConfigUpdated configUpdated(Config config) {
    return ConfigUpdated(
      config,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ConfigDatabaseSuccess = _$ConfigDatabaseSuccessTearOff();

/// @nodoc
mixin _$ConfigDatabaseSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeleted(),
    @required TResult configFetched(Config config),
    @required TResult configInitialized(Config config),
    @required TResult configUpdated(Config config),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeleted(),
    TResult configFetched(Config config),
    TResult configInitialized(Config config),
    TResult configUpdated(Config config),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeleted(ConfigDeletedSuccess value),
    @required TResult configFetched(ConfigFetched value),
    @required TResult configInitialized(ConfigInitialized value),
    @required TResult configUpdated(ConfigUpdated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeleted(ConfigDeletedSuccess value),
    TResult configFetched(ConfigFetched value),
    TResult configInitialized(ConfigInitialized value),
    TResult configUpdated(ConfigUpdated value),
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
    return 'ConfigDatabaseSuccess.configDeleted()';
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
    @required TResult configDeleted(),
    @required TResult configFetched(Config config),
    @required TResult configInitialized(Config config),
    @required TResult configUpdated(Config config),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configDeleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeleted(),
    TResult configFetched(Config config),
    TResult configInitialized(Config config),
    TResult configUpdated(Config config),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configDeleted != null) {
      return configDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeleted(ConfigDeletedSuccess value),
    @required TResult configFetched(ConfigFetched value),
    @required TResult configInitialized(ConfigInitialized value),
    @required TResult configUpdated(ConfigUpdated value),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeleted(ConfigDeletedSuccess value),
    TResult configFetched(ConfigFetched value),
    TResult configInitialized(ConfigInitialized value),
    TResult configUpdated(ConfigUpdated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configDeleted != null) {
      return configDeleted(this);
    }
    return orElse();
  }
}

abstract class ConfigDeletedSuccess implements ConfigDatabaseSuccess {
  const factory ConfigDeletedSuccess() = _$ConfigDeletedSuccess;
}

/// @nodoc
abstract class $ConfigFetchedCopyWith<$Res> {
  factory $ConfigFetchedCopyWith(
          ConfigFetched value, $Res Function(ConfigFetched) then) =
      _$ConfigFetchedCopyWithImpl<$Res>;
  $Res call({Config config});
}

/// @nodoc
class _$ConfigFetchedCopyWithImpl<$Res>
    extends _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigFetchedCopyWith<$Res> {
  _$ConfigFetchedCopyWithImpl(
      ConfigFetched _value, $Res Function(ConfigFetched) _then)
      : super(_value, (v) => _then(v as ConfigFetched));

  @override
  ConfigFetched get _value => super._value as ConfigFetched;

  @override
  $Res call({
    Object config = freezed,
  }) {
    return _then(ConfigFetched(
      config == freezed ? _value.config : config as Config,
    ));
  }
}

/// @nodoc
class _$ConfigFetched implements ConfigFetched {
  const _$ConfigFetched(this.config) : assert(config != null);

  @override
  final Config config;

  @override
  String toString() {
    return 'ConfigDatabaseSuccess.configFetched(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfigFetched &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(config);

  @JsonKey(ignore: true)
  @override
  $ConfigFetchedCopyWith<ConfigFetched> get copyWith =>
      _$ConfigFetchedCopyWithImpl<ConfigFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeleted(),
    @required TResult configFetched(Config config),
    @required TResult configInitialized(Config config),
    @required TResult configUpdated(Config config),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configFetched(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeleted(),
    TResult configFetched(Config config),
    TResult configInitialized(Config config),
    TResult configUpdated(Config config),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetched != null) {
      return configFetched(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeleted(ConfigDeletedSuccess value),
    @required TResult configFetched(ConfigFetched value),
    @required TResult configInitialized(ConfigInitialized value),
    @required TResult configUpdated(ConfigUpdated value),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeleted(ConfigDeletedSuccess value),
    TResult configFetched(ConfigFetched value),
    TResult configInitialized(ConfigInitialized value),
    TResult configUpdated(ConfigUpdated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetched != null) {
      return configFetched(this);
    }
    return orElse();
  }
}

abstract class ConfigFetched implements ConfigDatabaseSuccess {
  const factory ConfigFetched(Config config) = _$ConfigFetched;

  Config get config;
  @JsonKey(ignore: true)
  $ConfigFetchedCopyWith<ConfigFetched> get copyWith;
}

/// @nodoc
abstract class $ConfigInitializedCopyWith<$Res> {
  factory $ConfigInitializedCopyWith(
          ConfigInitialized value, $Res Function(ConfigInitialized) then) =
      _$ConfigInitializedCopyWithImpl<$Res>;
  $Res call({Config config});
}

/// @nodoc
class _$ConfigInitializedCopyWithImpl<$Res>
    extends _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigInitializedCopyWith<$Res> {
  _$ConfigInitializedCopyWithImpl(
      ConfigInitialized _value, $Res Function(ConfigInitialized) _then)
      : super(_value, (v) => _then(v as ConfigInitialized));

  @override
  ConfigInitialized get _value => super._value as ConfigInitialized;

  @override
  $Res call({
    Object config = freezed,
  }) {
    return _then(ConfigInitialized(
      config == freezed ? _value.config : config as Config,
    ));
  }
}

/// @nodoc
class _$ConfigInitialized implements ConfigInitialized {
  const _$ConfigInitialized(this.config) : assert(config != null);

  @override
  final Config config;

  @override
  String toString() {
    return 'ConfigDatabaseSuccess.configInitialized(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfigInitialized &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(config);

  @JsonKey(ignore: true)
  @override
  $ConfigInitializedCopyWith<ConfigInitialized> get copyWith =>
      _$ConfigInitializedCopyWithImpl<ConfigInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeleted(),
    @required TResult configFetched(Config config),
    @required TResult configInitialized(Config config),
    @required TResult configUpdated(Config config),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configInitialized(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeleted(),
    TResult configFetched(Config config),
    TResult configInitialized(Config config),
    TResult configUpdated(Config config),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configInitialized != null) {
      return configInitialized(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeleted(ConfigDeletedSuccess value),
    @required TResult configFetched(ConfigFetched value),
    @required TResult configInitialized(ConfigInitialized value),
    @required TResult configUpdated(ConfigUpdated value),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeleted(ConfigDeletedSuccess value),
    TResult configFetched(ConfigFetched value),
    TResult configInitialized(ConfigInitialized value),
    TResult configUpdated(ConfigUpdated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configInitialized != null) {
      return configInitialized(this);
    }
    return orElse();
  }
}

abstract class ConfigInitialized implements ConfigDatabaseSuccess {
  const factory ConfigInitialized(Config config) = _$ConfigInitialized;

  Config get config;
  @JsonKey(ignore: true)
  $ConfigInitializedCopyWith<ConfigInitialized> get copyWith;
}

/// @nodoc
abstract class $ConfigUpdatedCopyWith<$Res> {
  factory $ConfigUpdatedCopyWith(
          ConfigUpdated value, $Res Function(ConfigUpdated) then) =
      _$ConfigUpdatedCopyWithImpl<$Res>;
  $Res call({Config config});
}

/// @nodoc
class _$ConfigUpdatedCopyWithImpl<$Res>
    extends _$ConfigDatabaseSuccessCopyWithImpl<$Res>
    implements $ConfigUpdatedCopyWith<$Res> {
  _$ConfigUpdatedCopyWithImpl(
      ConfigUpdated _value, $Res Function(ConfigUpdated) _then)
      : super(_value, (v) => _then(v as ConfigUpdated));

  @override
  ConfigUpdated get _value => super._value as ConfigUpdated;

  @override
  $Res call({
    Object config = freezed,
  }) {
    return _then(ConfigUpdated(
      config == freezed ? _value.config : config as Config,
    ));
  }
}

/// @nodoc
class _$ConfigUpdated implements ConfigUpdated {
  const _$ConfigUpdated(this.config) : assert(config != null);

  @override
  final Config config;

  @override
  String toString() {
    return 'ConfigDatabaseSuccess.configUpdated(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfigUpdated &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(config);

  @JsonKey(ignore: true)
  @override
  $ConfigUpdatedCopyWith<ConfigUpdated> get copyWith =>
      _$ConfigUpdatedCopyWithImpl<ConfigUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult configDeleted(),
    @required TResult configFetched(Config config),
    @required TResult configInitialized(Config config),
    @required TResult configUpdated(Config config),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configUpdated(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult configDeleted(),
    TResult configFetched(Config config),
    TResult configInitialized(Config config),
    TResult configUpdated(Config config),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configUpdated != null) {
      return configUpdated(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult configDeleted(ConfigDeletedSuccess value),
    @required TResult configFetched(ConfigFetched value),
    @required TResult configInitialized(ConfigInitialized value),
    @required TResult configUpdated(ConfigUpdated value),
  }) {
    assert(configDeleted != null);
    assert(configFetched != null);
    assert(configInitialized != null);
    assert(configUpdated != null);
    return configUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult configDeleted(ConfigDeletedSuccess value),
    TResult configFetched(ConfigFetched value),
    TResult configInitialized(ConfigInitialized value),
    TResult configUpdated(ConfigUpdated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configUpdated != null) {
      return configUpdated(this);
    }
    return orElse();
  }
}

abstract class ConfigUpdated implements ConfigDatabaseSuccess {
  const factory ConfigUpdated(Config config) = _$ConfigUpdated;

  Config get config;
  @JsonKey(ignore: true)
  $ConfigUpdatedCopyWith<ConfigUpdated> get copyWith;
}
