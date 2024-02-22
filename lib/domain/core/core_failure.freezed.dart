// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoreFailure {
  Object get f => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(
          CoreFailure value, $Res Function(CoreFailure) then) =
      _$CoreFailureCopyWithImpl<$Res, CoreFailure>;
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res, $Val extends CoreFailure>
    implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthImplCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure f});

  $AuthFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$AuthImpl(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get f {
    return $AuthFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$AuthImpl implements _Auth {
  const _$AuthImpl(this.f);

  @override
  final AuthFailure f;

  @override
  String toString() {
    return 'CoreFailure.auth(f: $f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthImpl &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      __$$AuthImplCopyWithImpl<_$AuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) {
    return auth?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth implements CoreFailure {
  const factory _Auth(final AuthFailure f) = _$AuthImpl;

  @override
  AuthFailure get f;
  @JsonKey(ignore: true)
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BranchFailure f});

  $BranchFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$BranchImpl(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as BranchFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchFailureCopyWith<$Res> get f {
    return $BranchFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$BranchImpl implements _Branch {
  const _$BranchImpl(this.f);

  @override
  final BranchFailure f;

  @override
  String toString() {
    return 'CoreFailure.branch(f: $f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) {
    return branch(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) {
    return branch?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (branch != null) {
      return branch(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) {
    return branch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) {
    return branch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (branch != null) {
      return branch(this);
    }
    return orElse();
  }
}

abstract class _Branch implements CoreFailure {
  const factory _Branch(final BranchFailure f) = _$BranchImpl;

  @override
  BranchFailure get f;
  @JsonKey(ignore: true)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultCoversImplCopyWith<$Res> {
  factory _$$DefaultCoversImplCopyWith(
          _$DefaultCoversImpl value, $Res Function(_$DefaultCoversImpl) then) =
      __$$DefaultCoversImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DefaultCoversFailure f});

  $DefaultCoversFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$DefaultCoversImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$DefaultCoversImpl>
    implements _$$DefaultCoversImplCopyWith<$Res> {
  __$$DefaultCoversImplCopyWithImpl(
      _$DefaultCoversImpl _value, $Res Function(_$DefaultCoversImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$DefaultCoversImpl(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as DefaultCoversFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultCoversFailureCopyWith<$Res> get f {
    return $DefaultCoversFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$DefaultCoversImpl implements _DefaultCovers {
  const _$DefaultCoversImpl(this.f);

  @override
  final DefaultCoversFailure f;

  @override
  String toString() {
    return 'CoreFailure.defaultCovers(f: $f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultCoversImpl &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultCoversImplCopyWith<_$DefaultCoversImpl> get copyWith =>
      __$$DefaultCoversImplCopyWithImpl<_$DefaultCoversImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) {
    return defaultCovers(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) {
    return defaultCovers?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (defaultCovers != null) {
      return defaultCovers(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) {
    return defaultCovers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) {
    return defaultCovers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (defaultCovers != null) {
      return defaultCovers(this);
    }
    return orElse();
  }
}

abstract class _DefaultCovers implements CoreFailure {
  const factory _DefaultCovers(final DefaultCoversFailure f) =
      _$DefaultCoversImpl;

  @override
  DefaultCoversFailure get f;
  @JsonKey(ignore: true)
  _$$DefaultCoversImplCopyWith<_$DefaultCoversImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionsImplCopyWith<$Res> {
  factory _$$SessionsImplCopyWith(
          _$SessionsImpl value, $Res Function(_$SessionsImpl) then) =
      __$$SessionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionsFailure f});

  $SessionsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$SessionsImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$SessionsImpl>
    implements _$$SessionsImplCopyWith<$Res> {
  __$$SessionsImplCopyWithImpl(
      _$SessionsImpl _value, $Res Function(_$SessionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$SessionsImpl(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SessionsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionsFailureCopyWith<$Res> get f {
    return $SessionsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$SessionsImpl implements _Sessions {
  const _$SessionsImpl(this.f);

  @override
  final SessionsFailure f;

  @override
  String toString() {
    return 'CoreFailure.sessions(f: $f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsImpl &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsImplCopyWith<_$SessionsImpl> get copyWith =>
      __$$SessionsImplCopyWithImpl<_$SessionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) {
    return sessions(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) {
    return sessions?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (sessions != null) {
      return sessions(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) {
    return sessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) {
    return sessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (sessions != null) {
      return sessions(this);
    }
    return orElse();
  }
}

abstract class _Sessions implements CoreFailure {
  const factory _Sessions(final SessionsFailure f) = _$SessionsImpl;

  @override
  SessionsFailure get f;
  @JsonKey(ignore: true)
  _$$SessionsImplCopyWith<_$SessionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsImplCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SettingsFailure f});

  $SettingsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$SettingsImpl(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SettingsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsFailureCopyWith<$Res> get f {
    return $SettingsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$SettingsImpl implements _Settings {
  const _$SettingsImpl(this.f);

  @override
  final SettingsFailure f;

  @override
  String toString() {
    return 'CoreFailure.settings(f: $f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) {
    return settings(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) {
    return settings?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) {
    return settings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class _Settings implements CoreFailure {
  const factory _Settings(final SettingsFailure f) = _$SettingsImpl;

  @override
  SettingsFailure get f;
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeImplCopyWith<$Res> {
  factory _$$TreeImplCopyWith(
          _$TreeImpl value, $Res Function(_$TreeImpl) then) =
      __$$TreeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeFailure f});

  $TreeFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$TreeImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$TreeImpl>
    implements _$$TreeImplCopyWith<$Res> {
  __$$TreeImplCopyWithImpl(_$TreeImpl _value, $Res Function(_$TreeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$TreeImpl(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as TreeFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreeFailureCopyWith<$Res> get f {
    return $TreeFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$TreeImpl implements _Tree {
  const _$TreeImpl(this.f);

  @override
  final TreeFailure f;

  @override
  String toString() {
    return 'CoreFailure.tree(f: $f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeImpl &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      __$$TreeImplCopyWithImpl<_$TreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) {
    return tree(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) {
    return tree?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (tree != null) {
      return tree(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) {
    return tree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) {
    return tree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (tree != null) {
      return tree(this);
    }
    return orElse();
  }
}

abstract class _Tree implements CoreFailure {
  const factory _Tree(final TreeFailure f) = _$TreeImpl;

  @override
  TreeFailure get f;
  @JsonKey(ignore: true)
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserFailure f});

  $UserFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$UserImpl(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFailureCopyWith<$Res> get f {
    return $UserFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(this.f);

  @override
  final UserFailure f;

  @override
  String toString() {
    return 'CoreFailure.user(f: $f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFailure f) auth,
    required TResult Function(BranchFailure f) branch,
    required TResult Function(DefaultCoversFailure f) defaultCovers,
    required TResult Function(SessionsFailure f) sessions,
    required TResult Function(SettingsFailure f) settings,
    required TResult Function(TreeFailure f) tree,
    required TResult Function(UserFailure f) user,
  }) {
    return user(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthFailure f)? auth,
    TResult? Function(BranchFailure f)? branch,
    TResult? Function(DefaultCoversFailure f)? defaultCovers,
    TResult? Function(SessionsFailure f)? sessions,
    TResult? Function(SettingsFailure f)? settings,
    TResult? Function(TreeFailure f)? tree,
    TResult? Function(UserFailure f)? user,
  }) {
    return user?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth value) auth,
    required TResult Function(_Branch value) branch,
    required TResult Function(_DefaultCovers value) defaultCovers,
    required TResult Function(_Sessions value) sessions,
    required TResult Function(_Settings value) settings,
    required TResult Function(_Tree value) tree,
    required TResult Function(_User value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Branch value)? branch,
    TResult? Function(_DefaultCovers value)? defaultCovers,
    TResult? Function(_Sessions value)? sessions,
    TResult? Function(_Settings value)? settings,
    TResult? Function(_Tree value)? tree,
    TResult? Function(_User value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements CoreFailure {
  const factory _User(final UserFailure f) = _$UserImpl;

  @override
  UserFailure get f;
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
