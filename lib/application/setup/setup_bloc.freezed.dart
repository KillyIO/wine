// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupEventCopyWith<$Res> {
  factory $SetupEventCopyWith(
          SetupEvent value, $Res Function(SetupEvent) then) =
      _$SetupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetupEventCopyWithImpl<$Res> implements $SetupEventCopyWith<$Res> {
  _$SetupEventCopyWithImpl(this._value, this._then);

  final SetupEvent _value;
  // ignore: unused_field
  final $Res Function(SetupEvent) _then;
}

/// @nodoc
abstract class _$$AppLaunchedCopyWith<$Res> {
  factory _$$AppLaunchedCopyWith(
          _$AppLaunched value, $Res Function(_$AppLaunched) then) =
      __$$AppLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLaunchedCopyWithImpl<$Res> extends _$SetupEventCopyWithImpl<$Res>
    implements _$$AppLaunchedCopyWith<$Res> {
  __$$AppLaunchedCopyWithImpl(
      _$AppLaunched _value, $Res Function(_$AppLaunched) _then)
      : super(_value, (v) => _then(v as _$AppLaunched));

  @override
  _$AppLaunched get _value => super._value as _$AppLaunched;
}

/// @nodoc

class _$AppLaunched with DiagnosticableTreeMixin implements AppLaunched {
  const _$AppLaunched();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.appLaunched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SetupEvent.appLaunched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return appLaunched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return appLaunched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return appLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return appLaunched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (appLaunched != null) {
      return appLaunched(this);
    }
    return orElse();
  }
}

abstract class AppLaunched implements SetupEvent {
  const factory AppLaunched() = _$AppLaunched;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res> extends _$SetupEventCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;
}

/// @nodoc

