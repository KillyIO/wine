// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'splash_database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashDatabaseEventTearOff {
  const _$SplashDatabaseEventTearOff();

  AuthenticatedEVT authenticatedEVT({@required bool isAnonymous}) {
    return AuthenticatedEVT(
      isAnonymous: isAnonymous,
    );
  }

  PlaceholdersLoadedEVT placeholdersLoadedEVT(
      Map<String, String> placeholders) {
    return PlaceholdersLoadedEVT(
      placeholders,
    );
  }

  PlaceholdersSavedEVT placeholdersSavedEVT() {
    return const PlaceholdersSavedEVT();
  }

  SessionFetchedEVT sessionFetchedEVT(Session session) {
    return SessionFetchedEVT(
      session,
    );
  }

  UserLoadedEVT userLoadedEVT(User user) {
    return UserLoadedEVT(
      user,
    );
  }
}

// ignore: unused_element
const $SplashDatabaseEvent = _$SplashDatabaseEventTearOff();

mixin _$SplashDatabaseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticatedEVT(bool isAnonymous),
    @required Result placeholdersLoadedEVT(Map<String, String> placeholders),
    @required Result placeholdersSavedEVT(),
    @required Result sessionFetchedEVT(Session session),
    @required Result userLoadedEVT(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticatedEVT(bool isAnonymous),
    Result placeholdersLoadedEVT(Map<String, String> placeholders),
    Result placeholdersSavedEVT(),
    Result sessionFetchedEVT(Session session),
    Result userLoadedEVT(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticatedEVT(AuthenticatedEVT value),
    @required Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result userLoadedEVT(UserLoadedEVT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticatedEVT(AuthenticatedEVT value),
    Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result userLoadedEVT(UserLoadedEVT value),
    @required Result orElse(),
  });
}

abstract class $SplashDatabaseEventCopyWith<$Res> {
  factory $SplashDatabaseEventCopyWith(
          SplashDatabaseEvent value, $Res Function(SplashDatabaseEvent) then) =
      _$SplashDatabaseEventCopyWithImpl<$Res>;
}

class _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $SplashDatabaseEventCopyWith<$Res> {
  _$SplashDatabaseEventCopyWithImpl(this._value, this._then);

  final SplashDatabaseEvent _value;
  // ignore: unused_field
  final $Res Function(SplashDatabaseEvent) _then;
}

