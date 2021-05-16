// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeNavigationEventTearOff {
  const _$HomeNavigationEventTearOff();

  LeftDrawerIconPressed leftDrawerIconPressed() {
    return const LeftDrawerIconPressed();
  }

  PageViewIndexChanged pageViewIndexChanged(int index) {
    return PageViewIndexChanged(
      index,
    );
  }

  RightDrawerIconPressed rightDrawerIconPressed() {
    return const RightDrawerIconPressed();
  }
}

/// @nodoc
const $HomeNavigationEvent = _$HomeNavigationEventTearOff();

/// @nodoc
mixin _$HomeNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leftDrawerIconPressed,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() rightDrawerIconPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leftDrawerIconPressed,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? rightDrawerIconPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeftDrawerIconPressed value)
        leftDrawerIconPressed,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(RightDrawerIconPressed value)
        rightDrawerIconPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeftDrawerIconPressed value)? leftDrawerIconPressed,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(RightDrawerIconPressed value)? rightDrawerIconPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNavigationEventCopyWith<$Res> {
  factory $HomeNavigationEventCopyWith(
          HomeNavigationEvent value, $Res Function(HomeNavigationEvent) then) =
      _$HomeNavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeNavigationEventCopyWithImpl<$Res>
    implements $HomeNavigationEventCopyWith<$Res> {
  _$HomeNavigationEventCopyWithImpl(this._value, this._then);

  final HomeNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(HomeNavigationEvent) _then;
}

/// @nodoc
abstract class $LeftDrawerIconPressedCopyWith<$Res> {
  factory $LeftDrawerIconPressedCopyWith(LeftDrawerIconPressed value,
          $Res Function(LeftDrawerIconPressed) then) =
      _$LeftDrawerIconPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LeftDrawerIconPressedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $LeftDrawerIconPressedCopyWith<$Res> {
  _$LeftDrawerIconPressedCopyWithImpl(
      LeftDrawerIconPressed _value, $Res Function(LeftDrawerIconPressed) _then)
      : super(_value, (v) => _then(v as LeftDrawerIconPressed));

  @override
  LeftDrawerIconPressed get _value => super._value as LeftDrawerIconPressed;
}

/// @nodoc

class _$LeftDrawerIconPressed implements LeftDrawerIconPressed {
  const _$LeftDrawerIconPressed();

  @override
  String toString() {
    return 'HomeNavigationEvent.leftDrawerIconPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LeftDrawerIconPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leftDrawerIconPressed,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() rightDrawerIconPressed,
  }) {
    return leftDrawerIconPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leftDrawerIconPressed,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? rightDrawerIconPressed,
    required TResult orElse(),
  }) {
    if (leftDrawerIconPressed != null) {
      return leftDrawerIconPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeftDrawerIconPressed value)
        leftDrawerIconPressed,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(RightDrawerIconPressed value)
        rightDrawerIconPressed,
  }) {
    return leftDrawerIconPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeftDrawerIconPressed value)? leftDrawerIconPressed,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(RightDrawerIconPressed value)? rightDrawerIconPressed,
    required TResult orElse(),
  }) {
    if (leftDrawerIconPressed != null) {
      return leftDrawerIconPressed(this);
    }
    return orElse();
  }
}

abstract class LeftDrawerIconPressed implements HomeNavigationEvent {
  const factory LeftDrawerIconPressed() = _$LeftDrawerIconPressed;
}

