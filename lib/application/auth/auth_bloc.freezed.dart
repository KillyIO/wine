// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authChanged,
    required TResult Function() changedToAnonymous,
    required TResult Function() changedToAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authChanged,
    TResult? Function()? changedToAnonymous,
    TResult? Function()? changedToAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authChanged,
    TResult Function()? changedToAnonymous,
    TResult Function()? changedToAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(ChangedToAnonymous value) changedToAnonymous,
    required TResult Function(ChangedToAuthenticated value)
        changedToAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthChanged value)? authChanged,
    TResult? Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult? Function(ChangedToAuthenticated value)? changedToAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult Function(ChangedToAuthenticated value)? changedToAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthChangedImplCopyWith<$Res> {
  factory _$$AuthChangedImplCopyWith(
          _$AuthChangedImpl value, $Res Function(_$AuthChangedImpl) then) =
      __$$AuthChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthChangedImpl>
    implements _$$AuthChangedImplCopyWith<$Res> {
  __$$AuthChangedImplCopyWithImpl(
      _$AuthChangedImpl _value, $Res Function(_$AuthChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthChangedImpl implements AuthChanged {
  const _$AuthChangedImpl();

  @override
  String toString() {
    return 'AuthEvent.authChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authChanged,
    required TResult Function() changedToAnonymous,
    required TResult Function() changedToAuthenticated,
  }) {
    return authChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authChanged,
    TResult? Function()? changedToAnonymous,
    TResult? Function()? changedToAuthenticated,
  }) {
    return authChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authChanged,
    TResult Function()? changedToAnonymous,
    TResult Function()? changedToAuthenticated,
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
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(ChangedToAnonymous value) changedToAnonymous,
    required TResult Function(ChangedToAuthenticated value)
        changedToAuthenticated,
  }) {
    return authChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthChanged value)? authChanged,
    TResult? Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult? Function(ChangedToAuthenticated value)? changedToAuthenticated,
  }) {
    return authChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult Function(ChangedToAuthenticated value)? changedToAuthenticated,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(this);
    }
    return orElse();
  }
}

abstract class AuthChanged implements AuthEvent {
  const factory AuthChanged() = _$AuthChangedImpl;
}

/// @nodoc
abstract class _$$ChangedToAnonymousImplCopyWith<$Res> {
  factory _$$ChangedToAnonymousImplCopyWith(_$ChangedToAnonymousImpl value,
          $Res Function(_$ChangedToAnonymousImpl) then) =
      __$$ChangedToAnonymousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangedToAnonymousImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangedToAnonymousImpl>
    implements _$$ChangedToAnonymousImplCopyWith<$Res> {
  __$$ChangedToAnonymousImplCopyWithImpl(_$ChangedToAnonymousImpl _value,
      $Res Function(_$ChangedToAnonymousImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangedToAnonymousImpl implements ChangedToAnonymous {
  const _$ChangedToAnonymousImpl();

  @override
  String toString() {
    return 'AuthEvent.changedToAnonymous()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangedToAnonymousImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authChanged,
    required TResult Function() changedToAnonymous,
    required TResult Function() changedToAuthenticated,
  }) {
    return changedToAnonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authChanged,
    TResult? Function()? changedToAnonymous,
    TResult? Function()? changedToAuthenticated,
  }) {
    return changedToAnonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authChanged,
    TResult Function()? changedToAnonymous,
    TResult Function()? changedToAuthenticated,
    required TResult orElse(),
  }) {
    if (changedToAnonymous != null) {
      return changedToAnonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(ChangedToAnonymous value) changedToAnonymous,
    required TResult Function(ChangedToAuthenticated value)
        changedToAuthenticated,
  }) {
    return changedToAnonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthChanged value)? authChanged,
    TResult? Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult? Function(ChangedToAuthenticated value)? changedToAuthenticated,
  }) {
    return changedToAnonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult Function(ChangedToAuthenticated value)? changedToAuthenticated,
    required TResult orElse(),
  }) {
    if (changedToAnonymous != null) {
      return changedToAnonymous(this);
    }
    return orElse();
  }
}

