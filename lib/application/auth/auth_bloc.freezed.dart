// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  AuthChanged authChanged() {
    return const AuthChanged();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authChanged(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authChanged(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authChanged(AuthChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authChanged(AuthChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthChangedCopyWith<$Res> {
  factory $AuthChangedCopyWith(
          AuthChanged value, $Res Function(AuthChanged) then) =
      _$AuthChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthChangedCopyWith<$Res> {
  _$AuthChangedCopyWithImpl(
      AuthChanged _value, $Res Function(AuthChanged) _then)
      : super(_value, (v) => _then(v as AuthChanged));

  @override
  AuthChanged get _value => super._value as AuthChanged;
}

/// @nodoc
class _$AuthChanged implements AuthChanged {
  const _$AuthChanged();

  @override
  String toString() {
    return 'AuthEvent.authChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authChanged(),
  }) {
    assert(authChanged != null);
    return authChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authChanged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authChanged != null) {
      return authChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authChanged(AuthChanged value),
  }) {
    assert(authChanged != null);
    return authChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authChanged(AuthChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authChanged != null) {
      return authChanged(this);
    }
    return orElse();
  }
}

abstract class AuthChanged implements AuthEvent {
  const factory AuthChanged() = _$AuthChanged;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Anonymous anonymous() {
    return const _Anonymous();
  }

// ignore: unused_element
  _Authenticated authenticated() {
    return const _Authenticated();
  }

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult anonymous(),
    @required TResult authenticated(),
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult anonymous(),
    TResult authenticated(),
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult anonymous(_Anonymous value),
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult anonymous(_Anonymous value),
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$AnonymousCopyWith<$Res> {
  factory _$AnonymousCopyWith(
          _Anonymous value, $Res Function(_Anonymous) then) =
      __$AnonymousCopyWithImpl<$Res>;
}

/// @nodoc
class __$AnonymousCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AnonymousCopyWith<$Res> {
  __$AnonymousCopyWithImpl(_Anonymous _value, $Res Function(_Anonymous) _then)
      : super(_value, (v) => _then(v as _Anonymous));

  @override
  _Anonymous get _value => super._value as _Anonymous;
}

/// @nodoc
class _$_Anonymous implements _Anonymous {
  const _$_Anonymous();

  @override
  String toString() {
    return 'AuthState.anonymous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Anonymous);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult anonymous(),
    @required TResult authenticated(),
    @required TResult initial(),
  }) {
    assert(anonymous != null);
    assert(authenticated != null);
    assert(initial != null);
    return anonymous();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult anonymous(),
    TResult authenticated(),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (anonymous != null) {
      return anonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult anonymous(_Anonymous value),
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
  }) {
    assert(anonymous != null);
    assert(authenticated != null);
    assert(initial != null);
    return anonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult anonymous(_Anonymous value),
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (anonymous != null) {
      return anonymous(this);
    }
    return orElse();
  }
}

abstract class _Anonymous implements AuthState {
  const factory _Anonymous() = _$_Anonymous;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult anonymous(),
    @required TResult authenticated(),
    @required TResult initial(),
  }) {
    assert(anonymous != null);
    assert(authenticated != null);
    assert(initial != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult anonymous(),
    TResult authenticated(),
    TResult initial(),
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
    @required TResult anonymous(_Anonymous value),
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
  }) {
    assert(anonymous != null);
    assert(authenticated != null);
    assert(initial != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult anonymous(_Anonymous value),
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required TResult anonymous(),
    @required TResult authenticated(),
    @required TResult initial(),
  }) {
    assert(anonymous != null);
    assert(authenticated != null);
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult anonymous(),
    TResult authenticated(),
    TResult initial(),
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
    @required TResult anonymous(_Anonymous value),
    @required TResult authenticated(_Authenticated value),
    @required TResult initial(_Initial value),
  }) {
    assert(anonymous != null);
    assert(authenticated != null);
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult anonymous(_Anonymous value),
    TResult authenticated(_Authenticated value),
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}