/// @nodoc
abstract class $PageViewIndexChangedCopyWith<$Res> {
  factory $PageViewIndexChangedCopyWith(PageViewIndexChanged value,
          $Res Function(PageViewIndexChanged) then) =
      _$PageViewIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$PageViewIndexChangedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $PageViewIndexChangedCopyWith<$Res> {
  _$PageViewIndexChangedCopyWithImpl(
      PageViewIndexChanged _value, $Res Function(PageViewIndexChanged) _then)
      : super(_value, (v) => _then(v as PageViewIndexChanged));

  @override
  PageViewIndexChanged get _value => super._value as PageViewIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(PageViewIndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageViewIndexChanged implements PageViewIndexChanged {
  const _$PageViewIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeNavigationEvent.pageViewIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageViewIndexChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      _$PageViewIndexChangedCopyWithImpl<PageViewIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leftDrawerIconPressed,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() rightDrawerIconPressed,
  }) {
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leftDrawerIconPressed,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? rightDrawerIconPressed,
    required TResult orElse(),
  }) {
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeftDrawerIconPressed value)
        leftDrawerIconPressed,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(RightDrawerIconPressed value)
        rightDrawerIconPressed,
  }) {
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeftDrawerIconPressed value)? leftDrawerIconPressed,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(RightDrawerIconPressed value)? rightDrawerIconPressed,
    required TResult orElse(),
  }) {
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChanged implements HomeNavigationEvent {
  const factory PageViewIndexChanged(int index) = _$PageViewIndexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RightDrawerIconPressedCopyWith<$Res> {
  factory $RightDrawerIconPressedCopyWith(RightDrawerIconPressed value,
          $Res Function(RightDrawerIconPressed) then) =
      _$RightDrawerIconPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RightDrawerIconPressedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $RightDrawerIconPressedCopyWith<$Res> {
  _$RightDrawerIconPressedCopyWithImpl(RightDrawerIconPressed _value,
      $Res Function(RightDrawerIconPressed) _then)
      : super(_value, (v) => _then(v as RightDrawerIconPressed));

  @override
  RightDrawerIconPressed get _value => super._value as RightDrawerIconPressed;
}

/// @nodoc

class _$RightDrawerIconPressed implements RightDrawerIconPressed {
  const _$RightDrawerIconPressed();

  @override
  String toString() {
    return 'HomeNavigationEvent.rightDrawerIconPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RightDrawerIconPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leftDrawerIconPressed,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() rightDrawerIconPressed,
  }) {
    return rightDrawerIconPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leftDrawerIconPressed,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? rightDrawerIconPressed,
    required TResult orElse(),
  }) {
    if (rightDrawerIconPressed != null) {
      return rightDrawerIconPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeftDrawerIconPressed value)
        leftDrawerIconPressed,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(RightDrawerIconPressed value)
        rightDrawerIconPressed,
  }) {
    return rightDrawerIconPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeftDrawerIconPressed value)? leftDrawerIconPressed,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(RightDrawerIconPressed value)? rightDrawerIconPressed,
    required TResult orElse(),
  }) {
    if (rightDrawerIconPressed != null) {
      return rightDrawerIconPressed(this);
    }
    return orElse();
  }
}

abstract class RightDrawerIconPressed implements HomeNavigationEvent {
  const factory RightDrawerIconPressed() = _$RightDrawerIconPressed;
}

/// @nodoc
class _$HomeNavigationStateTearOff {
  const _$HomeNavigationStateTearOff();

  _HomeNavigationState call(
      {required int currentPageViewIdx,
      required bool isLeftDrawerOpen,
      required bool isRightDrawerOpen}) {
    return _HomeNavigationState(
      currentPageViewIdx: currentPageViewIdx,
      isLeftDrawerOpen: isLeftDrawerOpen,
      isRightDrawerOpen: isRightDrawerOpen,
    );
  }
}

/// @nodoc
const $HomeNavigationState = _$HomeNavigationStateTearOff();

/// @nodoc
mixin _$HomeNavigationState {
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  bool get isLeftDrawerOpen => throw _privateConstructorUsedError;
  bool get isRightDrawerOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNavigationStateCopyWith<HomeNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNavigationStateCopyWith<$Res> {
  factory $HomeNavigationStateCopyWith(
          HomeNavigationState value, $Res Function(HomeNavigationState) then) =
      _$HomeNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {int currentPageViewIdx, bool isLeftDrawerOpen, bool isRightDrawerOpen});
}

