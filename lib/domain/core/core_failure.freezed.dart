// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreFailure {
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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
      _$CoreFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res> implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  final CoreFailure _value;
  // ignore: unused_field
  final $Res Function(CoreFailure) _then;
}

/// @nodoc
abstract class _$$_AuthCopyWith<$Res> {
  factory _$$_AuthCopyWith(_$_Auth value, $Res Function(_$_Auth) then) =
      __$$_AuthCopyWithImpl<$Res>;
  $Res call({AuthFailure f});

  $AuthFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_AuthCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$_AuthCopyWith<$Res> {
  __$$_AuthCopyWithImpl(_$_Auth _value, $Res Function(_$_Auth) _then)
      : super(_value, (v) => _then(v as _$_Auth));

  @override
  _$_Auth get _value => super._value as _$_Auth;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Auth(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get f {
    return $AuthFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Auth implements _Auth {
  const _$_Auth(this.f);

  @override
  final AuthFailure f;

  @override
  String toString() {
    return 'CoreFailure.auth(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Auth &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_AuthCopyWith<_$_Auth> get copyWith =>
      __$$_AuthCopyWithImpl<_$_Auth>(this, _$identity);

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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
  const factory _Auth(final AuthFailure f) = _$_Auth;

  AuthFailure get f;
  @JsonKey(ignore: true)
  _$$_AuthCopyWith<_$_Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BranchCopyWith<$Res> {
  factory _$$_BranchCopyWith(_$_Branch value, $Res Function(_$_Branch) then) =
      __$$_BranchCopyWithImpl<$Res>;
  $Res call({BranchFailure f});

  $BranchFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_BranchCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$_BranchCopyWith<$Res> {
  __$$_BranchCopyWithImpl(_$_Branch _value, $Res Function(_$_Branch) _then)
      : super(_value, (v) => _then(v as _$_Branch));

  @override
  _$_Branch get _value => super._value as _$_Branch;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Branch(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as BranchFailure,
    ));
  }

  @override
  $BranchFailureCopyWith<$Res> get f {
    return $BranchFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Branch implements _Branch {
  const _$_Branch(this.f);

  @override
  final BranchFailure f;

  @override
  String toString() {
    return 'CoreFailure.branch(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Branch &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_BranchCopyWith<_$_Branch> get copyWith =>
      __$$_BranchCopyWithImpl<_$_Branch>(this, _$identity);

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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
  const factory _Branch(final BranchFailure f) = _$_Branch;

  BranchFailure get f;
  @JsonKey(ignore: true)
  _$$_BranchCopyWith<_$_Branch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DefaultCoversCopyWith<$Res> {
  factory _$$_DefaultCoversCopyWith(
          _$_DefaultCovers value, $Res Function(_$_DefaultCovers) then) =
      __$$_DefaultCoversCopyWithImpl<$Res>;
  $Res call({DefaultCoversFailure f});

  $DefaultCoversFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_DefaultCoversCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$_DefaultCoversCopyWith<$Res> {
  __$$_DefaultCoversCopyWithImpl(
      _$_DefaultCovers _value, $Res Function(_$_DefaultCovers) _then)
      : super(_value, (v) => _then(v as _$_DefaultCovers));

  @override
  _$_DefaultCovers get _value => super._value as _$_DefaultCovers;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_DefaultCovers(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as DefaultCoversFailure,
    ));
  }

  @override
  $DefaultCoversFailureCopyWith<$Res> get f {
    return $DefaultCoversFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_DefaultCovers implements _DefaultCovers {
  const _$_DefaultCovers(this.f);

  @override
  final DefaultCoversFailure f;

  @override
  String toString() {
    return 'CoreFailure.defaultCovers(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultCovers &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_DefaultCoversCopyWith<_$_DefaultCovers> get copyWith =>
      __$$_DefaultCoversCopyWithImpl<_$_DefaultCovers>(this, _$identity);

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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
  const factory _DefaultCovers(final DefaultCoversFailure f) = _$_DefaultCovers;

  DefaultCoversFailure get f;
  @JsonKey(ignore: true)
  _$$_DefaultCoversCopyWith<_$_DefaultCovers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SessionsCopyWith<$Res> {
  factory _$$_SessionsCopyWith(
          _$_Sessions value, $Res Function(_$_Sessions) then) =
      __$$_SessionsCopyWithImpl<$Res>;
  $Res call({SessionsFailure f});

  $SessionsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_SessionsCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$_SessionsCopyWith<$Res> {
  __$$_SessionsCopyWithImpl(
      _$_Sessions _value, $Res Function(_$_Sessions) _then)
      : super(_value, (v) => _then(v as _$_Sessions));

  @override
  _$_Sessions get _value => super._value as _$_Sessions;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Sessions(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SessionsFailure,
    ));
  }

  @override
  $SessionsFailureCopyWith<$Res> get f {
    return $SessionsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Sessions implements _Sessions {
  const _$_Sessions(this.f);

  @override
  final SessionsFailure f;

  @override
  String toString() {
    return 'CoreFailure.sessions(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sessions &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_SessionsCopyWith<_$_Sessions> get copyWith =>
      __$$_SessionsCopyWithImpl<_$_Sessions>(this, _$identity);

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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
  const factory _Sessions(final SessionsFailure f) = _$_Sessions;

  SessionsFailure get f;
  @JsonKey(ignore: true)
  _$$_SessionsCopyWith<_$_Sessions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  $Res call({SettingsFailure f});

  $SettingsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, (v) => _then(v as _$_Settings));

  @override
  _$_Settings get _value => super._value as _$_Settings;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Settings(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SettingsFailure,
    ));
  }

  @override
  $SettingsFailureCopyWith<$Res> get f {
    return $SettingsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings(this.f);

  @override
  final SettingsFailure f;

  @override
  String toString() {
    return 'CoreFailure.settings(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);

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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
  const factory _Settings(final SettingsFailure f) = _$_Settings;

  SettingsFailure get f;
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TreeCopyWith<$Res> {
  factory _$$_TreeCopyWith(_$_Tree value, $Res Function(_$_Tree) then) =
      __$$_TreeCopyWithImpl<$Res>;
  $Res call({TreeFailure f});

  $TreeFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_TreeCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$_TreeCopyWith<$Res> {
  __$$_TreeCopyWithImpl(_$_Tree _value, $Res Function(_$_Tree) _then)
      : super(_value, (v) => _then(v as _$_Tree));

  @override
  _$_Tree get _value => super._value as _$_Tree;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Tree(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as TreeFailure,
    ));
  }

  @override
  $TreeFailureCopyWith<$Res> get f {
    return $TreeFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Tree implements _Tree {
  const _$_Tree(this.f);

  @override
  final TreeFailure f;

  @override
  String toString() {
    return 'CoreFailure.tree(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tree &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_TreeCopyWith<_$_Tree> get copyWith =>
      __$$_TreeCopyWithImpl<_$_Tree>(this, _$identity);

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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
  const factory _Tree(final TreeFailure f) = _$_Tree;

  TreeFailure get f;
  @JsonKey(ignore: true)
  _$$_TreeCopyWith<_$_Tree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  $Res call({UserFailure f});

  $UserFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_User(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get f {
    return $UserFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(this.f);

  @override
  final UserFailure f;

  @override
  String toString() {
    return 'CoreFailure.user(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

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
    TResult Function(AuthFailure f)? auth,
    TResult Function(BranchFailure f)? branch,
    TResult Function(DefaultCoversFailure f)? defaultCovers,
    TResult Function(SessionsFailure f)? sessions,
    TResult Function(SettingsFailure f)? settings,
    TResult Function(TreeFailure f)? tree,
    TResult Function(UserFailure f)? user,
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
    TResult Function(_Auth value)? auth,
    TResult Function(_Branch value)? branch,
    TResult Function(_DefaultCovers value)? defaultCovers,
    TResult Function(_Sessions value)? sessions,
    TResult Function(_Settings value)? settings,
    TResult Function(_Tree value)? tree,
    TResult Function(_User value)? user,
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
  const factory _User(final UserFailure f) = _$_User;

  UserFailure get f;
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
