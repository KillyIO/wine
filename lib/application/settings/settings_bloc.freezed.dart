// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, (v) => _then(v as _$Init));

  @override
  _$Init get _value => super._value as _$Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'SettingsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SettingsEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$LogOutPressedCopyWith<$Res> {
  factory _$$LogOutPressedCopyWith(
          _$LogOutPressed value, $Res Function(_$LogOutPressed) then) =
      __$$LogOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutPressedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$LogOutPressedCopyWith<$Res> {
  __$$LogOutPressedCopyWithImpl(
      _$LogOutPressed _value, $Res Function(_$LogOutPressed) _then)
      : super(_value, (v) => _then(v as _$LogOutPressed));

  @override
  _$LogOutPressed get _value => super._value as _$LogOutPressed;
}

/// @nodoc

class _$LogOutPressed implements LogOutPressed {
  const _$LogOutPressed();

  @override
  String toString() {
    return 'SettingsEvent.logOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return logOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
  }) {
    return logOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (logOutPressed != null) {
      return logOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return logOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
  }) {
    return logOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (logOutPressed != null) {
      return logOutPressed(this);
    }
    return orElse();
  }
}

abstract class LogOutPressed implements SettingsEvent {
  const factory LogOutPressed() = _$LogOutPressed;
}

/// @nodoc
abstract class _$$SessionDeletedCopyWith<$Res> {
  factory _$$SessionDeletedCopyWith(
          _$SessionDeleted value, $Res Function(_$SessionDeleted) then) =
      __$$SessionDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionDeletedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$SessionDeletedCopyWith<$Res> {
  __$$SessionDeletedCopyWithImpl(
      _$SessionDeleted _value, $Res Function(_$SessionDeleted) _then)
      : super(_value, (v) => _then(v as _$SessionDeleted));

  @override
  _$SessionDeleted get _value => super._value as _$SessionDeleted;
}

/// @nodoc

class _$SessionDeleted implements SessionDeleted {
  const _$SessionDeleted();

  @override
  String toString() {
    return 'SettingsEvent.sessionDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return sessionDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
  }) {
    return sessionDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionDeleted != null) {
      return sessionDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return sessionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
  }) {
    return sessionDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionDeleted != null) {
      return sessionDeleted(this);
    }
    return orElse();
  }
}

abstract class SessionDeleted implements SettingsEvent {
  const factory SessionDeleted() = _$SessionDeleted;
}

/// @nodoc
abstract class _$$SessionFetchedCopyWith<$Res> {
  factory _$$SessionFetchedCopyWith(
          _$SessionFetched value, $Res Function(_$SessionFetched) then) =
      __$$SessionFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionFetchedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$SessionFetchedCopyWith<$Res> {
  __$$SessionFetchedCopyWithImpl(
      _$SessionFetched _value, $Res Function(_$SessionFetched) _then)
      : super(_value, (v) => _then(v as _$SessionFetched));

  @override
  _$SessionFetched get _value => super._value as _$SessionFetched;
}

/// @nodoc

class _$SessionFetched implements SessionFetched {
  const _$SessionFetched();

  @override
  String toString() {
    return 'SettingsEvent.sessionFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
    required TResult Function() sessionFetched,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    TResult Function()? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
    required TResult Function(SessionFetched value) sessionFetched,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    TResult Function(SessionFetched value)? sessionFetched,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements SettingsEvent {
  const factory SessionFetched() = _$SessionFetched;
}

/// @nodoc
mixin _$SettingsState {
  Option<Result<None, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isLoggedOut => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Result<None, CoreFailure>> failureOption,
      bool isLoggedOut,
      bool isProcessing,
      Settings settings,
      String username});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? failureOption = freezed,
    Object? isLoggedOut = freezed,
    Object? isProcessing = freezed,
    Object? settings = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None, CoreFailure>>,
      isLoggedOut: isLoggedOut == freezed
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Result<None, CoreFailure>> failureOption,
      bool isLoggedOut,
      bool isProcessing,
      Settings settings,
      String username});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, (v) => _then(v as _$_SettingsState));

  @override
  _$_SettingsState get _value => super._value as _$_SettingsState;

  @override
  $Res call({
    Object? failureOption = freezed,
    Object? isLoggedOut = freezed,
    Object? isProcessing = freezed,
    Object? settings = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_SettingsState(
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None, CoreFailure>>,
      isLoggedOut: isLoggedOut == freezed
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.failureOption,
      required this.isLoggedOut,
      required this.isProcessing,
      required this.settings,
      required this.username});

  @override
  final Option<Result<None, CoreFailure>> failureOption;
  @override
  final bool isLoggedOut;
  @override
  final bool isProcessing;
  @override
  final Settings settings;
  @override
  final String username;

  @override
  String toString() {
    return 'SettingsState(failureOption: $failureOption, isLoggedOut: $isLoggedOut, isProcessing: $isProcessing, settings: $settings, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedOut, isLoggedOut) &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isLoggedOut),
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final Option<Result<None, CoreFailure>> failureOption,
      required final bool isLoggedOut,
      required final bool isProcessing,
      required final Settings settings,
      required final String username}) = _$_SettingsState;

  @override
  Option<Result<None, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoggedOut => throw _privateConstructorUsedError;
  @override
  bool get isProcessing => throw _privateConstructorUsedError;
  @override
  Settings get settings => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
