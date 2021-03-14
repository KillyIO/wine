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
  _Authenticated authenticated(Option<Either<AuthFailure, Unit>> authOption) {
    return _Authenticated(
      authOption,
    );
  }

// ignore: unused_element
  _DefaultCoverURLsCached defaultCoverURLsCached(
      Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption) {
    return _DefaultCoverURLsCached(
      defaultCoverOption,
    );
  }

// ignore: unused_element
  _DefaultCoverURLsLoaded defaultCoverURLsLoaded(
      Option<Either<DefaultCoversFailure, Map<String, String>>>
          defaultCoverOption) {
    return _DefaultCoverURLsLoaded(
      defaultCoverOption,
    );
  }

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Processing processing() {
    return const _Processing();
  }

// ignore: unused_element
  _SessionFetched sessionFetched(
      Option<Either<SessionFailure, User>> sessionOption) {
    return _SessionFetched(
      sessionOption,
    );
  }

// ignore: unused_element
  _ConfigFetched settingsFetched(
      Option<Either<SettingsFailure, Settings>> settingsOption) {
    return _ConfigFetched(
      settingsOption,
    );
  }

// ignore: unused_element
  _UserLoaded userLoaded(Option<Either<UserFailure, User>> userOption) {
    return _UserLoaded(
      userOption,
    );
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
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
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
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, Unit>> authOption});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object authOption = freezed,
  }) {
    return _then(_Authenticated(
      authOption == freezed
          ? _value.authOption
          : authOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.authOption) : assert(authOption != null);

  @override
  final Option<Either<AuthFailure, Unit>> authOption;

  @override
  String toString() {
    return 'SplashState.authenticated(authOption: $authOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.authOption, authOption) ||
                const DeepCollectionEquality()
                    .equals(other.authOption, authOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authOption);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return authenticated(authOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(authOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements SplashState {
  const factory _Authenticated(Option<Either<AuthFailure, Unit>> authOption) =
      _$_Authenticated;

  Option<Either<AuthFailure, Unit>> get authOption;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}

/// @nodoc
abstract class _$DefaultCoverURLsCachedCopyWith<$Res> {
  factory _$DefaultCoverURLsCachedCopyWith(_DefaultCoverURLsCached value,
          $Res Function(_DefaultCoverURLsCached) then) =
      __$DefaultCoverURLsCachedCopyWithImpl<$Res>;
  $Res call({Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption});
}

/// @nodoc
class __$DefaultCoverURLsCachedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$DefaultCoverURLsCachedCopyWith<$Res> {
  __$DefaultCoverURLsCachedCopyWithImpl(_DefaultCoverURLsCached _value,
      $Res Function(_DefaultCoverURLsCached) _then)
      : super(_value, (v) => _then(v as _DefaultCoverURLsCached));

  @override
  _DefaultCoverURLsCached get _value => super._value as _DefaultCoverURLsCached;

  @override
  $Res call({
    Object defaultCoverOption = freezed,
  }) {
    return _then(_DefaultCoverURLsCached(
      defaultCoverOption == freezed
          ? _value.defaultCoverOption
          : defaultCoverOption as Option<Either<DefaultCoversFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_DefaultCoverURLsCached implements _DefaultCoverURLsCached {
  const _$_DefaultCoverURLsCached(this.defaultCoverOption)
      : assert(defaultCoverOption != null);

  @override
  final Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption;

  @override
  String toString() {
    return 'SplashState.defaultCoverURLsCached(defaultCoverOption: $defaultCoverOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DefaultCoverURLsCached &&
            (identical(other.defaultCoverOption, defaultCoverOption) ||
                const DeepCollectionEquality()
                    .equals(other.defaultCoverOption, defaultCoverOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(defaultCoverOption);

  @JsonKey(ignore: true)
  @override
  _$DefaultCoverURLsCachedCopyWith<_DefaultCoverURLsCached> get copyWith =>
      __$DefaultCoverURLsCachedCopyWithImpl<_DefaultCoverURLsCached>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return defaultCoverURLsCached(defaultCoverOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsCached != null) {
      return defaultCoverURLsCached(defaultCoverOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return defaultCoverURLsCached(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsCached != null) {
      return defaultCoverURLsCached(this);
    }
    return orElse();
  }
}

abstract class _DefaultCoverURLsCached implements SplashState {
  const factory _DefaultCoverURLsCached(
          Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption) =
      _$_DefaultCoverURLsCached;

  Option<Either<DefaultCoversFailure, Unit>> get defaultCoverOption;
  @JsonKey(ignore: true)
  _$DefaultCoverURLsCachedCopyWith<_DefaultCoverURLsCached> get copyWith;
}

/// @nodoc
abstract class _$DefaultCoverURLsLoadedCopyWith<$Res> {
  factory _$DefaultCoverURLsLoadedCopyWith(_DefaultCoverURLsLoaded value,
          $Res Function(_DefaultCoverURLsLoaded) then) =
      __$DefaultCoverURLsLoadedCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<DefaultCoversFailure, Map<String, String>>>
          defaultCoverOption});
}

/// @nodoc
class __$DefaultCoverURLsLoadedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$DefaultCoverURLsLoadedCopyWith<$Res> {
  __$DefaultCoverURLsLoadedCopyWithImpl(_DefaultCoverURLsLoaded _value,
      $Res Function(_DefaultCoverURLsLoaded) _then)
      : super(_value, (v) => _then(v as _DefaultCoverURLsLoaded));

  @override
  _DefaultCoverURLsLoaded get _value => super._value as _DefaultCoverURLsLoaded;

  @override
  $Res call({
    Object defaultCoverOption = freezed,
  }) {
    return _then(_DefaultCoverURLsLoaded(
      defaultCoverOption == freezed
          ? _value.defaultCoverOption
          : defaultCoverOption
              as Option<Either<DefaultCoversFailure, Map<String, String>>>,
    ));
  }
}

/// @nodoc
class _$_DefaultCoverURLsLoaded implements _DefaultCoverURLsLoaded {
  const _$_DefaultCoverURLsLoaded(this.defaultCoverOption)
      : assert(defaultCoverOption != null);

  @override
  final Option<Either<DefaultCoversFailure, Map<String, String>>>
      defaultCoverOption;

  @override
  String toString() {
    return 'SplashState.defaultCoverURLsLoaded(defaultCoverOption: $defaultCoverOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DefaultCoverURLsLoaded &&
            (identical(other.defaultCoverOption, defaultCoverOption) ||
                const DeepCollectionEquality()
                    .equals(other.defaultCoverOption, defaultCoverOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(defaultCoverOption);

  @JsonKey(ignore: true)
  @override
  _$DefaultCoverURLsLoadedCopyWith<_DefaultCoverURLsLoaded> get copyWith =>
      __$DefaultCoverURLsLoadedCopyWithImpl<_DefaultCoverURLsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return defaultCoverURLsLoaded(defaultCoverOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsLoaded != null) {
      return defaultCoverURLsLoaded(defaultCoverOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return defaultCoverURLsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultCoverURLsLoaded != null) {
      return defaultCoverURLsLoaded(this);
    }
    return orElse();
  }
}

abstract class _DefaultCoverURLsLoaded implements SplashState {
  const factory _DefaultCoverURLsLoaded(
      Option<Either<DefaultCoversFailure, Map<String, String>>>
          defaultCoverOption) = _$_DefaultCoverURLsLoaded;

  Option<Either<DefaultCoversFailure, Map<String, String>>>
      get defaultCoverOption;
  @JsonKey(ignore: true)
  _$DefaultCoverURLsLoadedCopyWith<_DefaultCoverURLsLoaded> get copyWith;
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
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
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
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
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
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
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
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
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

/// @nodoc
abstract class _$SessionFetchedCopyWith<$Res> {
  factory _$SessionFetchedCopyWith(
          _SessionFetched value, $Res Function(_SessionFetched) then) =
      __$SessionFetchedCopyWithImpl<$Res>;
  $Res call({Option<Either<SessionFailure, User>> sessionOption});
}

/// @nodoc
class __$SessionFetchedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$SessionFetchedCopyWith<$Res> {
  __$SessionFetchedCopyWithImpl(
      _SessionFetched _value, $Res Function(_SessionFetched) _then)
      : super(_value, (v) => _then(v as _SessionFetched));

  @override
  _SessionFetched get _value => super._value as _SessionFetched;

  @override
  $Res call({
    Object sessionOption = freezed,
  }) {
    return _then(_SessionFetched(
      sessionOption == freezed
          ? _value.sessionOption
          : sessionOption as Option<Either<SessionFailure, User>>,
    ));
  }
}

/// @nodoc
class _$_SessionFetched implements _SessionFetched {
  const _$_SessionFetched(this.sessionOption) : assert(sessionOption != null);

  @override
  final Option<Either<SessionFailure, User>> sessionOption;

  @override
  String toString() {
    return 'SplashState.sessionFetched(sessionOption: $sessionOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionFetched &&
            (identical(other.sessionOption, sessionOption) ||
                const DeepCollectionEquality()
                    .equals(other.sessionOption, sessionOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessionOption);

  @JsonKey(ignore: true)
  @override
  _$SessionFetchedCopyWith<_SessionFetched> get copyWith =>
      __$SessionFetchedCopyWithImpl<_SessionFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return sessionFetched(sessionOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetched != null) {
      return sessionFetched(sessionOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class _SessionFetched implements SplashState {
  const factory _SessionFetched(
      Option<Either<SessionFailure, User>> sessionOption) = _$_SessionFetched;

  Option<Either<SessionFailure, User>> get sessionOption;
  @JsonKey(ignore: true)
  _$SessionFetchedCopyWith<_SessionFetched> get copyWith;
}

/// @nodoc
abstract class _$ConfigFetchedCopyWith<$Res> {
  factory _$ConfigFetchedCopyWith(
          _ConfigFetched value, $Res Function(_ConfigFetched) then) =
      __$ConfigFetchedCopyWithImpl<$Res>;
  $Res call({Option<Either<SettingsFailure, Settings>> settingsOption});
}

/// @nodoc
class __$ConfigFetchedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$ConfigFetchedCopyWith<$Res> {
  __$ConfigFetchedCopyWithImpl(
      _ConfigFetched _value, $Res Function(_ConfigFetched) _then)
      : super(_value, (v) => _then(v as _ConfigFetched));

  @override
  _ConfigFetched get _value => super._value as _ConfigFetched;

  @override
  $Res call({
    Object settingsOption = freezed,
  }) {
    return _then(_ConfigFetched(
      settingsOption == freezed
          ? _value.settingsOption
          : settingsOption as Option<Either<SettingsFailure, Settings>>,
    ));
  }
}

/// @nodoc
class _$_ConfigFetched implements _ConfigFetched {
  const _$_ConfigFetched(this.settingsOption) : assert(settingsOption != null);

  @override
  final Option<Either<SettingsFailure, Settings>> settingsOption;

  @override
  String toString() {
    return 'SplashState.settingsFetched(settingsOption: $settingsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigFetched &&
            (identical(other.settingsOption, settingsOption) ||
                const DeepCollectionEquality()
                    .equals(other.settingsOption, settingsOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(settingsOption);

  @JsonKey(ignore: true)
  @override
  _$ConfigFetchedCopyWith<_ConfigFetched> get copyWith =>
      __$ConfigFetchedCopyWithImpl<_ConfigFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return settingsFetched(settingsOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsFetched != null) {
      return settingsFetched(settingsOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return settingsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (settingsFetched != null) {
      return settingsFetched(this);
    }
    return orElse();
  }
}

abstract class _ConfigFetched implements SplashState {
  const factory _ConfigFetched(
          Option<Either<SettingsFailure, Settings>> settingsOption) =
      _$_ConfigFetched;

  Option<Either<SettingsFailure, Settings>> get settingsOption;
  @JsonKey(ignore: true)
  _$ConfigFetchedCopyWith<_ConfigFetched> get copyWith;
}

/// @nodoc
abstract class _$UserLoadedCopyWith<$Res> {
  factory _$UserLoadedCopyWith(
          _UserLoaded value, $Res Function(_UserLoaded) then) =
      __$UserLoadedCopyWithImpl<$Res>;
  $Res call({Option<Either<UserFailure, User>> userOption});
}

/// @nodoc
class __$UserLoadedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$UserLoadedCopyWith<$Res> {
  __$UserLoadedCopyWithImpl(
      _UserLoaded _value, $Res Function(_UserLoaded) _then)
      : super(_value, (v) => _then(v as _UserLoaded));

  @override
  _UserLoaded get _value => super._value as _UserLoaded;

  @override
  $Res call({
    Object userOption = freezed,
  }) {
    return _then(_UserLoaded(
      userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, User>>,
    ));
  }
}

/// @nodoc
class _$_UserLoaded implements _UserLoaded {
  const _$_UserLoaded(this.userOption) : assert(userOption != null);

  @override
  final Option<Either<UserFailure, User>> userOption;

  @override
  String toString() {
    return 'SplashState.userLoaded(userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoaded &&
            (identical(other.userOption, userOption) ||
                const DeepCollectionEquality()
                    .equals(other.userOption, userOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOption);

  @JsonKey(ignore: true)
  @override
  _$UserLoadedCopyWith<_UserLoaded> get copyWith =>
      __$UserLoadedCopyWithImpl<_UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    @required
        TResult defaultCoverURLsCached(
            Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    @required
        TResult defaultCoverURLsLoaded(
            Option<Either<DefaultCoversFailure, Map<String, String>>>
                defaultCoverOption),
    @required TResult initial(),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required
        TResult settingsFetched(
            Option<Either<SettingsFailure, Settings>> settingsOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return userLoaded(userOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(Option<Either<AuthFailure, Unit>> authOption),
    TResult defaultCoverURLsCached(
        Option<Either<DefaultCoversFailure, Unit>> defaultCoverOption),
    TResult defaultCoverURLsLoaded(
        Option<Either<DefaultCoversFailure, Map<String, String>>>
            defaultCoverOption),
    TResult initial(),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult settingsFetched(
        Option<Either<SettingsFailure, Settings>> settingsOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(userOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    @required TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    @required TResult initial(_Initial value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult settingsFetched(_ConfigFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(defaultCoverURLsCached != null);
    assert(defaultCoverURLsLoaded != null);
    assert(initial != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(settingsFetched != null);
    assert(userLoaded != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult defaultCoverURLsCached(_DefaultCoverURLsCached value),
    TResult defaultCoverURLsLoaded(_DefaultCoverURLsLoaded value),
    TResult initial(_Initial value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult settingsFetched(_ConfigFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserLoaded implements SplashState {
  const factory _UserLoaded(Option<Either<UserFailure, User>> userOption) =
      _$_UserLoaded;

  Option<Either<UserFailure, User>> get userOption;
  @JsonKey(ignore: true)
  _$UserLoadedCopyWith<_UserLoaded> get copyWith;
}
