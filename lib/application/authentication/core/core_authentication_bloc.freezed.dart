// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'core_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreAuthenticationEventTearOff {
  const _$CoreAuthenticationEventTearOff();

  PageLaunched pageLaunched() {
    return const PageLaunched();
  }
}

// ignore: unused_element
const $CoreAuthenticationEvent = _$CoreAuthenticationEventTearOff();

mixin _$CoreAuthenticationEvent {}

abstract class $CoreAuthenticationEventCopyWith<$Res> {
  factory $CoreAuthenticationEventCopyWith(CoreAuthenticationEvent value,
          $Res Function(CoreAuthenticationEvent) then) =
      _$CoreAuthenticationEventCopyWithImpl<$Res>;
}

class _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $CoreAuthenticationEventCopyWith<$Res> {
  _$CoreAuthenticationEventCopyWithImpl(this._value, this._then);

  final CoreAuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(CoreAuthenticationEvent) _then;
}

abstract class $PageLaunchedCopyWith<$Res> {
  factory $PageLaunchedCopyWith(
          PageLaunched value, $Res Function(PageLaunched) then) =
      _$PageLaunchedCopyWithImpl<$Res>;
}

class _$PageLaunchedCopyWithImpl<$Res>
    extends _$CoreAuthenticationEventCopyWithImpl<$Res>
    implements $PageLaunchedCopyWith<$Res> {
  _$PageLaunchedCopyWithImpl(
      PageLaunched _value, $Res Function(PageLaunched) _then)
      : super(_value, (v) => _then(v as PageLaunched));

  @override
  PageLaunched get _value => super._value as PageLaunched;
}

class _$PageLaunched implements PageLaunched {
  const _$PageLaunched();

  @override
  String toString() {
    return 'CoreAuthenticationEvent.pageLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class PageLaunched implements CoreAuthenticationEvent {
  const factory PageLaunched() = _$PageLaunched;
}

class _$CoreAuthenticationStateTearOff {
  const _$CoreAuthenticationStateTearOff();

  _CoreAuthenticationState call({@required bool isAnonymous}) {
    return _CoreAuthenticationState(
      isAnonymous: isAnonymous,
    );
  }
}

// ignore: unused_element
const $CoreAuthenticationState = _$CoreAuthenticationStateTearOff();

mixin _$CoreAuthenticationState {
  bool get isAnonymous;

  $CoreAuthenticationStateCopyWith<CoreAuthenticationState> get copyWith;
}

abstract class $CoreAuthenticationStateCopyWith<$Res> {
  factory $CoreAuthenticationStateCopyWith(CoreAuthenticationState value,
          $Res Function(CoreAuthenticationState) then) =
      _$CoreAuthenticationStateCopyWithImpl<$Res>;
  $Res call({bool isAnonymous});
}

class _$CoreAuthenticationStateCopyWithImpl<$Res>
    implements $CoreAuthenticationStateCopyWith<$Res> {
  _$CoreAuthenticationStateCopyWithImpl(this._value, this._then);

  final CoreAuthenticationState _value;
  // ignore: unused_field
  final $Res Function(CoreAuthenticationState) _then;

  @override
  $Res call({
    Object isAnonymous = freezed,
  }) {
    return _then(_value.copyWith(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
    ));
  }
}

abstract class _$CoreAuthenticationStateCopyWith<$Res>
    implements $CoreAuthenticationStateCopyWith<$Res> {
  factory _$CoreAuthenticationStateCopyWith(_CoreAuthenticationState value,
          $Res Function(_CoreAuthenticationState) then) =
      __$CoreAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAnonymous});
}

class __$CoreAuthenticationStateCopyWithImpl<$Res>
    extends _$CoreAuthenticationStateCopyWithImpl<$Res>
    implements _$CoreAuthenticationStateCopyWith<$Res> {
  __$CoreAuthenticationStateCopyWithImpl(_CoreAuthenticationState _value,
      $Res Function(_CoreAuthenticationState) _then)
      : super(_value, (v) => _then(v as _CoreAuthenticationState));

  @override
  _CoreAuthenticationState get _value =>
      super._value as _CoreAuthenticationState;

  @override
  $Res call({
    Object isAnonymous = freezed,
  }) {
    return _then(_CoreAuthenticationState(
      isAnonymous:
          isAnonymous == freezed ? _value.isAnonymous : isAnonymous as bool,
    ));
  }
}

class _$_CoreAuthenticationState implements _CoreAuthenticationState {
  const _$_CoreAuthenticationState({@required this.isAnonymous})
      : assert(isAnonymous != null);

  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'CoreAuthenticationState(isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoreAuthenticationState &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isAnonymous);

  @override
  _$CoreAuthenticationStateCopyWith<_CoreAuthenticationState> get copyWith =>
      __$CoreAuthenticationStateCopyWithImpl<_CoreAuthenticationState>(
          this, _$identity);
}

abstract class _CoreAuthenticationState implements CoreAuthenticationState {
  const factory _CoreAuthenticationState({@required bool isAnonymous}) =
      _$_CoreAuthenticationState;

  @override
  bool get isAnonymous;
  @override
  _$CoreAuthenticationStateCopyWith<_CoreAuthenticationState> get copyWith;
}
