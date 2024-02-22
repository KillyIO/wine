// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() sessionFetched,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? sessionFetched,
    TResult? Function()? logOutPressed,
    TResult? Function()? sessionDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? sessionFetched,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(LogOutPressed value)? logOutPressed,
    TResult? Function(SessionDeleted value)? sessionDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'SettingsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() sessionFetched,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? sessionFetched,
    TResult? Function()? logOutPressed,
    TResult? Function()? sessionDeleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? sessionFetched,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
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
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(LogOutPressed value)? logOutPressed,
    TResult? Function(SessionDeleted value)? sessionDeleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SettingsEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$SessionFetchedImplCopyWith<$Res> {
  factory _$$SessionFetchedImplCopyWith(_$SessionFetchedImpl value,
          $Res Function(_$SessionFetchedImpl) then) =
      __$$SessionFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionFetchedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SessionFetchedImpl>
    implements _$$SessionFetchedImplCopyWith<$Res> {
  __$$SessionFetchedImplCopyWithImpl(
      _$SessionFetchedImpl _value, $Res Function(_$SessionFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionFetchedImpl implements SessionFetched {
  const _$SessionFetchedImpl();

  @override
  String toString() {
    return 'SettingsEvent.sessionFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() sessionFetched,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? sessionFetched,
    TResult? Function()? logOutPressed,
    TResult? Function()? sessionDeleted,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? sessionFetched,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
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
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(LogOutPressed value)? logOutPressed,
    TResult? Function(SessionDeleted value)? sessionDeleted,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements SettingsEvent {
  const factory SessionFetched() = _$SessionFetchedImpl;
}

/// @nodoc
abstract class _$$LogOutPressedImplCopyWith<$Res> {
  factory _$$LogOutPressedImplCopyWith(
          _$LogOutPressedImpl value, $Res Function(_$LogOutPressedImpl) then) =
      __$$LogOutPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutPressedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$LogOutPressedImpl>
    implements _$$LogOutPressedImplCopyWith<$Res> {
  __$$LogOutPressedImplCopyWithImpl(
      _$LogOutPressedImpl _value, $Res Function(_$LogOutPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutPressedImpl implements LogOutPressed {
  const _$LogOutPressedImpl();

  @override
  String toString() {
    return 'SettingsEvent.logOutPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() sessionFetched,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
  }) {
    return logOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? sessionFetched,
    TResult? Function()? logOutPressed,
    TResult? Function()? sessionDeleted,
  }) {
    return logOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? sessionFetched,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
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
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
  }) {
    return logOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(LogOutPressed value)? logOutPressed,
    TResult? Function(SessionDeleted value)? sessionDeleted,
  }) {
    return logOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    required TResult orElse(),
  }) {
    if (logOutPressed != null) {
      return logOutPressed(this);
    }
    return orElse();
  }
}

abstract class LogOutPressed implements SettingsEvent {
  const factory LogOutPressed() = _$LogOutPressedImpl;
}

/// @nodoc
abstract class _$$SessionDeletedImplCopyWith<$Res> {
  factory _$$SessionDeletedImplCopyWith(_$SessionDeletedImpl value,
          $Res Function(_$SessionDeletedImpl) then) =
      __$$SessionDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionDeletedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SessionDeletedImpl>
    implements _$$SessionDeletedImplCopyWith<$Res> {
  __$$SessionDeletedImplCopyWithImpl(
      _$SessionDeletedImpl _value, $Res Function(_$SessionDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionDeletedImpl implements SessionDeleted {
  const _$SessionDeletedImpl();

  @override
  String toString() {
    return 'SettingsEvent.sessionDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() sessionFetched,
    required TResult Function() logOutPressed,
    required TResult Function() sessionDeleted,
  }) {
    return sessionDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? sessionFetched,
    TResult? Function()? logOutPressed,
    TResult? Function()? sessionDeleted,
  }) {
    return sessionDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? sessionFetched,
    TResult Function()? logOutPressed,
    TResult Function()? sessionDeleted,
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
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(LogOutPressed value) logOutPressed,
    required TResult Function(SessionDeleted value) sessionDeleted,
  }) {
    return sessionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(LogOutPressed value)? logOutPressed,
    TResult? Function(SessionDeleted value)? sessionDeleted,
  }) {
    return sessionDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(LogOutPressed value)? logOutPressed,
    TResult Function(SessionDeleted value)? sessionDeleted,
    required TResult orElse(),
  }) {
    if (sessionDeleted != null) {
      return sessionDeleted(this);
    }
    return orElse();
  }
}

abstract class SessionDeleted implements SettingsEvent {
  const factory SessionDeleted() = _$SessionDeletedImpl;
}

/// @nodoc
mixin _$SettingsState {
  Option<Result<None<Object>, CoreFailure>> get failureOption =>
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
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isLoggedOut,
      bool isProcessing,
      Settings settings,
      String username});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOption = null,
    Object? isLoggedOut = null,
    Object? isProcessing = null,
    Object? settings = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isLoggedOut: null == isLoggedOut
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isLoggedOut,
      bool isProcessing,
      Settings settings,
      String username});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOption = null,
    Object? isLoggedOut = null,
    Object? isProcessing = null,
    Object? settings = null,
    Object? username = null,
  }) {
    return _then(_$SettingsStateImpl(
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isLoggedOut: null == isLoggedOut
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl(
      {required this.failureOption,
      required this.isLoggedOut,
      required this.isProcessing,
      required this.settings,
      required this.username});

  @override
  final Option<Result<None<Object>, CoreFailure>> failureOption;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.isLoggedOut, isLoggedOut) ||
                other.isLoggedOut == isLoggedOut) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOption, isLoggedOut,
      isProcessing, settings, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final Option<Result<None<Object>, CoreFailure>> failureOption,
      required final bool isLoggedOut,
      required final bool isProcessing,
      required final Settings settings,
      required final String username}) = _$SettingsStateImpl;

  @override
  Option<Result<None<Object>, CoreFailure>> get failureOption;
  @override
  bool get isLoggedOut;
  @override
  bool get isProcessing;
  @override
  Settings get settings;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