class _$Authenticated with DiagnosticableTreeMixin implements Authenticated {
  const _$Authenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.authenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SetupEvent.authenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements SetupEvent {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$DefaultCoversCachedCopyWith<$Res> {
  factory _$$DefaultCoversCachedCopyWith(_$DefaultCoversCached value,
          $Res Function(_$DefaultCoversCached) then) =
      __$$DefaultCoversCachedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DefaultCoversCachedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res>
    implements _$$DefaultCoversCachedCopyWith<$Res> {
  __$$DefaultCoversCachedCopyWithImpl(
      _$DefaultCoversCached _value, $Res Function(_$DefaultCoversCached) _then)
      : super(_value, (v) => _then(v as _$DefaultCoversCached));

  @override
  _$DefaultCoversCached get _value => super._value as _$DefaultCoversCached;
}

/// @nodoc

class _$DefaultCoversCached
    with DiagnosticableTreeMixin
    implements DefaultCoversCached {
  const _$DefaultCoversCached();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.defaultCoversCached()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetupEvent.defaultCoversCached'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DefaultCoversCached);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return defaultCoversCached();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return defaultCoversCached?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return defaultCoversCached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return defaultCoversCached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (defaultCoversCached != null) {
      return defaultCoversCached(this);
    }
    return orElse();
  }
}

abstract class DefaultCoversCached implements SetupEvent {
  const factory DefaultCoversCached() = _$DefaultCoversCached;
}

/// @nodoc
abstract class _$$DefaultCoversLoadedCopyWith<$Res> {
  factory _$$DefaultCoversLoadedCopyWith(_$DefaultCoversLoaded value,
          $Res Function(_$DefaultCoversLoaded) then) =
      __$$DefaultCoversLoadedCopyWithImpl<$Res>;
  $Res call({List<DefaultCover> defaultCovers});
}

/// @nodoc
class __$$DefaultCoversLoadedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res>
    implements _$$DefaultCoversLoadedCopyWith<$Res> {
  __$$DefaultCoversLoadedCopyWithImpl(
      _$DefaultCoversLoaded _value, $Res Function(_$DefaultCoversLoaded) _then)
      : super(_value, (v) => _then(v as _$DefaultCoversLoaded));

  @override
  _$DefaultCoversLoaded get _value => super._value as _$DefaultCoversLoaded;

  @override
  $Res call({
    Object? defaultCovers = freezed,
  }) {
    return _then(_$DefaultCoversLoaded(
      defaultCovers == freezed
          ? _value._defaultCovers
          : defaultCovers // ignore: cast_nullable_to_non_nullable
              as List<DefaultCover>,
    ));
  }
}

/// @nodoc

class _$DefaultCoversLoaded
    with DiagnosticableTreeMixin
    implements DefaultCoversLoaded {
  const _$DefaultCoversLoaded(final List<DefaultCover> defaultCovers)
      : _defaultCovers = defaultCovers;

  final List<DefaultCover> _defaultCovers;
  @override
  List<DefaultCover> get defaultCovers {
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
            other is _$DefaultCoversLoaded &&
            const DeepCollectionEquality()
                .equals(other._defaultCovers, _defaultCovers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_defaultCovers));

  @JsonKey(ignore: true)
  @override
  _$$DefaultCoversLoadedCopyWith<_$DefaultCoversLoaded> get copyWith =>
      __$$DefaultCoversLoadedCopyWithImpl<_$DefaultCoversLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return defaultCoversLoaded(defaultCovers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return defaultCoversLoaded?.call(defaultCovers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return defaultCoversLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return defaultCoversLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
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
      _$DefaultCoversLoaded;

  List<DefaultCover> get defaultCovers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DefaultCoversLoadedCopyWith<_$DefaultCoversLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionFetchedCopyWith<$Res> {
  factory _$$SessionFetchedCopyWith(
          _$SessionFetched value, $Res Function(_$SessionFetched) then) =
      __$$SessionFetchedCopyWithImpl<$Res>;
  $Res call({User session});

  $UserCopyWith<$Res> get session;
}

/// @nodoc
class __$$SessionFetchedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res>
    implements _$$SessionFetchedCopyWith<$Res> {
  __$$SessionFetchedCopyWithImpl(
      _$SessionFetched _value, $Res Function(_$SessionFetched) _then)
      : super(_value, (v) => _then(v as _$SessionFetched));

  @override
  _$SessionFetched get _value => super._value as _$SessionFetched;

  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$SessionFetched(
      session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get session {
    return $UserCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$SessionFetched with DiagnosticableTreeMixin implements SessionFetched {
  const _$SessionFetched(this.session);

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
            other is _$SessionFetched &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$SessionFetchedCopyWith<_$SessionFetched> get copyWith =>
      __$$SessionFetchedCopyWithImpl<_$SessionFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return sessionFetched(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return sessionFetched?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements SetupEvent {
  const factory SessionFetched(final User session) = _$SessionFetched;

  User get session => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SessionFetchedCopyWith<_$SessionFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsFetchedCopyWith<$Res> {
  factory _$$SettingsFetchedCopyWith(
          _$SettingsFetched value, $Res Function(_$SettingsFetched) then) =
      __$$SettingsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsFetchedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res>
    implements _$$SettingsFetchedCopyWith<$Res> {
  __$$SettingsFetchedCopyWithImpl(
      _$SettingsFetched _value, $Res Function(_$SettingsFetched) _then)
      : super(_value, (v) => _then(v as _$SettingsFetched));

  @override
  _$SettingsFetched get _value => super._value as _$SettingsFetched;
}

/// @nodoc

class _$SettingsFetched
    with DiagnosticableTreeMixin
    implements SettingsFetched {
  const _$SettingsFetched();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.settingsFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SetupEvent.settingsFetched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return settingsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return settingsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return settingsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return settingsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (settingsFetched != null) {
      return settingsFetched(this);
    }
    return orElse();
  }
}

abstract class SettingsFetched implements SetupEvent {
  const factory SettingsFetched() = _$SettingsFetched;
}

/// @nodoc
abstract class _$$SettingsInitializedCopyWith<$Res> {
  factory _$$SettingsInitializedCopyWith(_$SettingsInitialized value,
          $Res Function(_$SettingsInitialized) then) =
      __$$SettingsInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsInitializedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res>
    implements _$$SettingsInitializedCopyWith<$Res> {
  __$$SettingsInitializedCopyWithImpl(
      _$SettingsInitialized _value, $Res Function(_$SettingsInitialized) _then)
      : super(_value, (v) => _then(v as _$SettingsInitialized));

  @override
  _$SettingsInitialized get _value => super._value as _$SettingsInitialized;
}

/// @nodoc

class _$SettingsInitialized
    with DiagnosticableTreeMixin
    implements SettingsInitialized {
  const _$SettingsInitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.settingsInitialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetupEvent.settingsInitialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return settingsInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return settingsInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return settingsInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return settingsInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (settingsInitialized != null) {
      return settingsInitialized(this);
    }
    return orElse();
  }
}

abstract class SettingsInitialized implements SetupEvent {
  const factory SettingsInitialized() = _$SettingsInitialized;
}

/// @nodoc
abstract class _$$SettingsNotFoundCopyWith<$Res> {
  factory _$$SettingsNotFoundCopyWith(
          _$SettingsNotFound value, $Res Function(_$SettingsNotFound) then) =
      __$$SettingsNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsNotFoundCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res>
    implements _$$SettingsNotFoundCopyWith<$Res> {
  __$$SettingsNotFoundCopyWithImpl(
      _$SettingsNotFound _value, $Res Function(_$SettingsNotFound) _then)
      : super(_value, (v) => _then(v as _$SettingsNotFound));

  @override
  _$SettingsNotFound get _value => super._value as _$SettingsNotFound;
}

/// @nodoc

class _$SettingsNotFound
    with DiagnosticableTreeMixin
    implements SettingsNotFound {
  const _$SettingsNotFound();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupEvent.settingsNotFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SetupEvent.settingsNotFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return settingsNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return settingsNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return settingsNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return settingsNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (settingsNotFound != null) {
      return settingsNotFound(this);
    }
    return orElse();
  }
}

abstract class SettingsNotFound implements SetupEvent {
  const factory SettingsNotFound() = _$SettingsNotFound;
}

/// @nodoc
abstract class _$$UserLoadedCopyWith<$Res> {
  factory _$$UserLoadedCopyWith(
          _$UserLoaded value, $Res Function(_$UserLoaded) then) =
      __$$UserLoadedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserLoadedCopyWithImpl<$Res> extends _$SetupEventCopyWithImpl<$Res>
    implements _$$UserLoadedCopyWith<$Res> {
  __$$UserLoadedCopyWithImpl(
      _$UserLoaded _value, $Res Function(_$UserLoaded) _then)
      : super(_value, (v) => _then(v as _$UserLoaded));

  @override
  _$UserLoaded get _value => super._value as _$UserLoaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserLoaded(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoaded with DiagnosticableTreeMixin implements UserLoaded {
  const _$UserLoaded(this.user);

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
            other is _$UserLoaded &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UserLoadedCopyWith<_$UserLoaded> get copyWith =>
      __$$UserLoadedCopyWithImpl<_$UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() authenticated,
    required TResult Function() defaultCoversCached,
    required TResult Function(List<DefaultCover> defaultCovers)
        defaultCoversLoaded,
    required TResult Function(User session) sessionFetched,
    required TResult Function() settingsFetched,
    required TResult Function() settingsInitialized,
    required TResult Function() settingsNotFound,
    required TResult Function(User user) userLoaded,
  }) {
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
  }) {
    return userLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? authenticated,
    TResult Function()? defaultCoversCached,
    TResult Function(List<DefaultCover> defaultCovers)? defaultCoversLoaded,
    TResult Function(User session)? sessionFetched,
    TResult Function()? settingsFetched,
    TResult Function()? settingsInitialized,
    TResult Function()? settingsNotFound,
    TResult Function(User user)? userLoaded,
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
    required TResult Function(DefaultCoversCached value) defaultCoversCached,
    required TResult Function(DefaultCoversLoaded value) defaultCoversLoaded,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(SettingsInitialized value) settingsInitialized,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(DefaultCoversCached value)? defaultCoversCached,
    TResult Function(DefaultCoversLoaded value)? defaultCoversLoaded,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(SettingsInitialized value)? settingsInitialized,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements SetupEvent {
  const factory UserLoaded(final User user) = _$UserLoaded;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserLoadedCopyWith<_$UserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
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
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
    TResult Function()? initial,
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
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
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
      _$SetupStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetupStateCopyWithImpl<$Res> implements $SetupStateCopyWith<$Res> {
  _$SetupStateCopyWithImpl(this._value, this._then);

  final SetupState _value;
  // ignore: unused_field
  final $Res Function(SetupState) _then;
}

/// @nodoc
abstract class _$$_ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res> extends _$SetupStateCopyWithImpl<$Res>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, (v) => _then(v as _$_Content));

  @override
  _$_Content get _value => super._value as _$_Content;
}

/// @nodoc

class _$_Content with DiagnosticableTreeMixin implements _Content {
  const _$_Content();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupState.content()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SetupState.content'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Content);
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
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
    TResult Function()? initial,
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
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
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
  const factory _Content() = _$_Content;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({CoreFailure failure});

  $CoreFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$SetupStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CoreFailure,
    ));
  }

  @override
  $CoreFailureCopyWith<$Res> get failure {
    return $CoreFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  const _$_Failure(this.failure);

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
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

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
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
    TResult Function()? initial,
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
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
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
  const factory _Failure(final CoreFailure failure) = _$_Failure;

  CoreFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SetupStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetupState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SetupState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
    TResult Function()? content,
    TResult Function(CoreFailure failure)? failure,
    TResult Function()? initial,
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
    TResult Function(_Content value)? content,
    TResult Function(_Failure value)? failure,
    TResult Function(_Initial value)? initial,
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
  const factory _Initial() = _$_Initial;
}