/// @nodoc
class _$HomeNavigationStateCopyWithImpl<$Res>
    implements $HomeNavigationStateCopyWith<$Res> {
  _$HomeNavigationStateCopyWithImpl(this._value, this._then);

  final HomeNavigationState _value;
  // ignore: unused_field
  final $Res Function(HomeNavigationState) _then;

  @override
  $Res call({
    Object? currentPageViewIdx = freezed,
    Object? isLeftDrawerOpen = freezed,
    Object? isRightDrawerOpen = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      isLeftDrawerOpen: isLeftDrawerOpen == freezed
          ? _value.isLeftDrawerOpen
          : isLeftDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isRightDrawerOpen: isRightDrawerOpen == freezed
          ? _value.isRightDrawerOpen
          : isRightDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeNavigationStateCopyWith<$Res>
    implements $HomeNavigationStateCopyWith<$Res> {
  factory _$HomeNavigationStateCopyWith(_HomeNavigationState value,
          $Res Function(_HomeNavigationState) then) =
      __$HomeNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentPageViewIdx, bool isLeftDrawerOpen, bool isRightDrawerOpen});
}

/// @nodoc
class __$HomeNavigationStateCopyWithImpl<$Res>
    extends _$HomeNavigationStateCopyWithImpl<$Res>
    implements _$HomeNavigationStateCopyWith<$Res> {
  __$HomeNavigationStateCopyWithImpl(
      _HomeNavigationState _value, $Res Function(_HomeNavigationState) _then)
      : super(_value, (v) => _then(v as _HomeNavigationState));

  @override
  _HomeNavigationState get _value => super._value as _HomeNavigationState;

  @override
  $Res call({
    Object? currentPageViewIdx = freezed,
    Object? isLeftDrawerOpen = freezed,
    Object? isRightDrawerOpen = freezed,
  }) {
    return _then(_HomeNavigationState(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      isLeftDrawerOpen: isLeftDrawerOpen == freezed
          ? _value.isLeftDrawerOpen
          : isLeftDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isRightDrawerOpen: isRightDrawerOpen == freezed
          ? _value.isRightDrawerOpen
          : isRightDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeNavigationState implements _HomeNavigationState {
  const _$_HomeNavigationState(
      {required this.currentPageViewIdx,
      required this.isLeftDrawerOpen,
      required this.isRightDrawerOpen});

  @override
  final int currentPageViewIdx;
  @override
  final bool isLeftDrawerOpen;
  @override
  final bool isRightDrawerOpen;

  @override
  String toString() {
    return 'HomeNavigationState(currentPageViewIdx: $currentPageViewIdx, isLeftDrawerOpen: $isLeftDrawerOpen, isRightDrawerOpen: $isRightDrawerOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeNavigationState &&
            (identical(other.currentPageViewIdx, currentPageViewIdx) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageViewIdx, currentPageViewIdx)) &&
            (identical(other.isLeftDrawerOpen, isLeftDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isLeftDrawerOpen, isLeftDrawerOpen)) &&
            (identical(other.isRightDrawerOpen, isRightDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isRightDrawerOpen, isRightDrawerOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageViewIdx) ^
      const DeepCollectionEquality().hash(isLeftDrawerOpen) ^
      const DeepCollectionEquality().hash(isRightDrawerOpen);

  @JsonKey(ignore: true)
  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith =>
      __$HomeNavigationStateCopyWithImpl<_HomeNavigationState>(
          this, _$identity);
}

abstract class _HomeNavigationState implements HomeNavigationState {
  const factory _HomeNavigationState(
      {required int currentPageViewIdx,
      required bool isLeftDrawerOpen,
      required bool isRightDrawerOpen}) = _$_HomeNavigationState;

  @override
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  @override
  bool get isLeftDrawerOpen => throw _privateConstructorUsedError;
  @override
  bool get isRightDrawerOpen => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
