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
  PlaceholdersCached placeholdersCached() {
    return const PlaceholdersCached();
  }

// ignore: unused_element
  PlaceholdersLoaded placeholdersLoaded(Map<String, String> placeholders) {
    return PlaceholdersLoaded(
      placeholders,
    );
  }

// ignore: unused_element
  SessionFetched sessionFetched(User session) {
    return SessionFetched(
      session,
    );
  }

// ignore: unused_element
  SettingsInitialized settingsInitialized() {
    return const SettingsInitialized();
  }

// ignore: unused_element
  SplashPageLaunched splashPageLaunched() {
    return const SplashPageLaunched();
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
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
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
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
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
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
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
abstract class $PlaceholdersCachedCopyWith<$Res> {
  factory $PlaceholdersCachedCopyWith(
          PlaceholdersCached value, $Res Function(PlaceholdersCached) then) =
      _$PlaceholdersCachedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceholdersCachedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $PlaceholdersCachedCopyWith<$Res> {
  _$PlaceholdersCachedCopyWithImpl(
      PlaceholdersCached _value, $Res Function(PlaceholdersCached) _then)
      : super(_value, (v) => _then(v as PlaceholdersCached));

  @override
  PlaceholdersCached get _value => super._value as PlaceholdersCached;
}

/// @nodoc
class _$PlaceholdersCached implements PlaceholdersCached {
  const _$PlaceholdersCached();

  @override
  String toString() {
    return 'SplashEvent.placeholdersCached()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlaceholdersCached);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return placeholdersCached();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersCached != null) {
      return placeholdersCached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return placeholdersCached(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersCached != null) {
      return placeholdersCached(this);
    }
    return orElse();
  }
}

abstract class PlaceholdersCached implements SplashEvent {
  const factory PlaceholdersCached() = _$PlaceholdersCached;
}

/// @nodoc
abstract class $PlaceholdersLoadedCopyWith<$Res> {
  factory $PlaceholdersLoadedCopyWith(
          PlaceholdersLoaded value, $Res Function(PlaceholdersLoaded) then) =
      _$PlaceholdersLoadedCopyWithImpl<$Res>;
  $Res call({Map<String, String> placeholders});
}

/// @nodoc
class _$PlaceholdersLoadedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $PlaceholdersLoadedCopyWith<$Res> {
  _$PlaceholdersLoadedCopyWithImpl(
      PlaceholdersLoaded _value, $Res Function(PlaceholdersLoaded) _then)
      : super(_value, (v) => _then(v as PlaceholdersLoaded));

  @override
  PlaceholdersLoaded get _value => super._value as PlaceholdersLoaded;

  @override
  $Res call({
    Object placeholders = freezed,
  }) {
    return _then(PlaceholdersLoaded(
      placeholders == freezed
          ? _value.placeholders
          : placeholders as Map<String, String>,
    ));
  }
}

/// @nodoc
class _$PlaceholdersLoaded implements PlaceholdersLoaded {
  const _$PlaceholdersLoaded(this.placeholders) : assert(placeholders != null);

  @override
  final Map<String, String> placeholders;

  @override
  String toString() {
    return 'SplashEvent.placeholdersLoaded(placeholders: $placeholders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceholdersLoaded &&
            (identical(other.placeholders, placeholders) ||
                const DeepCollectionEquality()
                    .equals(other.placeholders, placeholders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(placeholders);

  @JsonKey(ignore: true)
  @override
  $PlaceholdersLoadedCopyWith<PlaceholdersLoaded> get copyWith =>
      _$PlaceholdersLoadedCopyWithImpl<PlaceholdersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticated(),
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return placeholdersLoaded(placeholders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
    TResult userLoaded(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersLoaded != null) {
      return placeholdersLoaded(placeholders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(Authenticated value),
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return placeholdersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
    TResult userLoaded(UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersLoaded != null) {
      return placeholdersLoaded(this);
    }
    return orElse();
  }
}

abstract class PlaceholdersLoaded implements SplashEvent {
  const factory PlaceholdersLoaded(Map<String, String> placeholders) =
      _$PlaceholdersLoaded;

  Map<String, String> get placeholders;
  @JsonKey(ignore: true)
  $PlaceholdersLoadedCopyWith<PlaceholdersLoaded> get copyWith;
}

/// @nodoc
abstract class $SessionFetchedCopyWith<$Res> {
  factory $SessionFetchedCopyWith(
          SessionFetched value, $Res Function(SessionFetched) then) =
      _$SessionFetchedCopyWithImpl<$Res>;
  $Res call({User session});
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
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return sessionFetched(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
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
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
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
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return settingsInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
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
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return settingsInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
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
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return splashPageLaunched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
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
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return splashPageLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
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
abstract class $UserLoadedCopyWith<$Res> {
  factory $UserLoadedCopyWith(
          UserLoaded value, $Res Function(UserLoaded) then) =
      _$UserLoadedCopyWithImpl<$Res>;
  $Res call({User user});
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
    @required TResult placeholdersCached(),
    @required TResult placeholdersLoaded(Map<String, String> placeholders),
    @required TResult sessionFetched(User session),
    @required TResult settingsInitialized(),
    @required TResult splashPageLaunched(),
    @required TResult userLoaded(User user),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(),
    TResult placeholdersCached(),
    TResult placeholdersLoaded(Map<String, String> placeholders),
    TResult sessionFetched(User session),
    TResult settingsInitialized(),
    TResult splashPageLaunched(),
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
    @required TResult placeholdersCached(PlaceholdersCached value),
    @required TResult placeholdersLoaded(PlaceholdersLoaded value),
    @required TResult sessionFetched(SessionFetched value),
    @required TResult settingsInitialized(SettingsInitialized value),
    @required TResult splashPageLaunched(SplashPageLaunched value),
    @required TResult userLoaded(UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(sessionFetched != null);
    assert(settingsInitialized != null);
    assert(splashPageLaunched != null);
    assert(userLoaded != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(Authenticated value),
    TResult placeholdersCached(PlaceholdersCached value),
    TResult placeholdersLoaded(PlaceholdersLoaded value),
    TResult sessionFetched(SessionFetched value),
    TResult settingsInitialized(SettingsInitialized value),
    TResult splashPageLaunched(SplashPageLaunched value),
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
  _Authenticated authenticated(
      Option<Either<AuthenticationFailure, Unit>> authenticationOption) {
    return _Authenticated(
      authenticationOption,
    );
  }

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ConfigFetched configFetched(
      Option<Either<ConfigFailure, Config>> configOption) {
    return _ConfigFetched(
      configOption,
    );
  }

// ignore: unused_element
  _PlaceholdersCached placeholdersCached(
      Option<Either<PlaceholderFailure, Unit>> palceholderOption) {
    return _PlaceholdersCached(
      palceholderOption,
    );
  }

// ignore: unused_element
  _PlaceholdersLoaded placeholdersLoaded(
      Option<Either<PlaceholderFailure, Map<String, String>>>
          palceholderOption) {
    return _PlaceholdersLoaded(
      palceholderOption,
    );
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
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
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
  $Res call({Option<Either<AuthenticationFailure, Unit>> authenticationOption});
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
    Object authenticationOption = freezed,
  }) {
    return _then(_Authenticated(
      authenticationOption == freezed
          ? _value.authenticationOption
          : authenticationOption as Option<Either<AuthenticationFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.authenticationOption)
      : assert(authenticationOption != null);

  @override
  final Option<Either<AuthenticationFailure, Unit>> authenticationOption;

  @override
  String toString() {
    return 'SplashState.authenticated(authenticationOption: $authenticationOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.authenticationOption, authenticationOption) ||
                const DeepCollectionEquality()
                    .equals(other.authenticationOption, authenticationOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authenticationOption);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return authenticated(authenticationOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(authenticationOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
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
  const factory _Authenticated(
          Option<Either<AuthenticationFailure, Unit>> authenticationOption) =
      _$_Authenticated;

  Option<Either<AuthenticationFailure, Unit>> get authenticationOption;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
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
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
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
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
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
abstract class _$ConfigFetchedCopyWith<$Res> {
  factory _$ConfigFetchedCopyWith(
          _ConfigFetched value, $Res Function(_ConfigFetched) then) =
      __$ConfigFetchedCopyWithImpl<$Res>;
  $Res call({Option<Either<ConfigFailure, Config>> configOption});
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
    Object configOption = freezed,
  }) {
    return _then(_ConfigFetched(
      configOption == freezed
          ? _value.configOption
          : configOption as Option<Either<ConfigFailure, Config>>,
    ));
  }
}

/// @nodoc
class _$_ConfigFetched implements _ConfigFetched {
  const _$_ConfigFetched(this.configOption) : assert(configOption != null);

  @override
  final Option<Either<ConfigFailure, Config>> configOption;

  @override
  String toString() {
    return 'SplashState.configFetched(configOption: $configOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigFetched &&
            (identical(other.configOption, configOption) ||
                const DeepCollectionEquality()
                    .equals(other.configOption, configOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(configOption);

  @JsonKey(ignore: true)
  @override
  _$ConfigFetchedCopyWith<_ConfigFetched> get copyWith =>
      __$ConfigFetchedCopyWithImpl<_ConfigFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return configFetched(configOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetched != null) {
      return configFetched(configOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return configFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetched != null) {
      return configFetched(this);
    }
    return orElse();
  }
}

abstract class _ConfigFetched implements SplashState {
  const factory _ConfigFetched(
      Option<Either<ConfigFailure, Config>> configOption) = _$_ConfigFetched;

  Option<Either<ConfigFailure, Config>> get configOption;
  @JsonKey(ignore: true)
  _$ConfigFetchedCopyWith<_ConfigFetched> get copyWith;
}

/// @nodoc
abstract class _$PlaceholdersCachedCopyWith<$Res> {
  factory _$PlaceholdersCachedCopyWith(
          _PlaceholdersCached value, $Res Function(_PlaceholdersCached) then) =
      __$PlaceholdersCachedCopyWithImpl<$Res>;
  $Res call({Option<Either<PlaceholderFailure, Unit>> palceholderOption});
}

/// @nodoc
class __$PlaceholdersCachedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$PlaceholdersCachedCopyWith<$Res> {
  __$PlaceholdersCachedCopyWithImpl(
      _PlaceholdersCached _value, $Res Function(_PlaceholdersCached) _then)
      : super(_value, (v) => _then(v as _PlaceholdersCached));

  @override
  _PlaceholdersCached get _value => super._value as _PlaceholdersCached;

  @override
  $Res call({
    Object palceholderOption = freezed,
  }) {
    return _then(_PlaceholdersCached(
      palceholderOption == freezed
          ? _value.palceholderOption
          : palceholderOption as Option<Either<PlaceholderFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PlaceholdersCached implements _PlaceholdersCached {
  const _$_PlaceholdersCached(this.palceholderOption)
      : assert(palceholderOption != null);

  @override
  final Option<Either<PlaceholderFailure, Unit>> palceholderOption;

  @override
  String toString() {
    return 'SplashState.placeholdersCached(palceholderOption: $palceholderOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceholdersCached &&
            (identical(other.palceholderOption, palceholderOption) ||
                const DeepCollectionEquality()
                    .equals(other.palceholderOption, palceholderOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(palceholderOption);

  @JsonKey(ignore: true)
  @override
  _$PlaceholdersCachedCopyWith<_PlaceholdersCached> get copyWith =>
      __$PlaceholdersCachedCopyWithImpl<_PlaceholdersCached>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return placeholdersCached(palceholderOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersCached != null) {
      return placeholdersCached(palceholderOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return placeholdersCached(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersCached != null) {
      return placeholdersCached(this);
    }
    return orElse();
  }
}

abstract class _PlaceholdersCached implements SplashState {
  const factory _PlaceholdersCached(
          Option<Either<PlaceholderFailure, Unit>> palceholderOption) =
      _$_PlaceholdersCached;

  Option<Either<PlaceholderFailure, Unit>> get palceholderOption;
  @JsonKey(ignore: true)
  _$PlaceholdersCachedCopyWith<_PlaceholdersCached> get copyWith;
}

/// @nodoc
abstract class _$PlaceholdersLoadedCopyWith<$Res> {
  factory _$PlaceholdersLoadedCopyWith(
          _PlaceholdersLoaded value, $Res Function(_PlaceholdersLoaded) then) =
      __$PlaceholdersLoadedCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<PlaceholderFailure, Map<String, String>>>
          palceholderOption});
}

/// @nodoc
class __$PlaceholdersLoadedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$PlaceholdersLoadedCopyWith<$Res> {
  __$PlaceholdersLoadedCopyWithImpl(
      _PlaceholdersLoaded _value, $Res Function(_PlaceholdersLoaded) _then)
      : super(_value, (v) => _then(v as _PlaceholdersLoaded));

  @override
  _PlaceholdersLoaded get _value => super._value as _PlaceholdersLoaded;

  @override
  $Res call({
    Object palceholderOption = freezed,
  }) {
    return _then(_PlaceholdersLoaded(
      palceholderOption == freezed
          ? _value.palceholderOption
          : palceholderOption
              as Option<Either<PlaceholderFailure, Map<String, String>>>,
    ));
  }
}

/// @nodoc
class _$_PlaceholdersLoaded implements _PlaceholdersLoaded {
  const _$_PlaceholdersLoaded(this.palceholderOption)
      : assert(palceholderOption != null);

  @override
  final Option<Either<PlaceholderFailure, Map<String, String>>>
      palceholderOption;

  @override
  String toString() {
    return 'SplashState.placeholdersLoaded(palceholderOption: $palceholderOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceholdersLoaded &&
            (identical(other.palceholderOption, palceholderOption) ||
                const DeepCollectionEquality()
                    .equals(other.palceholderOption, palceholderOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(palceholderOption);

  @JsonKey(ignore: true)
  @override
  _$PlaceholdersLoadedCopyWith<_PlaceholdersLoaded> get copyWith =>
      __$PlaceholdersLoadedCopyWithImpl<_PlaceholdersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return placeholdersLoaded(palceholderOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
    TResult userLoaded(Option<Either<UserFailure, User>> userOption),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersLoaded != null) {
      return placeholdersLoaded(palceholderOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return placeholdersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
    TResult userLoaded(_UserLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersLoaded != null) {
      return placeholdersLoaded(this);
    }
    return orElse();
  }
}

abstract class _PlaceholdersLoaded implements SplashState {
  const factory _PlaceholdersLoaded(
      Option<Either<PlaceholderFailure, Map<String, String>>>
          palceholderOption) = _$_PlaceholdersLoaded;

  Option<Either<PlaceholderFailure, Map<String, String>>> get palceholderOption;
  @JsonKey(ignore: true)
  _$PlaceholdersLoadedCopyWith<_PlaceholdersLoaded> get copyWith;
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
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
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
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
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
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return sessionFetched(sessionOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
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
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
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
        TResult authenticated(
            Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    @required TResult initial(),
    @required
        TResult configFetched(
            Option<Either<ConfigFailure, Config>> configOption),
    @required
        TResult placeholdersCached(
            Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    @required
        TResult placeholdersLoaded(
            Option<Either<PlaceholderFailure, Map<String, String>>>
                palceholderOption),
    @required TResult processing(),
    @required
        TResult sessionFetched(
            Option<Either<SessionFailure, User>> sessionOption),
    @required TResult userLoaded(Option<Either<UserFailure, User>> userOption),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return userLoaded(userOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticated(
        Option<Either<AuthenticationFailure, Unit>> authenticationOption),
    TResult initial(),
    TResult configFetched(Option<Either<ConfigFailure, Config>> configOption),
    TResult placeholdersCached(
        Option<Either<PlaceholderFailure, Unit>> palceholderOption),
    TResult placeholdersLoaded(
        Option<Either<PlaceholderFailure, Map<String, String>>>
            palceholderOption),
    TResult processing(),
    TResult sessionFetched(Option<Either<SessionFailure, User>> sessionOption),
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
    @required TResult initial(_Initial value),
    @required TResult configFetched(_ConfigFetched value),
    @required TResult placeholdersCached(_PlaceholdersCached value),
    @required TResult placeholdersLoaded(_PlaceholdersLoaded value),
    @required TResult processing(_Processing value),
    @required TResult sessionFetched(_SessionFetched value),
    @required TResult userLoaded(_UserLoaded value),
  }) {
    assert(authenticated != null);
    assert(initial != null);
    assert(configFetched != null);
    assert(placeholdersCached != null);
    assert(placeholdersLoaded != null);
    assert(processing != null);
    assert(sessionFetched != null);
    assert(userLoaded != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    TResult configFetched(_ConfigFetched value),
    TResult placeholdersCached(_PlaceholdersCached value),
    TResult placeholdersLoaded(_PlaceholdersLoaded value),
    TResult processing(_Processing value),
    TResult sessionFetched(_SessionFetched value),
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
