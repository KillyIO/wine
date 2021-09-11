// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  Anonymous anonymous() {
    return const Anonymous();
  }

  AuthChanged authChanged() {
    return const AuthChanged();
  }

  Authenticated authenticated() {
    return const Authenticated();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authChanged,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Anonymous value) anonymous,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
abstract class $AnonymousCopyWith<$Res> {
  factory $AnonymousCopyWith(Anonymous value, $Res Function(Anonymous) then) =
      _$AnonymousCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnonymousCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AnonymousCopyWith<$Res> {
  _$AnonymousCopyWithImpl(Anonymous _value, $Res Function(Anonymous) _then)
      : super(_value, (v) => _then(v as Anonymous));

  @override
  Anonymous get _value => super._value as Anonymous;
}

/// @nodoc

class _$Anonymous implements Anonymous {
  const _$Anonymous();

  @override
  String toString() {
    return 'AuthEvent.anonymous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Anonymous);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authChanged,
    required TResult Function() authenticated,
  }) {
    return anonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
  }) {
    return anonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Anonymous value) anonymous,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return anonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return anonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous(this);
    }
    return orElse();
  }
}

abstract class Anonymous implements AuthEvent {
  const factory Anonymous() = _$Anonymous;
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
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authChanged,
    required TResult Function() authenticated,
  }) {
    return authChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
  }) {
    return authChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Anonymous value) anonymous,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return authChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
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
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
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
    return 'AuthEvent.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authChanged,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authChanged,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Anonymous value) anonymous,
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Anonymous value)? anonymous,
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthEvent {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Anonymous anonymous() {
    return const _Anonymous();
  }

  _Authenticated authenticated() {
    return const _Authenticated();
  }

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authenticated,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Anonymous value) anonymous,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authenticated,
    required TResult Function() initial,
  }) {
    return anonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
  }) {
    return anonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Anonymous value) anonymous,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
  }) {
    return anonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
  }) {
    return anonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authenticated,
    required TResult Function() initial,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Anonymous value) anonymous,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() authenticated,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? authenticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Anonymous value) anonymous,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Anonymous value)? anonymous,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}
