// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

// ignore: unused_element
  Authenticated authenticated() {
    return const Authenticated();
  }

// ignore: unused_element
  DefaultCoverURLsCached defaultCoverURLsCached() {
    return const DefaultCoverURLsCached();
  }

// ignore: unused_element
  DefaultCoverURLsLoaded defaultCoverURLsLoaded(
      Map<String, String> defaultCoverURLs) {
    return DefaultCoverURLsLoaded(
      defaultCoverURLs,
    );
  }

// ignore: unused_element
  SessionFetched sessionFetched(User session) {
    return SessionFetched(
      session,
    );
  }

// ignore: unused_element
  SplashPageLaunched splashPageLaunched() {
    return const SplashPageLaunched();
  }

// ignore: unused_element
  SettingsInitialized settingsInitialized() {
    return const SettingsInitialized();
  }

// ignore: unused_element
  UserLoaded userLoaded(User user) {
    return UserLoaded(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc
class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'SplashEvent.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements SplashEvent {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $DefaultCoverURLsCachedCopyWith<$Res> {
  factory $DefaultCoverURLsCachedCopyWith(DefaultCoverURLsCached value,
          $Res Function(DefaultCoverURLsCached) then) =
      _$DefaultCoverURLsCachedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DefaultCoverURLsCachedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $DefaultCoverURLsCachedCopyWith<$Res> {
  _$DefaultCoverURLsCachedCopyWithImpl(DefaultCoverURLsCached _value,
      $Res Function(DefaultCoverURLsCached) _then)
      : super(_value, (v) => _then(v as DefaultCoverURLsCached));

  @override
  DefaultCoverURLsCached get _value => super._value as DefaultCoverURLsCached;
}

/// @nodoc
class _$DefaultCoverURLsCached implements DefaultCoverURLsCached {
  const _$DefaultCoverURLsCached();

  @override
  String toString() {
    return 'SplashEvent.defaultCoverURLsCached()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DefaultCoverURLsCached);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return defaultCoverURLsCached();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsCached != null) {
      return defaultCoverURLsCached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return defaultCoverURLsCached(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsCached != null) {
      return defaultCoverURLsCached(this);
    }
    return orElse();
  }
}

abstract class DefaultCoverURLsCached implements SplashEvent {
  const factory DefaultCoverURLsCached() = _$DefaultCoverURLsCached;
}

/// @nodoc
abstract class $DefaultCoverURLsLoadedCopyWith<$Res> {
  factory $DefaultCoverURLsLoadedCopyWith(DefaultCoverURLsLoaded value,
          $Res Function(DefaultCoverURLsLoaded) then) =
      _$DefaultCoverURLsLoadedCopyWithImpl<$Res>;
  $Res call({Map<String, String> defaultCoverURLs});
}

/// @nodoc
class _$DefaultCoverURLsLoadedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $DefaultCoverURLsLoadedCopyWith<$Res> {
  _$DefaultCoverURLsLoadedCopyWithImpl(DefaultCoverURLsLoaded _value,
      $Res Function(DefaultCoverURLsLoaded) _then)
      : super(_value, (v) => _then(v as DefaultCoverURLsLoaded));

  @override
  DefaultCoverURLsLoaded get _value => super._value as DefaultCoverURLsLoaded;

  @override
  $Res call({
    Object defaultCoverURLs = freezed,
  }) {
    return _then(DefaultCoverURLsLoaded(
      defaultCoverURLs == freezed
          ? _value.defaultCoverURLs
          : defaultCoverURLs as Map<String, String>,
    ));
  }
}

/// @nodoc
class _$DefaultCoverURLsLoaded implements DefaultCoverURLsLoaded {
  const _$DefaultCoverURLsLoaded(this.defaultCoverURLs)
      : assert(defaultCoverURLs != null);

  @override
  final Map<String, String> defaultCoverURLs;

  @override
  String toString() {
    return 'SplashEvent.defaultCoverURLsLoaded(defaultCoverURLs: $defaultCoverURLs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DefaultCoverURLsLoaded &&
            (identical(other.defaultCoverURLs, defaultCoverURLs) ||
                const DeepCollectionEquality()
                    .equals(other.defaultCoverURLs, defaultCoverURLs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(defaultCoverURLs);

  @JsonKey(ignore: true)
  @override
  $DefaultCoverURLsLoadedCopyWith<DefaultCoverURLsLoaded> get copyWith =>
      _$DefaultCoverURLsLoadedCopyWithImpl<DefaultCoverURLsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return defaultCoverURLsLoaded(defaultCoverURLs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsLoaded != null) {
      return defaultCoverURLsLoaded(defaultCoverURLs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return defaultCoverURLsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsLoaded != null) {
      return defaultCoverURLsLoaded(this);
    }
    return orElse();
  }
}

abstract class DefaultCoverURLsLoaded implements SplashEvent {
  const factory DefaultCoverURLsLoaded(Map<String, String> defaultCoverURLs) =
      _$DefaultCoverURLsLoaded;

  Map<String, String> get defaultCoverURLs;
  @JsonKey(ignore: true)
  $DefaultCoverURLsLoadedCopyWith<DefaultCoverURLsLoaded> get copyWith;
}

/// @nodoc
abstract class $SessionFetchedCopyWith<$Res> {
  factory $SessionFetchedCopyWith(
          SessionFetched value, $Res Function(SessionFetched) then) =
      _$SessionFetchedCopyWithImpl<$Res>;
  $Res call({User session});

  $UserCopyWith<$Res> get session;
}

/// @nodoc
class _$SessionFetchedCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements $SessionFetchedCopyWith<$Res> {
  _$SessionFetchedCopyWithImpl(
      SessionFetched _value, $Res Function(SessionFetched) _then)
      : super(_value, (v) => _then(v as SessionFetched));

  @override
  SessionFetched get _value => super._value as SessionFetched;

  @override
  $Res call({
    Object session = freezed,
  }) {
    return _then(SessionFetched(
      session == freezed ? _value.session : session as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get session {
    if (_value.session == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc
class _$SessionFetched implements SessionFetched {
  const _$SessionFetched(this.session) : assert(session != null);

  @override
  final User session;

  @override
  String toString() {
    return 'SplashEvent.sessionFetched(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionFetched &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(session);

  @JsonKey(ignore: true)
  @override
  $SessionFetchedCopyWith<SessionFetched> get copyWith =>
      _$SessionFetchedCopyWithImpl<SessionFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return sessionFetched(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetched != null) {
      return sessionFetched(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements SplashEvent {
  const factory SessionFetched(User session) = _$SessionFetched;

  User get session;
  @JsonKey(ignore: true)
  $SessionFetchedCopyWith<SessionFetched> get copyWith;
}

/// @nodoc
abstract class $SplashPageLaunchedCopyWith<$Res> {
  factory $SplashPageLaunchedCopyWith(
          SplashPageLaunched value, $Res Function(SplashPageLaunched) then) =
      _$SplashPageLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashPageLaunchedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $SplashPageLaunchedCopyWith<$Res> {
  _$SplashPageLaunchedCopyWithImpl(
      SplashPageLaunched _value, $Res Function(SplashPageLaunched) _then)
      : super(_value, (v) => _then(v as SplashPageLaunched));

  @override
  SplashPageLaunched get _value => super._value as SplashPageLaunched;
}

/// @nodoc
class _$SplashPageLaunched implements SplashPageLaunched {
  const _$SplashPageLaunched();

  @override
  String toString() {
    return 'SplashEvent.splashPageLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SplashPageLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return splashPageLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (splashPageLaunched != null) {
      return splashPageLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return splashPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (splashPageLaunched != null) {
      return splashPageLaunched(this);
    }
    return orElse();
  }
}

abstract class SplashPageLaunched implements SplashEvent {
  const factory SplashPageLaunched() = _$SplashPageLaunched;
}

/// @nodoc
abstract class $SettingsInitializedCopyWith<$Res> {
  factory $SettingsInitializedCopyWith(
          SettingsInitialized value, $Res Function(SettingsInitialized) then) =
      _$SettingsInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsInitializedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $SettingsInitializedCopyWith<$Res> {
  _$SettingsInitializedCopyWithImpl(
      SettingsInitialized _value, $Res Function(SettingsInitialized) _then)
      : super(_value, (v) => _then(v as SettingsInitialized));

  @override
  SettingsInitialized get _value => super._value as SettingsInitialized;
}

/// @nodoc
class _$SettingsInitialized implements SettingsInitialized {
  const _$SettingsInitialized();

  @override
  String toString() {
    return 'SplashEvent.settingsInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SettingsInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return settingsInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsInitialized != null) {
      return settingsInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return settingsInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsInitialized != null) {
      return settingsInitialized(this);
    }
    return orElse();
  }
}

abstract class SettingsInitialized implements SplashEvent {
  const factory SettingsInitialized() = _$SettingsInitialized;
}

/// @nodoc
abstract class $UserLoadedCopyWith<$Res> {
  factory $UserLoadedCopyWith(
          UserLoaded value, $Res Function(UserLoaded) then) =
      _$UserLoadedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserLoadedCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements $UserLoadedCopyWith<$Res> {
  _$UserLoadedCopyWithImpl(UserLoaded _value, $Res Function(UserLoaded) _then)
      : super(_value, (v) => _then(v as UserLoaded));

  @override
  UserLoaded get _value => super._value as UserLoaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserLoaded(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$UserLoaded implements UserLoaded {
  const _$UserLoaded(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SplashEvent.userLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserLoadedCopyWith<UserLoaded> get copyWith =>
      _$UserLoadedCopyWithImpl<UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult defaultCoverURLsCached(),
    @required
        TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    @required TResult sessionFetched(User session),
    @required TResult splashPageLaunched(),
    @required TResult settingsInitialized(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult defaultCoverURLsCached(),
    TResult defaultCoverURLsLoaded(Map<String, String> defaultCoverURLs),
    TResult sessionFetched(User session),
    TResult splashPageLaunched(),
    TResult settingsInitialized(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(sessionFetched != null);
    assert(splashPageLaunched != null);
    assert(settingsInitialized != null);
    assert(userLoaded != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult defaultCoverURLsCached(DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(DefaultCoverURLsLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements SplashEvent {
  const factory UserLoaded(User user) = _$UserLoaded;

  User get user;
  @JsonKey(ignore: true)
  $UserLoadedCopyWith<UserLoaded> get copyWith;
}

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

// ignore: unused_element
  _Failure failure(
      {Option<Either<AuthFailure, dynamic>> authOption,
      Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
      Option<Either<SessionFailure, dynamic>> sessionOption,
      Option<Either<SettingsFailure, dynamic>> settingsOption,
      Option<Either<UserFailure, dynamic>> userOption}) {
    return _Failure(
      authOption: authOption,
      defaultCoverOption: defaultCoverOption,
      sessionOption: sessionOption,
      settingsOption: settingsOption,
      userOption: userOption,
    );
  }

// ignore: unused_element
  _GoToHome goToHome() {
    return const _GoToHome();
  }

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Processing processing() {
    return const _Processing();
  }
}

/// @nodoc
// ignore: unused_element
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult failure(
            Option<Either<AuthFailure, dynamic>> authOption,
            Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
            Option<Either<SessionFailure, dynamic>> sessionOption,
            Option<Either<SettingsFailure, dynamic>> settingsOption,
            Option<Either<UserFailure, dynamic>> userOption),
    @required TResult goToHome(),
    @required TResult initial(),
    @required TResult processing(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult failure(
        Option<Either<AuthFailure, dynamic>> authOption,
        Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
        Option<Either<SessionFailure, dynamic>> sessionOption,
        Option<Either<SettingsFailure, dynamic>> settingsOption,
        Option<Either<UserFailure, dynamic>> userOption),
    TResult goToHome(),
    TResult initial(),
    TResult processing(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult failure(_Failure value),
    @required TResult goToHome(_GoToHome value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult failure(_Failure value),
    TResult goToHome(_GoToHome value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<AuthFailure, dynamic>> authOption,
      Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
      Option<Either<SessionFailure, dynamic>> sessionOption,
      Option<Either<SettingsFailure, dynamic>> settingsOption,
      Option<Either<UserFailure, dynamic>> userOption});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object authOption = freezed,
    Object defaultCoverOption = freezed,
    Object sessionOption = freezed,
    Object settingsOption = freezed,
    Object userOption = freezed,
  }) {
    return _then(_Failure(
      authOption: authOption == freezed
          ? _value.authOption
          : authOption as Option<Either<AuthFailure, dynamic>>,
      defaultCoverOption: defaultCoverOption == freezed
          ? _value.defaultCoverOption
          : defaultCoverOption as Option<Either<DefaultCoversFailure, dynamic>>,
      sessionOption: sessionOption == freezed
          ? _value.sessionOption
          : sessionOption as Option<Either<SessionFailure, dynamic>>,
      settingsOption: settingsOption == freezed
          ? _value.settingsOption
          : settingsOption as Option<Either<SettingsFailure, dynamic>>,
      userOption: userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, dynamic>>,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(
      {this.authOption,
      this.defaultCoverOption,
      this.sessionOption,
      this.settingsOption,
      this.userOption});

  @override
  final Option<Either<AuthFailure, dynamic>> authOption;
  @override
  final Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption;
  @override
  final Option<Either<SessionFailure, dynamic>> sessionOption;
  @override
  final Option<Either<SettingsFailure, dynamic>> settingsOption;
  @override
  final Option<Either<UserFailure, dynamic>> userOption;

  @override
  String toString() {
    return 'SplashState.failure(authOption: $authOption, defaultCoverOption: $defaultCoverOption, sessionOption: $sessionOption, settingsOption: $settingsOption, userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.authOption, authOption) ||
                const DeepCollectionEquality()
                    .equals(other.authOption, authOption)) &&
            (identical(other.defaultCoverOption, defaultCoverOption) ||
                const DeepCollectionEquality()
                    .equals(other.defaultCoverOption, defaultCoverOption)) &&
            (identical(other.sessionOption, sessionOption) ||
                const DeepCollectionEquality()
                    .equals(other.sessionOption, sessionOption)) &&
            (identical(other.settingsOption, settingsOption) ||
                const DeepCollectionEquality()
                    .equals(other.settingsOption, settingsOption)) &&
            (identical(other.userOption, userOption) ||
                const DeepCollectionEquality()
                    .equals(other.userOption, userOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authOption) ^
      const DeepCollectionEquality().hash(defaultCoverOption) ^
      const DeepCollectionEquality().hash(sessionOption) ^
      const DeepCollectionEquality().hash(settingsOption) ^
      const DeepCollectionEquality().hash(userOption);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult failure(
            Option<Either<AuthFailure, dynamic>> authOption,
            Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
            Option<Either<SessionFailure, dynamic>> sessionOption,
            Option<Either<SettingsFailure, dynamic>> settingsOption,
            Option<Either<UserFailure, dynamic>> userOption),
    @required TResult goToHome(),
    @required TResult initial(),
    @required TResult processing(),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return failure(authOption, defaultCoverOption, sessionOption,
        settingsOption, userOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult failure(
        Option<Either<AuthFailure, dynamic>> authOption,
        Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
        Option<Either<SessionFailure, dynamic>> sessionOption,
        Option<Either<SettingsFailure, dynamic>> settingsOption,
        Option<Either<UserFailure, dynamic>> userOption),
    TResult goToHome(),
    TResult initial(),
    TResult processing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(authOption, defaultCoverOption, sessionOption,
          settingsOption, userOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult failure(_Failure value),
    @required TResult goToHome(_GoToHome value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult failure(_Failure value),
    TResult goToHome(_GoToHome value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SplashState {
  const factory _Failure(
      {Option<Either<AuthFailure, dynamic>> authOption,
      Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
      Option<Either<SessionFailure, dynamic>> sessionOption,
      Option<Either<SettingsFailure, dynamic>> settingsOption,
      Option<Either<UserFailure, dynamic>> userOption}) = _$_Failure;

  Option<Either<AuthFailure, dynamic>> get authOption;
  Option<Either<DefaultCoversFailure, dynamic>> get defaultCoverOption;
  Option<Either<SessionFailure, dynamic>> get sessionOption;
  Option<Either<SettingsFailure, dynamic>> get settingsOption;
  Option<Either<UserFailure, dynamic>> get userOption;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
abstract class _$GoToHomeCopyWith<$Res> {
  factory _$GoToHomeCopyWith(_GoToHome value, $Res Function(_GoToHome) then) =
      __$GoToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$GoToHomeCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$GoToHomeCopyWith<$Res> {
  __$GoToHomeCopyWithImpl(_GoToHome _value, $Res Function(_GoToHome) _then)
      : super(_value, (v) => _then(v as _GoToHome));

  @override
  _GoToHome get _value => super._value as _GoToHome;
}

/// @nodoc
class _$_GoToHome implements _GoToHome {
  const _$_GoToHome();

  @override
  String toString() {
    return 'SplashState.goToHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GoToHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult failure(
            Option<Either<AuthFailure, dynamic>> authOption,
            Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
            Option<Either<SessionFailure, dynamic>> sessionOption,
            Option<Either<SettingsFailure, dynamic>> settingsOption,
            Option<Either<UserFailure, dynamic>> userOption),
    @required TResult goToHome(),
    @required TResult initial(),
    @required TResult processing(),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return goToHome();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult failure(
        Option<Either<AuthFailure, dynamic>> authOption,
        Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
        Option<Either<SessionFailure, dynamic>> sessionOption,
        Option<Either<SettingsFailure, dynamic>> settingsOption,
        Option<Either<UserFailure, dynamic>> userOption),
    TResult goToHome(),
    TResult initial(),
    TResult processing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (goToHome != null) {
      return goToHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult failure(_Failure value),
    @required TResult goToHome(_GoToHome value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return goToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult failure(_Failure value),
    TResult goToHome(_GoToHome value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (goToHome != null) {
      return goToHome(this);
    }
    return orElse();
  }
}

abstract class _GoToHome implements SplashState {
  const factory _GoToHome() = _$_GoToHome;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult failure(
            Option<Either<AuthFailure, dynamic>> authOption,
            Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
            Option<Either<SessionFailure, dynamic>> sessionOption,
            Option<Either<SettingsFailure, dynamic>> settingsOption,
            Option<Either<UserFailure, dynamic>> userOption),
    @required TResult goToHome(),
    @required TResult initial(),
    @required TResult processing(),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult failure(
        Option<Either<AuthFailure, dynamic>> authOption,
        Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
        Option<Either<SessionFailure, dynamic>> sessionOption,
        Option<Either<SettingsFailure, dynamic>> settingsOption,
        Option<Either<UserFailure, dynamic>> userOption),
    TResult goToHome(),
    TResult initial(),
    TResult processing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult failure(_Failure value),
    @required TResult goToHome(_GoToHome value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult failure(_Failure value),
    TResult goToHome(_GoToHome value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplashState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ProcessingCopyWith<$Res> {
  factory _$ProcessingCopyWith(
          _Processing value, $Res Function(_Processing) then) =
      __$ProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProcessingCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$ProcessingCopyWith<$Res> {
  __$ProcessingCopyWithImpl(
      _Processing _value, $Res Function(_Processing) _then)
      : super(_value, (v) => _then(v as _Processing));

  @override
  _Processing get _value => super._value as _Processing;
}

/// @nodoc
class _$_Processing implements _Processing {
  const _$_Processing();

  @override
  String toString() {
    return 'SplashState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Processing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult failure(
            Option<Either<AuthFailure, dynamic>> authOption,
            Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
            Option<Either<SessionFailure, dynamic>> sessionOption,
            Option<Either<SettingsFailure, dynamic>> settingsOption,
            Option<Either<UserFailure, dynamic>> userOption),
    @required TResult goToHome(),
    @required TResult initial(),
    @required TResult processing(),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult failure(
        Option<Either<AuthFailure, dynamic>> authOption,
        Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
        Option<Either<SessionFailure, dynamic>> sessionOption,
        Option<Either<SettingsFailure, dynamic>> settingsOption,
        Option<Either<UserFailure, dynamic>> userOption),
    TResult goToHome(),
    TResult initial(),
    TResult processing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult failure(_Failure value),
    @required TResult goToHome(_GoToHome value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
  }) {
    assert(failure != null);
    assert(goToHome != null);
    assert(initial != null);
    assert(processing != null);
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult failure(_Failure value),
    TResult goToHome(_GoToHome value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements SplashState {
  const factory _Processing() = _$_Processing;
}