abstract class ChangedToAnonymous implements AuthEvent {
  const factory ChangedToAnonymous() = _$ChangedToAnonymousImpl;
}

/// @nodoc
abstract class _$$ChangedToAuthenticatedImplCopyWith<$Res> {
  factory _$$ChangedToAuthenticatedImplCopyWith(
          _$ChangedToAuthenticatedImpl value,
          $Res Function(_$ChangedToAuthenticatedImpl) then) =
      __$$ChangedToAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangedToAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangedToAuthenticatedImpl>
    implements _$$ChangedToAuthenticatedImplCopyWith<$Res> {
  __$$ChangedToAuthenticatedImplCopyWithImpl(
      _$ChangedToAuthenticatedImpl _value,
      $Res Function(_$ChangedToAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangedToAuthenticatedImpl implements ChangedToAuthenticated {
  const _$ChangedToAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthEvent.changedToAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedToAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authChanged,
    required TResult Function() changedToAnonymous,
    required TResult Function() changedToAuthenticated,
  }) {
    return changedToAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authChanged,
    TResult? Function()? changedToAnonymous,
    TResult? Function()? changedToAuthenticated,
  }) {
    return changedToAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authChanged,
    TResult Function()? changedToAnonymous,
    TResult Function()? changedToAuthenticated,
    required TResult orElse(),
  }) {
    if (changedToAuthenticated != null) {
      return changedToAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChanged value) authChanged,
    required TResult Function(ChangedToAnonymous value) changedToAnonymous,
    required TResult Function(ChangedToAuthenticated value)
        changedToAuthenticated,
  }) {
    return changedToAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthChanged value)? authChanged,
    TResult? Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult? Function(ChangedToAuthenticated value)? changedToAuthenticated,
  }) {
    return changedToAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChanged value)? authChanged,
    TResult Function(ChangedToAnonymous value)? changedToAnonymous,
    TResult Function(ChangedToAuthenticated value)? changedToAuthenticated,
    required TResult orElse(),
  }) {
    if (changedToAuthenticated != null) {
      return changedToAuthenticated(this);
    }
    return orElse();
  }
}

abstract class ChangedToAuthenticated implements AuthEvent {
  const factory ChangedToAuthenticated() = _$ChangedToAuthenticatedImpl;
}

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
    TResult? Function()? anonymous,
    TResult? Function()? authenticated,
    TResult? Function()? initial,
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
    TResult? Function(_Anonymous value)? anonymous,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
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
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AnonymousImplCopyWith<$Res> {
  factory _$$AnonymousImplCopyWith(
          _$AnonymousImpl value, $Res Function(_$AnonymousImpl) then) =
      __$$AnonymousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnonymousImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AnonymousImpl>
    implements _$$AnonymousImplCopyWith<$Res> {
  __$$AnonymousImplCopyWithImpl(
      _$AnonymousImpl _value, $Res Function(_$AnonymousImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnonymousImpl implements _Anonymous {
  const _$AnonymousImpl();

  @override
  String toString() {
    return 'AuthState.anonymous()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnonymousImpl);
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
    TResult? Function()? anonymous,
    TResult? Function()? authenticated,
    TResult? Function()? initial,
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
    TResult? Function(_Anonymous value)? anonymous,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
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
  const factory _Anonymous() = _$AnonymousImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
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
    TResult? Function()? anonymous,
    TResult? Function()? authenticated,
    TResult? Function()? initial,
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
    TResult? Function(_Anonymous value)? anonymous,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
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
  const factory _Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
    TResult? Function()? anonymous,
    TResult? Function()? authenticated,
    TResult? Function()? initial,
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
    TResult? Function(_Anonymous value)? anonymous,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Initial value)? initial,
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
  const factory _Initial() = _$InitialImpl;
}
