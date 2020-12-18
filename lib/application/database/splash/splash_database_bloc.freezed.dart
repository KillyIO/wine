// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SplashDatabaseEventTearOff {
  const _$SplashDatabaseEventTearOff();

// ignore: unused_element
  AuthenticatedEVT authenticatedEVT({@required bool isAnonymous}) {
    return AuthenticatedEVT(
      isAnonymous: isAnonymous,
    );
  }

// ignore: unused_element
  ConfigFetchedEVT configFetchedEVT() {
    return const ConfigFetchedEVT();
  }

// ignore: unused_element
  PlaceholdersInitializedEVT placeholdersInitializedEVT() {
    return const PlaceholdersInitializedEVT();
  }

// ignore: unused_element
  PlaceholdersLoadedEVT placeholdersLoadedEVT(
      Map<String, String> placeholders) {
    return PlaceholdersLoadedEVT(
      placeholders,
    );
  }

// ignore: unused_element
  SessionFetchedEVT sessionFetchedEVT(Session session) {
    return SessionFetchedEVT(
      session,
    );
  }

// ignore: unused_element
  UserLoadedEVT userLoadedEVT(User user) {
    return UserLoadedEVT(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SplashDatabaseEvent = _$SplashDatabaseEventTearOff();

/// @nodoc
mixin _$SplashDatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticatedEVT(bool isAnonymous),
    @required TResult configFetchedEVT(),
    @required TResult placeholdersInitializedEVT(),
    @required TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    @required TResult sessionFetchedEVT(Session session),
    @required TResult userLoadedEVT(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticatedEVT(bool isAnonymous),
    TResult configFetchedEVT(),
    TResult placeholdersInitializedEVT(),
    TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    TResult sessionFetchedEVT(Session session),
    TResult userLoadedEVT(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticatedEVT(AuthenticatedEVT value),
    @required TResult configFetchedEVT(ConfigFetchedEVT value),
    @required
        TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    @required TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult userLoadedEVT(UserLoadedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticatedEVT(AuthenticatedEVT value),
    TResult configFetchedEVT(ConfigFetchedEVT value),
    TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult userLoadedEVT(UserLoadedEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashDatabaseEventCopyWith<$Res> {
  factory $SplashDatabaseEventCopyWith(
          SplashDatabaseEvent value, $Res Function(SplashDatabaseEvent) then) =
      _$SplashDatabaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $SplashDatabaseEventCopyWith<$Res> {
  _$SplashDatabaseEventCopyWithImpl(this._value, this._then);

  final SplashDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SplashDatabaseEvent) _then;
}

/// @nodoc
abstract class $AuthenticatedEVTCopyWith<$Res> {
  factory $AuthenticatedEVTCopyWith(
          AuthenticatedEVT value, $Res Function(AuthenticatedEVT) then) =
      _$AuthenticatedEVTCopyWithImpl<$Res>;
  $Res call({bool isAnonymous});
}

/// @nodoc
class _$AuthenticatedEVTCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $AuthenticatedEVTCopyWith<$Res> {
  _$AuthenticatedEVTCopyWithImpl(
      AuthenticatedEVT _value, $Res Function(AuthenticatedEVT) _then)
      : super(_value, (v) => _then(v as AuthenticatedEVT));

  @override
  AuthenticatedEVT get _value => super._value as AuthenticatedEVT;

  @override
  $Res call({
    Object isAnonymous = freezed,
  }) {
    return _then(AuthenticatedEVT(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
    ));
  }
}

/// @nodoc
class _$AuthenticatedEVT implements AuthenticatedEVT {
  const _$AuthenticatedEVT({@required this.isAnonymous})
      : assert(isAnonymous != null);

  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'SplashDatabaseEvent.authenticatedEVT(isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticatedEVT &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isAnonymous);

  @override
  $AuthenticatedEVTCopyWith<AuthenticatedEVT> get copyWith =>
      _$AuthenticatedEVTCopyWithImpl<AuthenticatedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticatedEVT(bool isAnonymous),
    @required TResult configFetchedEVT(),
    @required TResult placeholdersInitializedEVT(),
    @required TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    @required TResult sessionFetchedEVT(Session session),
    @required TResult userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return authenticatedEVT(isAnonymous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticatedEVT(bool isAnonymous),
    TResult configFetchedEVT(),
    TResult placeholdersInitializedEVT(),
    TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    TResult sessionFetchedEVT(Session session),
    TResult userLoadedEVT(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticatedEVT != null) {
      return authenticatedEVT(isAnonymous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticatedEVT(AuthenticatedEVT value),
    @required TResult configFetchedEVT(ConfigFetchedEVT value),
    @required
        TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    @required TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return authenticatedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticatedEVT(AuthenticatedEVT value),
    TResult configFetchedEVT(ConfigFetchedEVT value),
    TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult userLoadedEVT(UserLoadedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticatedEVT != null) {
      return authenticatedEVT(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedEVT implements SplashDatabaseEvent {
  const factory AuthenticatedEVT({@required bool isAnonymous}) =
      _$AuthenticatedEVT;

  bool get isAnonymous;
  $AuthenticatedEVTCopyWith<AuthenticatedEVT> get copyWith;
}

/// @nodoc
abstract class $ConfigFetchedEVTCopyWith<$Res> {
  factory $ConfigFetchedEVTCopyWith(
          ConfigFetchedEVT value, $Res Function(ConfigFetchedEVT) then) =
      _$ConfigFetchedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfigFetchedEVTCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $ConfigFetchedEVTCopyWith<$Res> {
  _$ConfigFetchedEVTCopyWithImpl(
      ConfigFetchedEVT _value, $Res Function(ConfigFetchedEVT) _then)
      : super(_value, (v) => _then(v as ConfigFetchedEVT));

  @override
  ConfigFetchedEVT get _value => super._value as ConfigFetchedEVT;
}

/// @nodoc
class _$ConfigFetchedEVT implements ConfigFetchedEVT {
  const _$ConfigFetchedEVT();

  @override
  String toString() {
    return 'SplashDatabaseEvent.configFetchedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfigFetchedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticatedEVT(bool isAnonymous),
    @required TResult configFetchedEVT(),
    @required TResult placeholdersInitializedEVT(),
    @required TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    @required TResult sessionFetchedEVT(Session session),
    @required TResult userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return configFetchedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticatedEVT(bool isAnonymous),
    TResult configFetchedEVT(),
    TResult placeholdersInitializedEVT(),
    TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    TResult sessionFetchedEVT(Session session),
    TResult userLoadedEVT(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetchedEVT != null) {
      return configFetchedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticatedEVT(AuthenticatedEVT value),
    @required TResult configFetchedEVT(ConfigFetchedEVT value),
    @required
        TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    @required TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return configFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticatedEVT(AuthenticatedEVT value),
    TResult configFetchedEVT(ConfigFetchedEVT value),
    TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult userLoadedEVT(UserLoadedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (configFetchedEVT != null) {
      return configFetchedEVT(this);
    }
    return orElse();
  }
}

abstract class ConfigFetchedEVT implements SplashDatabaseEvent {
  const factory ConfigFetchedEVT() = _$ConfigFetchedEVT;
}

/// @nodoc
abstract class $PlaceholdersInitializedEVTCopyWith<$Res> {
  factory $PlaceholdersInitializedEVTCopyWith(PlaceholdersInitializedEVT value,
          $Res Function(PlaceholdersInitializedEVT) then) =
      _$PlaceholdersInitializedEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceholdersInitializedEVTCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $PlaceholdersInitializedEVTCopyWith<$Res> {
  _$PlaceholdersInitializedEVTCopyWithImpl(PlaceholdersInitializedEVT _value,
      $Res Function(PlaceholdersInitializedEVT) _then)
      : super(_value, (v) => _then(v as PlaceholdersInitializedEVT));

  @override
  PlaceholdersInitializedEVT get _value =>
      super._value as PlaceholdersInitializedEVT;
}

/// @nodoc
class _$PlaceholdersInitializedEVT implements PlaceholdersInitializedEVT {
  const _$PlaceholdersInitializedEVT();

  @override
  String toString() {
    return 'SplashDatabaseEvent.placeholdersInitializedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlaceholdersInitializedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticatedEVT(bool isAnonymous),
    @required TResult configFetchedEVT(),
    @required TResult placeholdersInitializedEVT(),
    @required TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    @required TResult sessionFetchedEVT(Session session),
    @required TResult userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersInitializedEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticatedEVT(bool isAnonymous),
    TResult configFetchedEVT(),
    TResult placeholdersInitializedEVT(),
    TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    TResult sessionFetchedEVT(Session session),
    TResult userLoadedEVT(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersInitializedEVT != null) {
      return placeholdersInitializedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticatedEVT(AuthenticatedEVT value),
    @required TResult configFetchedEVT(ConfigFetchedEVT value),
    @required
        TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    @required TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersInitializedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticatedEVT(AuthenticatedEVT value),
    TResult configFetchedEVT(ConfigFetchedEVT value),
    TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult userLoadedEVT(UserLoadedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersInitializedEVT != null) {
      return placeholdersInitializedEVT(this);
    }
    return orElse();
  }
}

abstract class PlaceholdersInitializedEVT implements SplashDatabaseEvent {
  const factory PlaceholdersInitializedEVT() = _$PlaceholdersInitializedEVT;
}

/// @nodoc
abstract class $PlaceholdersLoadedEVTCopyWith<$Res> {
  factory $PlaceholdersLoadedEVTCopyWith(PlaceholdersLoadedEVT value,
          $Res Function(PlaceholdersLoadedEVT) then) =
      _$PlaceholdersLoadedEVTCopyWithImpl<$Res>;
  $Res call({Map<String, String> placeholders});
}

/// @nodoc
class _$PlaceholdersLoadedEVTCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $PlaceholdersLoadedEVTCopyWith<$Res> {
  _$PlaceholdersLoadedEVTCopyWithImpl(
      PlaceholdersLoadedEVT _value, $Res Function(PlaceholdersLoadedEVT) _then)
      : super(_value, (v) => _then(v as PlaceholdersLoadedEVT));

  @override
  PlaceholdersLoadedEVT get _value => super._value as PlaceholdersLoadedEVT;

  @override
  $Res call({
    Object placeholders = freezed,
  }) {
    return _then(PlaceholdersLoadedEVT(
      placeholders == freezed
          ? _value.placeholders
          : placeholders as Map<String, String>,
    ));
  }
}

/// @nodoc
class _$PlaceholdersLoadedEVT implements PlaceholdersLoadedEVT {
  const _$PlaceholdersLoadedEVT(this.placeholders)
      : assert(placeholders != null);

  @override
  final Map<String, String> placeholders;

  @override
  String toString() {
    return 'SplashDatabaseEvent.placeholdersLoadedEVT(placeholders: $placeholders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceholdersLoadedEVT &&
            (identical(other.placeholders, placeholders) ||
                const DeepCollectionEquality()
                    .equals(other.placeholders, placeholders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(placeholders);

  @override
  $PlaceholdersLoadedEVTCopyWith<PlaceholdersLoadedEVT> get copyWith =>
      _$PlaceholdersLoadedEVTCopyWithImpl<PlaceholdersLoadedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticatedEVT(bool isAnonymous),
    @required TResult configFetchedEVT(),
    @required TResult placeholdersInitializedEVT(),
    @required TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    @required TResult sessionFetchedEVT(Session session),
    @required TResult userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersLoadedEVT(placeholders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticatedEVT(bool isAnonymous),
    TResult configFetchedEVT(),
    TResult placeholdersInitializedEVT(),
    TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    TResult sessionFetchedEVT(Session session),
    TResult userLoadedEVT(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersLoadedEVT != null) {
      return placeholdersLoadedEVT(placeholders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticatedEVT(AuthenticatedEVT value),
    @required TResult configFetchedEVT(ConfigFetchedEVT value),
    @required
        TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    @required TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticatedEVT(AuthenticatedEVT value),
    TResult configFetchedEVT(ConfigFetchedEVT value),
    TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult userLoadedEVT(UserLoadedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersLoadedEVT != null) {
      return placeholdersLoadedEVT(this);
    }
    return orElse();
  }
}

abstract class PlaceholdersLoadedEVT implements SplashDatabaseEvent {
  const factory PlaceholdersLoadedEVT(Map<String, String> placeholders) =
      _$PlaceholdersLoadedEVT;

  Map<String, String> get placeholders;
  $PlaceholdersLoadedEVTCopyWith<PlaceholdersLoadedEVT> get copyWith;
}

/// @nodoc
abstract class $SessionFetchedEVTCopyWith<$Res> {
  factory $SessionFetchedEVTCopyWith(
          SessionFetchedEVT value, $Res Function(SessionFetchedEVT) then) =
      _$SessionFetchedEVTCopyWithImpl<$Res>;
  $Res call({Session session});
}

/// @nodoc
class _$SessionFetchedEVTCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $SessionFetchedEVTCopyWith<$Res> {
  _$SessionFetchedEVTCopyWithImpl(
      SessionFetchedEVT _value, $Res Function(SessionFetchedEVT) _then)
      : super(_value, (v) => _then(v as SessionFetchedEVT));

  @override
  SessionFetchedEVT get _value => super._value as SessionFetchedEVT;

  @override
  $Res call({
    Object session = freezed,
  }) {
    return _then(SessionFetchedEVT(
      session == freezed ? _value.session : session as Session,
    ));
  }
}

/// @nodoc
class _$SessionFetchedEVT implements SessionFetchedEVT {
  const _$SessionFetchedEVT(this.session) : assert(session != null);

  @override
  final Session session;

  @override
  String toString() {
    return 'SplashDatabaseEvent.sessionFetchedEVT(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionFetchedEVT &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(session);

  @override
  $SessionFetchedEVTCopyWith<SessionFetchedEVT> get copyWith =>
      _$SessionFetchedEVTCopyWithImpl<SessionFetchedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticatedEVT(bool isAnonymous),
    @required TResult configFetchedEVT(),
    @required TResult placeholdersInitializedEVT(),
    @required TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    @required TResult sessionFetchedEVT(Session session),
    @required TResult userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return sessionFetchedEVT(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticatedEVT(bool isAnonymous),
    TResult configFetchedEVT(),
    TResult placeholdersInitializedEVT(),
    TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    TResult sessionFetchedEVT(Session session),
    TResult userLoadedEVT(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticatedEVT(AuthenticatedEVT value),
    @required TResult configFetchedEVT(ConfigFetchedEVT value),
    @required
        TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    @required TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return sessionFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticatedEVT(AuthenticatedEVT value),
    TResult configFetchedEVT(ConfigFetchedEVT value),
    TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult userLoadedEVT(UserLoadedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(this);
    }
    return orElse();
  }
}

abstract class SessionFetchedEVT implements SplashDatabaseEvent {
  const factory SessionFetchedEVT(Session session) = _$SessionFetchedEVT;

  Session get session;
  $SessionFetchedEVTCopyWith<SessionFetchedEVT> get copyWith;
}

/// @nodoc
abstract class $UserLoadedEVTCopyWith<$Res> {
  factory $UserLoadedEVTCopyWith(
          UserLoadedEVT value, $Res Function(UserLoadedEVT) then) =
      _$UserLoadedEVTCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserLoadedEVTCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $UserLoadedEVTCopyWith<$Res> {
  _$UserLoadedEVTCopyWithImpl(
      UserLoadedEVT _value, $Res Function(UserLoadedEVT) _then)
      : super(_value, (v) => _then(v as UserLoadedEVT));

  @override
  UserLoadedEVT get _value => super._value as UserLoadedEVT;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserLoadedEVT(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$UserLoadedEVT implements UserLoadedEVT {
  const _$UserLoadedEVT(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SplashDatabaseEvent.userLoadedEVT(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoadedEVT &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UserLoadedEVTCopyWith<UserLoadedEVT> get copyWith =>
      _$UserLoadedEVTCopyWithImpl<UserLoadedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authenticatedEVT(bool isAnonymous),
    @required TResult configFetchedEVT(),
    @required TResult placeholdersInitializedEVT(),
    @required TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    @required TResult sessionFetchedEVT(Session session),
    @required TResult userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return userLoadedEVT(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authenticatedEVT(bool isAnonymous),
    TResult configFetchedEVT(),
    TResult placeholdersInitializedEVT(),
    TResult placeholdersLoadedEVT(Map<String, String> placeholders),
    TResult sessionFetchedEVT(Session session),
    TResult userLoadedEVT(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoadedEVT != null) {
      return userLoadedEVT(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authenticatedEVT(AuthenticatedEVT value),
    @required TResult configFetchedEVT(ConfigFetchedEVT value),
    @required
        TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    @required TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required TResult sessionFetchedEVT(SessionFetchedEVT value),
    @required TResult userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(configFetchedEVT != null);
    assert(placeholdersInitializedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return userLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authenticatedEVT(AuthenticatedEVT value),
    TResult configFetchedEVT(ConfigFetchedEVT value),
    TResult placeholdersInitializedEVT(PlaceholdersInitializedEVT value),
    TResult placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    TResult sessionFetchedEVT(SessionFetchedEVT value),
    TResult userLoadedEVT(UserLoadedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoadedEVT != null) {
      return userLoadedEVT(this);
    }
    return orElse();
  }
}

abstract class UserLoadedEVT implements SplashDatabaseEvent {
  const factory UserLoadedEVT(User user) = _$UserLoadedEVT;

  User get user;
  $UserLoadedEVTCopyWith<UserLoadedEVT> get copyWith;
}

/// @nodoc
class _$SplashDatabaseStateTearOff {
  const _$SplashDatabaseStateTearOff();

// ignore: unused_element
  _SplashDatabaseState call(
      {@required
          bool isAnonymous,
      @required
          bool isUpdating,
      @required
          Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
              configDatabaseFailureOrSuccessOption,
      @required
          Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
              placeholderDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, UserDatabaseSuccess>>
              userDatabaseFailureOrSuccessOption}) {
    return _SplashDatabaseState(
      isAnonymous: isAnonymous,
      isUpdating: isUpdating,
      configDatabaseFailureOrSuccessOption:
          configDatabaseFailureOrSuccessOption,
      placeholderDatabaseFailureOrSuccessOption:
          placeholderDatabaseFailureOrSuccessOption,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption,
      userDatabaseFailureOrSuccessOption: userDatabaseFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SplashDatabaseState = _$SplashDatabaseStateTearOff();

/// @nodoc
mixin _$SplashDatabaseState {
  bool get isAnonymous;
  bool get isUpdating;
  Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      get configDatabaseFailureOrSuccessOption;
  Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      get placeholderDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  Option<Either<DatabaseFailure, UserDatabaseSuccess>>
      get userDatabaseFailureOrSuccessOption;

  $SplashDatabaseStateCopyWith<SplashDatabaseState> get copyWith;
}

/// @nodoc
abstract class $SplashDatabaseStateCopyWith<$Res> {
  factory $SplashDatabaseStateCopyWith(
          SplashDatabaseState value, $Res Function(SplashDatabaseState) then) =
      _$SplashDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAnonymous,
      bool isUpdating,
      Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
          configDatabaseFailureOrSuccessOption,
      Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
          placeholderDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, UserDatabaseSuccess>>
          userDatabaseFailureOrSuccessOption});
}

/// @nodoc
class _$SplashDatabaseStateCopyWithImpl<$Res>
    implements $SplashDatabaseStateCopyWith<$Res> {
  _$SplashDatabaseStateCopyWithImpl(this._value, this._then);

  final SplashDatabaseState _value;
  // ignore: unused_field
  final $Res Function(SplashDatabaseState) _then;

  @override
  $Res call({
    Object isAnonymous = freezed,
    Object isUpdating = freezed,
    Object configDatabaseFailureOrSuccessOption = freezed,
    Object placeholderDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object userDatabaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      configDatabaseFailureOrSuccessOption:
          configDatabaseFailureOrSuccessOption == freezed
              ? _value.configDatabaseFailureOrSuccessOption
              : configDatabaseFailureOrSuccessOption as Option<
                  Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>,
      placeholderDatabaseFailureOrSuccessOption:
          placeholderDatabaseFailureOrSuccessOption == freezed
              ? _value.placeholderDatabaseFailureOrSuccessOption
              : placeholderDatabaseFailureOrSuccessOption as Option<
                  Either<PlaceholderDatabaseFailure,
                      PlaceholderDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      userDatabaseFailureOrSuccessOption:
          userDatabaseFailureOrSuccessOption == freezed
              ? _value.userDatabaseFailureOrSuccessOption
              : userDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, UserDatabaseSuccess>>,
    ));
  }
}

/// @nodoc
abstract class _$SplashDatabaseStateCopyWith<$Res>
    implements $SplashDatabaseStateCopyWith<$Res> {
  factory _$SplashDatabaseStateCopyWith(_SplashDatabaseState value,
          $Res Function(_SplashDatabaseState) then) =
      __$SplashDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAnonymous,
      bool isUpdating,
      Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
          configDatabaseFailureOrSuccessOption,
      Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
          placeholderDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
          sessionDatabaseFailureOrSuccessOption,
      Option<Either<DatabaseFailure, UserDatabaseSuccess>>
          userDatabaseFailureOrSuccessOption});
}

/// @nodoc
class __$SplashDatabaseStateCopyWithImpl<$Res>
    extends _$SplashDatabaseStateCopyWithImpl<$Res>
    implements _$SplashDatabaseStateCopyWith<$Res> {
  __$SplashDatabaseStateCopyWithImpl(
      _SplashDatabaseState _value, $Res Function(_SplashDatabaseState) _then)
      : super(_value, (v) => _then(v as _SplashDatabaseState));

  @override
  _SplashDatabaseState get _value => super._value as _SplashDatabaseState;

  @override
  $Res call({
    Object isAnonymous = freezed,
    Object isUpdating = freezed,
    Object configDatabaseFailureOrSuccessOption = freezed,
    Object placeholderDatabaseFailureOrSuccessOption = freezed,
    Object sessionDatabaseFailureOrSuccessOption = freezed,
    Object userDatabaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_SplashDatabaseState(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      configDatabaseFailureOrSuccessOption:
          configDatabaseFailureOrSuccessOption == freezed
              ? _value.configDatabaseFailureOrSuccessOption
              : configDatabaseFailureOrSuccessOption as Option<
                  Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>,
      placeholderDatabaseFailureOrSuccessOption:
          placeholderDatabaseFailureOrSuccessOption == freezed
              ? _value.placeholderDatabaseFailureOrSuccessOption
              : placeholderDatabaseFailureOrSuccessOption as Option<
                  Either<PlaceholderDatabaseFailure,
                      PlaceholderDatabaseSuccess>>,
      sessionDatabaseFailureOrSuccessOption:
          sessionDatabaseFailureOrSuccessOption == freezed
              ? _value.sessionDatabaseFailureOrSuccessOption
              : sessionDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, SessionDatabaseSuccess>>,
      userDatabaseFailureOrSuccessOption:
          userDatabaseFailureOrSuccessOption == freezed
              ? _value.userDatabaseFailureOrSuccessOption
              : userDatabaseFailureOrSuccessOption
                  as Option<Either<DatabaseFailure, UserDatabaseSuccess>>,
    ));
  }
}

/// @nodoc
class _$_SplashDatabaseState implements _SplashDatabaseState {
  const _$_SplashDatabaseState(
      {@required this.isAnonymous,
      @required this.isUpdating,
      @required this.configDatabaseFailureOrSuccessOption,
      @required this.placeholderDatabaseFailureOrSuccessOption,
      @required this.sessionDatabaseFailureOrSuccessOption,
      @required this.userDatabaseFailureOrSuccessOption})
      : assert(isAnonymous != null),
        assert(isUpdating != null),
        assert(configDatabaseFailureOrSuccessOption != null),
        assert(placeholderDatabaseFailureOrSuccessOption != null),
        assert(sessionDatabaseFailureOrSuccessOption != null),
        assert(userDatabaseFailureOrSuccessOption != null);

  @override
  final bool isAnonymous;
  @override
  final bool isUpdating;
  @override
  final Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      configDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      placeholderDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      sessionDatabaseFailureOrSuccessOption;
  @override
  final Option<Either<DatabaseFailure, UserDatabaseSuccess>>
      userDatabaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplashDatabaseState(isAnonymous: $isAnonymous, isUpdating: $isUpdating, configDatabaseFailureOrSuccessOption: $configDatabaseFailureOrSuccessOption, placeholderDatabaseFailureOrSuccessOption: $placeholderDatabaseFailureOrSuccessOption, sessionDatabaseFailureOrSuccessOption: $sessionDatabaseFailureOrSuccessOption, userDatabaseFailureOrSuccessOption: $userDatabaseFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashDatabaseState &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)) &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(other.configDatabaseFailureOrSuccessOption,
                    configDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.configDatabaseFailureOrSuccessOption,
                    configDatabaseFailureOrSuccessOption)) &&
            (identical(other.placeholderDatabaseFailureOrSuccessOption,
                    placeholderDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.placeholderDatabaseFailureOrSuccessOption,
                    placeholderDatabaseFailureOrSuccessOption)) &&
            (identical(other.sessionDatabaseFailureOrSuccessOption,
                    sessionDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.sessionDatabaseFailureOrSuccessOption,
                    sessionDatabaseFailureOrSuccessOption)) &&
            (identical(other.userDatabaseFailureOrSuccessOption,
                    userDatabaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.userDatabaseFailureOrSuccessOption,
                    userDatabaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAnonymous) ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality()
          .hash(configDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(placeholderDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(sessionDatabaseFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(userDatabaseFailureOrSuccessOption);

  @override
  _$SplashDatabaseStateCopyWith<_SplashDatabaseState> get copyWith =>
      __$SplashDatabaseStateCopyWithImpl<_SplashDatabaseState>(
          this, _$identity);
}

abstract class _SplashDatabaseState implements SplashDatabaseState {
  const factory _SplashDatabaseState(
      {@required
          bool isAnonymous,
      @required
          bool isUpdating,
      @required
          Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
              configDatabaseFailureOrSuccessOption,
      @required
          Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
              placeholderDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
              sessionDatabaseFailureOrSuccessOption,
      @required
          Option<Either<DatabaseFailure, UserDatabaseSuccess>>
              userDatabaseFailureOrSuccessOption}) = _$_SplashDatabaseState;

  @override
  bool get isAnonymous;
  @override
  bool get isUpdating;
  @override
  Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
      get configDatabaseFailureOrSuccessOption;
  @override
  Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      get placeholderDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
      get sessionDatabaseFailureOrSuccessOption;
  @override
  Option<Either<DatabaseFailure, UserDatabaseSuccess>>
      get userDatabaseFailureOrSuccessOption;
  @override
  _$SplashDatabaseStateCopyWith<_SplashDatabaseState> get copyWith;
}
