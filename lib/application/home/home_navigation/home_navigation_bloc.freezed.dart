// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeNavigationEventTearOff {
  const _$HomeNavigationEventTearOff();

// ignore: unused_element
  LeftDrawerIconPressed leftDrawerIconPressed() {
    return const LeftDrawerIconPressed();
  }

// ignore: unused_element
  PageViewIndexChanged pageViewIndexChanged(int index) {
    return PageViewIndexChanged(
      index,
    );
  }

// ignore: unused_element
  RightDrawerIconPressed rightDrawerIconPressed() {
    return const RightDrawerIconPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeNavigationEvent = _$HomeNavigationEventTearOff();

/// @nodoc
mixin _$HomeNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult leftDrawerIconPressed(),
    @required TResult pageViewIndexChanged(int index),
    @required TResult rightDrawerIconPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult leftDrawerIconPressed(),
    TResult pageViewIndexChanged(int index),
    TResult rightDrawerIconPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    @required TResult pageViewIndexChanged(PageViewIndexChanged value),
    @required TResult rightDrawerIconPressed(RightDrawerIconPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    TResult pageViewIndexChanged(PageViewIndexChanged value),
    TResult rightDrawerIconPressed(RightDrawerIconPressed value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult leftDrawerIconPressed(),
    @required TResult pageViewIndexChanged(int index),
    @required TResult rightDrawerIconPressed(),
  }) {
    assert(leftDrawerIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(rightDrawerIconPressed != null);
    return leftDrawerIconPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult leftDrawerIconPressed(),
    TResult pageViewIndexChanged(int index),
    TResult rightDrawerIconPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (leftDrawerIconPressed != null) {
      return leftDrawerIconPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    @required TResult pageViewIndexChanged(PageViewIndexChanged value),
    @required TResult rightDrawerIconPressed(RightDrawerIconPressed value),
  }) {
    assert(leftDrawerIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(rightDrawerIconPressed != null);
    return leftDrawerIconPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    TResult pageViewIndexChanged(PageViewIndexChanged value),
    TResult rightDrawerIconPressed(RightDrawerIconPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object index = freezed,
  }) {
    return _then(PageViewIndexChanged(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$PageViewIndexChanged implements PageViewIndexChanged {
  const _$PageViewIndexChanged(this.index) : assert(index != null);

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
  TResult when<TResult extends Object>({
    @required TResult leftDrawerIconPressed(),
    @required TResult pageViewIndexChanged(int index),
    @required TResult rightDrawerIconPressed(),
  }) {
    assert(leftDrawerIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(rightDrawerIconPressed != null);
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult leftDrawerIconPressed(),
    TResult pageViewIndexChanged(int index),
    TResult rightDrawerIconPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    @required TResult pageViewIndexChanged(PageViewIndexChanged value),
    @required TResult rightDrawerIconPressed(RightDrawerIconPressed value),
  }) {
    assert(leftDrawerIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(rightDrawerIconPressed != null);
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    TResult pageViewIndexChanged(PageViewIndexChanged value),
    TResult rightDrawerIconPressed(RightDrawerIconPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChanged implements HomeNavigationEvent {
  const factory PageViewIndexChanged(int index) = _$PageViewIndexChanged;

  int get index;
  @JsonKey(ignore: true)
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult leftDrawerIconPressed(),
    @required TResult pageViewIndexChanged(int index),
    @required TResult rightDrawerIconPressed(),
  }) {
    assert(leftDrawerIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(rightDrawerIconPressed != null);
    return rightDrawerIconPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult leftDrawerIconPressed(),
    TResult pageViewIndexChanged(int index),
    TResult rightDrawerIconPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rightDrawerIconPressed != null) {
      return rightDrawerIconPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    @required TResult pageViewIndexChanged(PageViewIndexChanged value),
    @required TResult rightDrawerIconPressed(RightDrawerIconPressed value),
  }) {
    assert(leftDrawerIconPressed != null);
    assert(pageViewIndexChanged != null);
    assert(rightDrawerIconPressed != null);
    return rightDrawerIconPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult leftDrawerIconPressed(LeftDrawerIconPressed value),
    TResult pageViewIndexChanged(PageViewIndexChanged value),
    TResult rightDrawerIconPressed(RightDrawerIconPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LeftDrawerToggled leftDrawerToggled(bool isOpen) {
    return _LeftDrawerToggled(
      isOpen,
    );
  }

// ignore: unused_element
  _PageViewChanged pageViewChanged(int index) {
    return _PageViewChanged(
      index,
    );
  }

// ignore: unused_element
  _Processing processing() {
    return const _Processing();
  }

// ignore: unused_element
  _RightDrawerToggled rightDrawerToggled(bool isOpen) {
    return _RightDrawerToggled(
      isOpen,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeNavigationState = _$HomeNavigationStateTearOff();

/// @nodoc
mixin _$HomeNavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult leftDrawerToggled(bool isOpen),
    @required TResult pageViewChanged(int index),
    @required TResult processing(),
    @required TResult rightDrawerToggled(bool isOpen),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult leftDrawerToggled(bool isOpen),
    TResult pageViewChanged(int index),
    TResult processing(),
    TResult rightDrawerToggled(bool isOpen),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult leftDrawerToggled(_LeftDrawerToggled value),
    @required TResult pageViewChanged(_PageViewChanged value),
    @required TResult processing(_Processing value),
    @required TResult rightDrawerToggled(_RightDrawerToggled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult leftDrawerToggled(_LeftDrawerToggled value),
    TResult pageViewChanged(_PageViewChanged value),
    TResult processing(_Processing value),
    TResult rightDrawerToggled(_RightDrawerToggled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HomeNavigationStateCopyWith<$Res> {
  factory $HomeNavigationStateCopyWith(
          HomeNavigationState value, $Res Function(HomeNavigationState) then) =
      _$HomeNavigationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeNavigationStateCopyWithImpl<$Res>
    implements $HomeNavigationStateCopyWith<$Res> {
  _$HomeNavigationStateCopyWithImpl(this._value, this._then);

  final HomeNavigationState _value;
  // ignore: unused_field
  final $Res Function(HomeNavigationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$HomeNavigationStateCopyWithImpl<$Res>
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
    return 'HomeNavigationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult leftDrawerToggled(bool isOpen),
    @required TResult pageViewChanged(int index),
    @required TResult processing(),
    @required TResult rightDrawerToggled(bool isOpen),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult leftDrawerToggled(bool isOpen),
    TResult pageViewChanged(int index),
    TResult processing(),
    TResult rightDrawerToggled(bool isOpen),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult leftDrawerToggled(_LeftDrawerToggled value),
    @required TResult pageViewChanged(_PageViewChanged value),
    @required TResult processing(_Processing value),
    @required TResult rightDrawerToggled(_RightDrawerToggled value),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult leftDrawerToggled(_LeftDrawerToggled value),
    TResult pageViewChanged(_PageViewChanged value),
    TResult processing(_Processing value),
    TResult rightDrawerToggled(_RightDrawerToggled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeNavigationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LeftDrawerToggledCopyWith<$Res> {
  factory _$LeftDrawerToggledCopyWith(
          _LeftDrawerToggled value, $Res Function(_LeftDrawerToggled) then) =
      __$LeftDrawerToggledCopyWithImpl<$Res>;
  $Res call({bool isOpen});
}

/// @nodoc
class __$LeftDrawerToggledCopyWithImpl<$Res>
    extends _$HomeNavigationStateCopyWithImpl<$Res>
    implements _$LeftDrawerToggledCopyWith<$Res> {
  __$LeftDrawerToggledCopyWithImpl(
      _LeftDrawerToggled _value, $Res Function(_LeftDrawerToggled) _then)
      : super(_value, (v) => _then(v as _LeftDrawerToggled));

  @override
  _LeftDrawerToggled get _value => super._value as _LeftDrawerToggled;

  @override
  $Res call({
    Object isOpen = freezed,
  }) {
    return _then(_LeftDrawerToggled(
      isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

/// @nodoc
class _$_LeftDrawerToggled implements _LeftDrawerToggled {
  const _$_LeftDrawerToggled(this.isOpen) : assert(isOpen != null);

  @override
  final bool isOpen;

  @override
  String toString() {
    return 'HomeNavigationState.leftDrawerToggled(isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeftDrawerToggled &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOpen);

  @JsonKey(ignore: true)
  @override
  _$LeftDrawerToggledCopyWith<_LeftDrawerToggled> get copyWith =>
      __$LeftDrawerToggledCopyWithImpl<_LeftDrawerToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult leftDrawerToggled(bool isOpen),
    @required TResult pageViewChanged(int index),
    @required TResult processing(),
    @required TResult rightDrawerToggled(bool isOpen),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return leftDrawerToggled(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult leftDrawerToggled(bool isOpen),
    TResult pageViewChanged(int index),
    TResult processing(),
    TResult rightDrawerToggled(bool isOpen),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (leftDrawerToggled != null) {
      return leftDrawerToggled(isOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult leftDrawerToggled(_LeftDrawerToggled value),
    @required TResult pageViewChanged(_PageViewChanged value),
    @required TResult processing(_Processing value),
    @required TResult rightDrawerToggled(_RightDrawerToggled value),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return leftDrawerToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult leftDrawerToggled(_LeftDrawerToggled value),
    TResult pageViewChanged(_PageViewChanged value),
    TResult processing(_Processing value),
    TResult rightDrawerToggled(_RightDrawerToggled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (leftDrawerToggled != null) {
      return leftDrawerToggled(this);
    }
    return orElse();
  }
}

abstract class _LeftDrawerToggled implements HomeNavigationState {
  const factory _LeftDrawerToggled(bool isOpen) = _$_LeftDrawerToggled;

  bool get isOpen;
  @JsonKey(ignore: true)
  _$LeftDrawerToggledCopyWith<_LeftDrawerToggled> get copyWith;
}

/// @nodoc
abstract class _$PageViewChangedCopyWith<$Res> {
  factory _$PageViewChangedCopyWith(
          _PageViewChanged value, $Res Function(_PageViewChanged) then) =
      __$PageViewChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$PageViewChangedCopyWithImpl<$Res>
    extends _$HomeNavigationStateCopyWithImpl<$Res>
    implements _$PageViewChangedCopyWith<$Res> {
  __$PageViewChangedCopyWithImpl(
      _PageViewChanged _value, $Res Function(_PageViewChanged) _then)
      : super(_value, (v) => _then(v as _PageViewChanged));

  @override
  _PageViewChanged get _value => super._value as _PageViewChanged;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_PageViewChanged(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_PageViewChanged implements _PageViewChanged {
  const _$_PageViewChanged(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeNavigationState.pageViewChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageViewChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$PageViewChangedCopyWith<_PageViewChanged> get copyWith =>
      __$PageViewChangedCopyWithImpl<_PageViewChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult leftDrawerToggled(bool isOpen),
    @required TResult pageViewChanged(int index),
    @required TResult processing(),
    @required TResult rightDrawerToggled(bool isOpen),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return pageViewChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult leftDrawerToggled(bool isOpen),
    TResult pageViewChanged(int index),
    TResult processing(),
    TResult rightDrawerToggled(bool isOpen),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pageViewChanged != null) {
      return pageViewChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult leftDrawerToggled(_LeftDrawerToggled value),
    @required TResult pageViewChanged(_PageViewChanged value),
    @required TResult processing(_Processing value),
    @required TResult rightDrawerToggled(_RightDrawerToggled value),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return pageViewChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult leftDrawerToggled(_LeftDrawerToggled value),
    TResult pageViewChanged(_PageViewChanged value),
    TResult processing(_Processing value),
    TResult rightDrawerToggled(_RightDrawerToggled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pageViewChanged != null) {
      return pageViewChanged(this);
    }
    return orElse();
  }
}

abstract class _PageViewChanged implements HomeNavigationState {
  const factory _PageViewChanged(int index) = _$_PageViewChanged;

  int get index;
  @JsonKey(ignore: true)
  _$PageViewChangedCopyWith<_PageViewChanged> get copyWith;
}

/// @nodoc
abstract class _$ProcessingCopyWith<$Res> {
  factory _$ProcessingCopyWith(
          _Processing value, $Res Function(_Processing) then) =
      __$ProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProcessingCopyWithImpl<$Res>
    extends _$HomeNavigationStateCopyWithImpl<$Res>
    implements _$ProcessingCopyWith<$Res> {
  __$ProcessingCopyWithImpl(
      _Processing _value, $Res Function(_Processing) _then)
      : super(_value, (v) => _then(v as _Processing));

  @override
  _Processing get _value => super._value as _Processing;
}

/// @nodoc
class _$_Processing implements _Processing {
  const _$_Processing();

  @override
  String toString() {
    return 'HomeNavigationState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Processing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult leftDrawerToggled(bool isOpen),
    @required TResult pageViewChanged(int index),
    @required TResult processing(),
    @required TResult rightDrawerToggled(bool isOpen),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult leftDrawerToggled(bool isOpen),
    TResult pageViewChanged(int index),
    TResult processing(),
    TResult rightDrawerToggled(bool isOpen),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult leftDrawerToggled(_LeftDrawerToggled value),
    @required TResult pageViewChanged(_PageViewChanged value),
    @required TResult processing(_Processing value),
    @required TResult rightDrawerToggled(_RightDrawerToggled value),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult leftDrawerToggled(_LeftDrawerToggled value),
    TResult pageViewChanged(_PageViewChanged value),
    TResult processing(_Processing value),
    TResult rightDrawerToggled(_RightDrawerToggled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements HomeNavigationState {
  const factory _Processing() = _$_Processing;
}

/// @nodoc
abstract class _$RightDrawerToggledCopyWith<$Res> {
  factory _$RightDrawerToggledCopyWith(
          _RightDrawerToggled value, $Res Function(_RightDrawerToggled) then) =
      __$RightDrawerToggledCopyWithImpl<$Res>;
  $Res call({bool isOpen});
}

/// @nodoc
class __$RightDrawerToggledCopyWithImpl<$Res>
    extends _$HomeNavigationStateCopyWithImpl<$Res>
    implements _$RightDrawerToggledCopyWith<$Res> {
  __$RightDrawerToggledCopyWithImpl(
      _RightDrawerToggled _value, $Res Function(_RightDrawerToggled) _then)
      : super(_value, (v) => _then(v as _RightDrawerToggled));

  @override
  _RightDrawerToggled get _value => super._value as _RightDrawerToggled;

  @override
  $Res call({
    Object isOpen = freezed,
  }) {
    return _then(_RightDrawerToggled(
      isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

/// @nodoc
class _$_RightDrawerToggled implements _RightDrawerToggled {
  const _$_RightDrawerToggled(this.isOpen) : assert(isOpen != null);

  @override
  final bool isOpen;

  @override
  String toString() {
    return 'HomeNavigationState.rightDrawerToggled(isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RightDrawerToggled &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOpen);

  @JsonKey(ignore: true)
  @override
  _$RightDrawerToggledCopyWith<_RightDrawerToggled> get copyWith =>
      __$RightDrawerToggledCopyWithImpl<_RightDrawerToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult leftDrawerToggled(bool isOpen),
    @required TResult pageViewChanged(int index),
    @required TResult processing(),
    @required TResult rightDrawerToggled(bool isOpen),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return rightDrawerToggled(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult leftDrawerToggled(bool isOpen),
    TResult pageViewChanged(int index),
    TResult processing(),
    TResult rightDrawerToggled(bool isOpen),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rightDrawerToggled != null) {
      return rightDrawerToggled(isOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult leftDrawerToggled(_LeftDrawerToggled value),
    @required TResult pageViewChanged(_PageViewChanged value),
    @required TResult processing(_Processing value),
    @required TResult rightDrawerToggled(_RightDrawerToggled value),
  }) {
    assert(initial != null);
    assert(leftDrawerToggled != null);
    assert(pageViewChanged != null);
    assert(processing != null);
    assert(rightDrawerToggled != null);
    return rightDrawerToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult leftDrawerToggled(_LeftDrawerToggled value),
    TResult pageViewChanged(_PageViewChanged value),
    TResult processing(_Processing value),
    TResult rightDrawerToggled(_RightDrawerToggled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rightDrawerToggled != null) {
      return rightDrawerToggled(this);
    }
    return orElse();
  }
}

abstract class _RightDrawerToggled implements HomeNavigationState {
  const factory _RightDrawerToggled(bool isOpen) = _$_RightDrawerToggled;

  bool get isOpen;
  @JsonKey(ignore: true)
  _$RightDrawerToggledCopyWith<_RightDrawerToggled> get copyWith;
}