abstract class $AuthenticatedEVTCopyWith<$Res> {
  factory $AuthenticatedEVTCopyWith(
          AuthenticatedEVT value, $Res Function(AuthenticatedEVT) then) =
      _$AuthenticatedEVTCopyWithImpl<$Res>;
  $Res call({bool isAnonymous});
}

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
  Result when<Result extends Object>({
    @required Result authenticatedEVT(bool isAnonymous),
    @required Result placeholdersLoadedEVT(Map<String, String> placeholders),
    @required Result placeholdersSavedEVT(),
    @required Result sessionFetchedEVT(Session session),
    @required Result userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return authenticatedEVT(isAnonymous);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticatedEVT(bool isAnonymous),
    Result placeholdersLoadedEVT(Map<String, String> placeholders),
    Result placeholdersSavedEVT(),
    Result sessionFetchedEVT(Session session),
    Result userLoadedEVT(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticatedEVT != null) {
      return authenticatedEVT(isAnonymous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticatedEVT(AuthenticatedEVT value),
    @required Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return authenticatedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticatedEVT(AuthenticatedEVT value),
    Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result userLoadedEVT(UserLoadedEVT value),
    @required Result orElse(),
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

abstract class $PlaceholdersLoadedEVTCopyWith<$Res> {
  factory $PlaceholdersLoadedEVTCopyWith(PlaceholdersLoadedEVT value,
          $Res Function(PlaceholdersLoadedEVT) then) =
      _$PlaceholdersLoadedEVTCopyWithImpl<$Res>;
  $Res call({Map<String, String> placeholders});
}

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
  Result when<Result extends Object>({
    @required Result authenticatedEVT(bool isAnonymous),
    @required Result placeholdersLoadedEVT(Map<String, String> placeholders),
    @required Result placeholdersSavedEVT(),
    @required Result sessionFetchedEVT(Session session),
    @required Result userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersLoadedEVT(placeholders);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticatedEVT(bool isAnonymous),
    Result placeholdersLoadedEVT(Map<String, String> placeholders),
    Result placeholdersSavedEVT(),
    Result sessionFetchedEVT(Session session),
    Result userLoadedEVT(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersLoadedEVT != null) {
      return placeholdersLoadedEVT(placeholders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticatedEVT(AuthenticatedEVT value),
    @required Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticatedEVT(AuthenticatedEVT value),
    Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result userLoadedEVT(UserLoadedEVT value),
    @required Result orElse(),
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

abstract class $PlaceholdersSavedEVTCopyWith<$Res> {
  factory $PlaceholdersSavedEVTCopyWith(PlaceholdersSavedEVT value,
          $Res Function(PlaceholdersSavedEVT) then) =
      _$PlaceholdersSavedEVTCopyWithImpl<$Res>;
}

class _$PlaceholdersSavedEVTCopyWithImpl<$Res>
    extends _$SplashDatabaseEventCopyWithImpl<$Res>
    implements $PlaceholdersSavedEVTCopyWith<$Res> {
  _$PlaceholdersSavedEVTCopyWithImpl(
      PlaceholdersSavedEVT _value, $Res Function(PlaceholdersSavedEVT) _then)
      : super(_value, (v) => _then(v as PlaceholdersSavedEVT));

  @override
  PlaceholdersSavedEVT get _value => super._value as PlaceholdersSavedEVT;
}

class _$PlaceholdersSavedEVT implements PlaceholdersSavedEVT {
  const _$PlaceholdersSavedEVT();

  @override
  String toString() {
    return 'SplashDatabaseEvent.placeholdersSavedEVT()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlaceholdersSavedEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticatedEVT(bool isAnonymous),
    @required Result placeholdersLoadedEVT(Map<String, String> placeholders),
    @required Result placeholdersSavedEVT(),
    @required Result sessionFetchedEVT(Session session),
    @required Result userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersSavedEVT();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticatedEVT(bool isAnonymous),
    Result placeholdersLoadedEVT(Map<String, String> placeholders),
    Result placeholdersSavedEVT(),
    Result sessionFetchedEVT(Session session),
    Result userLoadedEVT(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersSavedEVT != null) {
      return placeholdersSavedEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticatedEVT(AuthenticatedEVT value),
    @required Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return placeholdersSavedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticatedEVT(AuthenticatedEVT value),
    Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result userLoadedEVT(UserLoadedEVT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (placeholdersSavedEVT != null) {
      return placeholdersSavedEVT(this);
    }
    return orElse();
  }
}

abstract class PlaceholdersSavedEVT implements SplashDatabaseEvent {
  const factory PlaceholdersSavedEVT() = _$PlaceholdersSavedEVT;
}

abstract class $SessionFetchedEVTCopyWith<$Res> {
  factory $SessionFetchedEVTCopyWith(
          SessionFetchedEVT value, $Res Function(SessionFetchedEVT) then) =
      _$SessionFetchedEVTCopyWithImpl<$Res>;
  $Res call({Session session});
}

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
  Result when<Result extends Object>({
    @required Result authenticatedEVT(bool isAnonymous),
    @required Result placeholdersLoadedEVT(Map<String, String> placeholders),
    @required Result placeholdersSavedEVT(),
    @required Result sessionFetchedEVT(Session session),
    @required Result userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return sessionFetchedEVT(session);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticatedEVT(bool isAnonymous),
    Result placeholdersLoadedEVT(Map<String, String> placeholders),
    Result placeholdersSavedEVT(),
    Result sessionFetchedEVT(Session session),
    Result userLoadedEVT(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sessionFetchedEVT != null) {
      return sessionFetchedEVT(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticatedEVT(AuthenticatedEVT value),
    @required Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return sessionFetchedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticatedEVT(AuthenticatedEVT value),
    Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result userLoadedEVT(UserLoadedEVT value),
    @required Result orElse(),
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

abstract class $UserLoadedEVTCopyWith<$Res> {
  factory $UserLoadedEVTCopyWith(
          UserLoadedEVT value, $Res Function(UserLoadedEVT) then) =
      _$UserLoadedEVTCopyWithImpl<$Res>;
  $Res call({User user});
}

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
  Result when<Result extends Object>({
    @required Result authenticatedEVT(bool isAnonymous),
    @required Result placeholdersLoadedEVT(Map<String, String> placeholders),
    @required Result placeholdersSavedEVT(),
    @required Result sessionFetchedEVT(Session session),
    @required Result userLoadedEVT(User user),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return userLoadedEVT(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticatedEVT(bool isAnonymous),
    Result placeholdersLoadedEVT(Map<String, String> placeholders),
    Result placeholdersSavedEVT(),
    Result sessionFetchedEVT(Session session),
    Result userLoadedEVT(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userLoadedEVT != null) {
      return userLoadedEVT(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticatedEVT(AuthenticatedEVT value),
    @required Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    @required Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    @required Result sessionFetchedEVT(SessionFetchedEVT value),
    @required Result userLoadedEVT(UserLoadedEVT value),
  }) {
    assert(authenticatedEVT != null);
    assert(placeholdersLoadedEVT != null);
    assert(placeholdersSavedEVT != null);
    assert(sessionFetchedEVT != null);
    assert(userLoadedEVT != null);
    return userLoadedEVT(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticatedEVT(AuthenticatedEVT value),
    Result placeholdersLoadedEVT(PlaceholdersLoadedEVT value),
    Result placeholdersSavedEVT(PlaceholdersSavedEVT value),
    Result sessionFetchedEVT(SessionFetchedEVT value),
    Result userLoadedEVT(UserLoadedEVT value),
    @required Result orElse(),
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

class _$SplashDatabaseStateTearOff {
  const _$SplashDatabaseStateTearOff();

  _SplashDatabaseState call(
      {@required
          bool isAnonymous,
      @required
          bool isUpdating,
      @required
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) {
    return _SplashDatabaseState(
      isAnonymous: isAnonymous,
      isUpdating: isUpdating,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SplashDatabaseState = _$SplashDatabaseStateTearOff();

mixin _$SplashDatabaseState {
  bool get isAnonymous;
  bool get isUpdating;
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;

  $SplashDatabaseStateCopyWith<SplashDatabaseState> get copyWith;
}

abstract class $SplashDatabaseStateCopyWith<$Res> {
  factory $SplashDatabaseStateCopyWith(
          SplashDatabaseState value, $Res Function(SplashDatabaseState) then) =
      _$SplashDatabaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAnonymous,
      bool isUpdating,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
}

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
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
    ));
  }
}

abstract class _$SplashDatabaseStateCopyWith<$Res>
    implements $SplashDatabaseStateCopyWith<$Res> {
  factory _$SplashDatabaseStateCopyWith(_SplashDatabaseState value,
          $Res Function(_SplashDatabaseState) then) =
      __$SplashDatabaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAnonymous,
      bool isUpdating,
      Option<Either<DatabaseFailure, DatabaseSuccess>>
          databaseFailureOrSuccessOption});
}

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
    Object databaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_SplashDatabaseState(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      databaseFailureOrSuccessOption: databaseFailureOrSuccessOption == freezed
          ? _value.databaseFailureOrSuccessOption
          : databaseFailureOrSuccessOption
              as Option<Either<DatabaseFailure, DatabaseSuccess>>,
    ));
  }
}

class _$_SplashDatabaseState implements _SplashDatabaseState {
  const _$_SplashDatabaseState(
      {@required this.isAnonymous,
      @required this.isUpdating,
      @required this.databaseFailureOrSuccessOption})
      : assert(isAnonymous != null),
        assert(isUpdating != null),
        assert(databaseFailureOrSuccessOption != null);

  @override
  final bool isAnonymous;
  @override
  final bool isUpdating;
  @override
  final Option<Either<DatabaseFailure, DatabaseSuccess>>
      databaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplashDatabaseState(isAnonymous: $isAnonymous, isUpdating: $isUpdating, databaseFailureOrSuccessOption: $databaseFailureOrSuccessOption)';
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
            (identical(other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.databaseFailureOrSuccessOption,
                    databaseFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAnonymous) ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(databaseFailureOrSuccessOption);

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
          Option<Either<DatabaseFailure, DatabaseSuccess>>
              databaseFailureOrSuccessOption}) = _$_SplashDatabaseState;

  @override
  bool get isAnonymous;
  @override
  bool get isUpdating;
  @override
  Option<Either<DatabaseFailure, DatabaseSuccess>>
      get databaseFailureOrSuccessOption;
  @override
  _$SplashDatabaseStateCopyWith<_SplashDatabaseState> get copyWith;
}
