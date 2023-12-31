// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupEventCopyWith<$Res> {
  factory $SetupEventCopyWith(
          SetupEvent value, $Res Function(SetupEvent) then) =
      _$SetupEventCopyWithImpl<$Res, SetupEvent>;
}

/// @nodoc
class _$SetupEventCopyWithImpl<$Res, $Val extends SetupEvent>
    implements $SetupEventCopyWith<$Res> {
  _$SetupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLaunchedImplCopyWith<$Res> {
  factory _$$AppLaunchedImplCopyWith(
          _$AppLaunchedImpl value, $Res Function(_$AppLaunchedImpl) then) =
      __$$AppLaunchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLaunchedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$AppLaunchedImpl>
    implements _$$AppLaunchedImplCopyWith<$Res> {
  __$$AppLaunchedImplCopyWithImpl(
      _$AppLaunchedImpl _value, $Res Function(_$AppLaunchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLaunchedImpl with DiagnosticableTreeMixin implements AppLaunched {
  const _$AppLaunchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.appLaunched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SetupEvent.appLaunched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLaunchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return appLaunched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return appLaunched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (appLaunched != null) {
      return appLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return appLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return appLaunched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (appLaunched != null) {
      return appLaunched(this);
    }
    return orElse();
  }
}

abstract class AppLaunched implements SetupEvent {
  const factory AppLaunched() = _$AppLaunchedImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl
    with DiagnosticableTreeMixin
    implements Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.authenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SetupEvent.authenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
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
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements SetupEvent {
  const factory Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$SettingsFetchedImplCopyWith<$Res> {
  factory _$$SettingsFetchedImplCopyWith(_$SettingsFetchedImpl value,
          $Res Function(_$SettingsFetchedImpl) then) =
      __$$SettingsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsFetchedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$SettingsFetchedImpl>
    implements _$$SettingsFetchedImplCopyWith<$Res> {
  __$$SettingsFetchedImplCopyWithImpl(
      _$SettingsFetchedImpl _value, $Res Function(_$SettingsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsFetchedImpl
    with DiagnosticableTreeMixin
    implements SettingsFetched {
  const _$SettingsFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.settingsFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SetupEvent.settingsFetched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return settingsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return settingsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (settingsFetched != null) {
      return settingsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return settingsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return settingsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (settingsFetched != null) {
      return settingsFetched(this);
    }
    return orElse();
  }
}

abstract class SettingsFetched implements SetupEvent {
  const factory SettingsFetched() = _$SettingsFetchedImpl;
}

/// @nodoc
abstract class _$$SessionFetchedImplCopyWith<$Res> {
  factory _$$SessionFetchedImplCopyWith(_$SessionFetchedImpl value,
          $Res Function(_$SessionFetchedImpl) then) =
      __$$SessionFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User session});

  $UserCopyWith<$Res> get session;
}

/// @nodoc
class __$$SessionFetchedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$SessionFetchedImpl>
    implements _$$SessionFetchedImplCopyWith<$Res> {
  __$$SessionFetchedImplCopyWithImpl(
      _$SessionFetchedImpl _value, $Res Function(_$SessionFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$SessionFetchedImpl(
      null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get session {
    return $UserCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$SessionFetchedImpl
    with DiagnosticableTreeMixin
    implements SessionFetched {
  const _$SessionFetchedImpl(this.session);

  @override
  final User session;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.sessionFetched(session: $session)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetupEvent.sessionFetched'))
      ..add(DiagnosticsProperty('session', session));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionFetchedImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionFetchedImplCopyWith<_$SessionFetchedImpl> get copyWith =>
      __$$SessionFetchedImplCopyWithImpl<_$SessionFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return sessionFetched(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return sessionFetched?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements SetupEvent {
  const factory SessionFetched(final User session) = _$SessionFetchedImpl;

  User get session;
  @JsonKey(ignore: true)
  _$$SessionFetchedImplCopyWith<_$SessionFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoadedImplCopyWith<$Res> {
  factory _$$UserLoadedImplCopyWith(
          _$UserLoadedImpl value, $Res Function(_$UserLoadedImpl) then) =
      __$$UserLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserLoadedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$UserLoadedImpl>
    implements _$$UserLoadedImplCopyWith<$Res> {
  __$$UserLoadedImplCopyWithImpl(
      _$UserLoadedImpl _value, $Res Function(_$UserLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserLoadedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoadedImpl with DiagnosticableTreeMixin implements UserLoaded {
  const _$UserLoadedImpl(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.userLoaded(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetupEvent.userLoaded'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      __$$UserLoadedImplCopyWithImpl<_$UserLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return userLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements SetupEvent {
  const factory UserLoaded(final User user) = _$UserLoadedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsNotFoundImplCopyWith<$Res> {
  factory _$$SettingsNotFoundImplCopyWith(_$SettingsNotFoundImpl value,
          $Res Function(_$SettingsNotFoundImpl) then) =
      __$$SettingsNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsNotFoundImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$SettingsNotFoundImpl>
    implements _$$SettingsNotFoundImplCopyWith<$Res> {
  __$$SettingsNotFoundImplCopyWithImpl(_$SettingsNotFoundImpl _value,
      $Res Function(_$SettingsNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsNotFoundImpl
    with DiagnosticableTreeMixin
    implements SettingsNotFound {
  const _$SettingsNotFoundImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.settingsNotFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SetupEvent.settingsNotFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return settingsNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return settingsNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (settingsNotFound != null) {
      return settingsNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return settingsNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return settingsNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (settingsNotFound != null) {
      return settingsNotFound(this);
    }
    return orElse();
  }
}

abstract class SettingsNotFound implements SetupEvent {
  const factory SettingsNotFound() = _$SettingsNotFoundImpl;
}

/// @nodoc
abstract class _$$SettingsInitializedImplCopyWith<$Res> {
  factory _$$SettingsInitializedImplCopyWith(_$SettingsInitializedImpl value,
          $Res Function(_$SettingsInitializedImpl) then) =
      __$$SettingsInitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsInitializedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$SettingsInitializedImpl>
    implements _$$SettingsInitializedImplCopyWith<$Res> {
  __$$SettingsInitializedImplCopyWithImpl(_$SettingsInitializedImpl _value,
      $Res Function(_$SettingsInitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsInitializedImpl
    with DiagnosticableTreeMixin
    implements SettingsInitialized {
  const _$SettingsInitializedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.settingsInitialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SetupEvent.settingsInitialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsInitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return settingsInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return settingsInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (settingsInitialized != null) {
      return settingsInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return settingsInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return settingsInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (settingsInitialized != null) {
      return settingsInitialized(this);
    }
    return orElse();
  }
}

abstract class SettingsInitialized implements SetupEvent {
  const factory SettingsInitialized() = _$SettingsInitializedImpl;
}

/// @nodoc
abstract class _$$DefaultCoversLoadedImplCopyWith<$Res> {
  factory _$$DefaultCoversLoadedImplCopyWith(_$DefaultCoversLoadedImpl value,
          $Res Function(_$DefaultCoversLoadedImpl) then) =
      __$$DefaultCoversLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DefaultCover> defaultCovers});
}

/// @nodoc
class __$$DefaultCoversLoadedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$DefaultCoversLoadedImpl>
    implements _$$DefaultCoversLoadedImplCopyWith<$Res> {
  __$$DefaultCoversLoadedImplCopyWithImpl(_$DefaultCoversLoadedImpl _value,
      $Res Function(_$DefaultCoversLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultCovers = null,
  }) {
    return _then(_$DefaultCoversLoadedImpl(
      null == defaultCovers
          ? _value._defaultCovers
          : defaultCovers // ignore: cast_nullable_to_non_nullable
              as List<DefaultCover>,
    ));
  }
}

/// @nodoc

class _$DefaultCoversLoadedImpl
    with DiagnosticableTreeMixin
    implements DefaultCoversLoaded {
  const _$DefaultCoversLoadedImpl(final List<DefaultCover> defaultCovers)
      : _defaultCovers = defaultCovers;

  final List<DefaultCover> _defaultCovers;
  @override
  List<DefaultCover> get defaultCovers {
    if (_defaultCovers is EqualUnmodifiableListView) return _defaultCovers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultCovers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.defaultCoversLoaded(defaultCovers: $defaultCovers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetupEvent.defaultCoversLoaded'))
      ..add(DiagnosticsProperty('defaultCovers', defaultCovers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultCoversLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._defaultCovers, _defaultCovers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_defaultCovers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultCoversLoadedImplCopyWith<_$DefaultCoversLoadedImpl> get copyWith =>
      __$$DefaultCoversLoadedImplCopyWithImpl<_$DefaultCoversLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return defaultCoversLoaded(defaultCovers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return defaultCoversLoaded?.call(defaultCovers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (defaultCoversLoaded != null) {
      return defaultCoversLoaded(defaultCovers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return defaultCoversLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return defaultCoversLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (defaultCoversLoaded != null) {
      return defaultCoversLoaded(this);
    }
    return orElse();
  }
}

abstract class DefaultCoversLoaded implements SetupEvent {
  const factory DefaultCoversLoaded(final List<DefaultCover> defaultCovers) =
      _$DefaultCoversLoadedImpl;

  List<DefaultCover> get defaultCovers;
  @JsonKey(ignore: true)
  _$$DefaultCoversLoadedImplCopyWith<_$DefaultCoversLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultCoversCachedImplCopyWith<$Res> {
  factory _$$DefaultCoversCachedImplCopyWith(_$DefaultCoversCachedImpl value,
          $Res Function(_$DefaultCoversCachedImpl) then) =
      __$$DefaultCoversCachedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DefaultCoversCachedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$DefaultCoversCachedImpl>
    implements _$$DefaultCoversCachedImplCopyWith<$Res> {
  __$$DefaultCoversCachedImplCopyWithImpl(_$DefaultCoversCachedImpl _value,
      $Res Function(_$DefaultCoversCachedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DefaultCoversCachedImpl
    with DiagnosticableTreeMixin
    implements DefaultCoversCached {
  const _$DefaultCoversCachedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.defaultCoversCached()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SetupEvent.defaultCoversCached'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultCoversCachedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() settingsFetched,
    required TResult Function(User session) sessionFetched,
    required TResult Function(User user) userLoaded,
    required TResult Function() settingsNotFound,
    required TResult Function() settingsInitialized,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function() defaultCoversCached,
  }) {
    return defaultCoversCached();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? authenticated,
    TResult? Function()? settingsFetched,
    TResult? Function(User session)? sessionFetched,
    TResult? Function(User user)? userLoaded,
    TResult? Function()? settingsNotFound,
    TResult? Function()? settingsInitialized,
    TResult? Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult? Function()? defaultCoversCached,
  }) {
    return defaultCoversCached?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? settingsFetched,
    TResult Function(User session)? sessionFetched,
    TResult Function(User user)? userLoaded,
    TResult Function()? settingsNotFound,
    TResult Function()? settingsInitialized,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function()? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (defaultCoversCached != null) {
      return defaultCoversCached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
  }) {
    return defaultCoversCached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SettingsFetched value)? settingsFetched,
    TResult? Function(SessionFetched value)? sessionFetched,
    TResult? Function(UserLoaded value)? userLoaded,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(SettingsInitialized value)? settingsInitialized,
    TResult? Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult? Function(DefaultCoversCached value)? defaultCoversCached,
  }) {
    return defaultCoversCached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    required TResult orElse(),
  }) {
    if (defaultCoversCached != null) {
      return defaultCoversCached(this);
    }
    return orElse();
  }
}

abstract class DefaultCoversCached implements SetupEvent {
  const factory DefaultCoversCached() = _$DefaultCoversCachedImpl;
}

/// @nodoc
mixin _$SetupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() content,
    required TResult Function(CoreFailure failure) failure,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? content,
    TResult? Function(CoreFailure failure)? failure,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupStateCopyWith<$Res> {
  factory $SetupStateCopyWith(
          SetupState value, $Res Function(SetupState) then) =
      _$SetupStateCopyWithImpl<$Res, SetupState>;
}

/// @nodoc
class _$SetupStateCopyWithImpl<$Res, $Val extends SetupState>
    implements $SetupStateCopyWith<$Res> {
  _$SetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContentImpl with DiagnosticableTreeMixin implements _Content {
  const _$ContentImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupState.content()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SetupState.content'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() content,
    required TResult Function(CoreFailure failure) failure,
    required TResult Function() initial,
  }) {
    return content();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? content,
    TResult? Function(CoreFailure failure)? failure,
    TResult? Function()? initial,
  }) {
    return content?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements SetupState {
  const factory _Content() = _$ContentImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoreFailure failure});

  $CoreFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CoreFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoreFailureCopyWith<$Res> get failure {
    return $CoreFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl with DiagnosticableTreeMixin implements _Failure {
  const _$FailureImpl(this.failure);

  @override
  final CoreFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupState.failure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetupState.failure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() content,
    required TResult Function(CoreFailure failure) failure,
    required TResult Function() initial,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? content,
    TResult? Function(CoreFailure failure)? failure,
    TResult? Function()? initial,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SetupState {
  const factory _Failure(final CoreFailure failure) = _$FailureImpl;

  CoreFailure get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SetupState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() content,
    required TResult Function(CoreFailure failure) failure,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? content,
    TResult? Function(CoreFailure failure)? failure,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
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
    required TResult Function(_Content value) content,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SetupState {
  const factory _Initial() = _$InitialImpl;
}
