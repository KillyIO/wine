// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeNavigationEventTearOff {
  const _$HomeNavigationEventTearOff();

  MenuIconPressed menuIconPressed({@required bool isMenuOpen}) {
    return MenuIconPressed(
      isMenuOpen: isMenuOpen,
    );
  }

  NewSeriesIconPressed newSeriesIconPressed(
      {@required bool isNewSeriesPageOpen}) {
    return NewSeriesIconPressed(
      isNewSeriesPageOpen: isNewSeriesPageOpen,
    );
  }

  MenuDragStarted menuDragStarted({@required double initialPosition}) {
    return MenuDragStarted(
      initialPosition: initialPosition,
    );
  }

  MenuDragUpdated menuDragUpdated({@required double distance}) {
    return MenuDragUpdated(
      distance: distance,
    );
  }

  ResetHomeNavigationBloc resetHomeNavigationBloc() {
    return const ResetHomeNavigationBloc();
  }
}

// ignore: unused_element
const $HomeNavigationEvent = _$HomeNavigationEventTearOff();

mixin _$HomeNavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result menuIconPressed(bool isMenuOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result menuDragStarted(double initialPosition),
    @required Result menuDragUpdated(double distance),
    @required Result resetHomeNavigationBloc(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result menuIconPressed(bool isMenuOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result menuDragStarted(double initialPosition),
    Result menuDragUpdated(double distance),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result menuIconPressed(MenuIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result menuDragStarted(MenuDragStarted value),
    @required Result menuDragUpdated(MenuDragUpdated value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result menuIconPressed(MenuIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result menuDragStarted(MenuDragStarted value),
    Result menuDragUpdated(MenuDragUpdated value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  });
}

abstract class $HomeNavigationEventCopyWith<$Res> {
  factory $HomeNavigationEventCopyWith(
          HomeNavigationEvent value, $Res Function(HomeNavigationEvent) then) =
      _$HomeNavigationEventCopyWithImpl<$Res>;
}

class _$HomeNavigationEventCopyWithImpl<$Res>
    implements $HomeNavigationEventCopyWith<$Res> {
  _$HomeNavigationEventCopyWithImpl(this._value, this._then);

  final HomeNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(HomeNavigationEvent) _then;
}

abstract class $MenuIconPressedCopyWith<$Res> {
  factory $MenuIconPressedCopyWith(
          MenuIconPressed value, $Res Function(MenuIconPressed) then) =
      _$MenuIconPressedCopyWithImpl<$Res>;
  $Res call({bool isMenuOpen});
}

class _$MenuIconPressedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $MenuIconPressedCopyWith<$Res> {
  _$MenuIconPressedCopyWithImpl(
      MenuIconPressed _value, $Res Function(MenuIconPressed) _then)
      : super(_value, (v) => _then(v as MenuIconPressed));

  @override
  MenuIconPressed get _value => super._value as MenuIconPressed;

  @override
  $Res call({
    Object isMenuOpen = freezed,
  }) {
    return _then(MenuIconPressed(
      isMenuOpen:
          isMenuOpen == freezed ? _value.isMenuOpen : isMenuOpen as bool,
    ));
  }
}

class _$MenuIconPressed implements MenuIconPressed {
  const _$MenuIconPressed({@required this.isMenuOpen})
      : assert(isMenuOpen != null);

  @override
  final bool isMenuOpen;

  @override
  String toString() {
    return 'HomeNavigationEvent.menuIconPressed(isMenuOpen: $isMenuOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuIconPressed &&
            (identical(other.isMenuOpen, isMenuOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isMenuOpen, isMenuOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isMenuOpen);

  @override
  $MenuIconPressedCopyWith<MenuIconPressed> get copyWith =>
      _$MenuIconPressedCopyWithImpl<MenuIconPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result menuIconPressed(bool isMenuOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result menuDragStarted(double initialPosition),
    @required Result menuDragUpdated(double distance),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return menuIconPressed(isMenuOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result menuIconPressed(bool isMenuOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result menuDragStarted(double initialPosition),
    Result menuDragUpdated(double distance),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menuIconPressed != null) {
      return menuIconPressed(isMenuOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result menuIconPressed(MenuIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result menuDragStarted(MenuDragStarted value),
    @required Result menuDragUpdated(MenuDragUpdated value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return menuIconPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result menuIconPressed(MenuIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result menuDragStarted(MenuDragStarted value),
    Result menuDragUpdated(MenuDragUpdated value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menuIconPressed != null) {
      return menuIconPressed(this);
    }
    return orElse();
  }
}

abstract class MenuIconPressed implements HomeNavigationEvent {
  const factory MenuIconPressed({@required bool isMenuOpen}) =
      _$MenuIconPressed;

  bool get isMenuOpen;
  $MenuIconPressedCopyWith<MenuIconPressed> get copyWith;
}

abstract class $NewSeriesIconPressedCopyWith<$Res> {
  factory $NewSeriesIconPressedCopyWith(NewSeriesIconPressed value,
          $Res Function(NewSeriesIconPressed) then) =
      _$NewSeriesIconPressedCopyWithImpl<$Res>;
  $Res call({bool isNewSeriesPageOpen});
}

class _$NewSeriesIconPressedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $NewSeriesIconPressedCopyWith<$Res> {
  _$NewSeriesIconPressedCopyWithImpl(
      NewSeriesIconPressed _value, $Res Function(NewSeriesIconPressed) _then)
      : super(_value, (v) => _then(v as NewSeriesIconPressed));

  @override
  NewSeriesIconPressed get _value => super._value as NewSeriesIconPressed;

  @override
  $Res call({
    Object isNewSeriesPageOpen = freezed,
  }) {
    return _then(NewSeriesIconPressed(
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
    ));
  }
}

class _$NewSeriesIconPressed implements NewSeriesIconPressed {
  const _$NewSeriesIconPressed({@required this.isNewSeriesPageOpen})
      : assert(isNewSeriesPageOpen != null);

  @override
  final bool isNewSeriesPageOpen;

  @override
  String toString() {
    return 'HomeNavigationEvent.newSeriesIconPressed(isNewSeriesPageOpen: $isNewSeriesPageOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewSeriesIconPressed &&
            (identical(other.isNewSeriesPageOpen, isNewSeriesPageOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isNewSeriesPageOpen, isNewSeriesPageOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isNewSeriesPageOpen);

  @override
  $NewSeriesIconPressedCopyWith<NewSeriesIconPressed> get copyWith =>
      _$NewSeriesIconPressedCopyWithImpl<NewSeriesIconPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result menuIconPressed(bool isMenuOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result menuDragStarted(double initialPosition),
    @required Result menuDragUpdated(double distance),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return newSeriesIconPressed(isNewSeriesPageOpen);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result menuIconPressed(bool isMenuOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result menuDragStarted(double initialPosition),
    Result menuDragUpdated(double distance),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesIconPressed != null) {
      return newSeriesIconPressed(isNewSeriesPageOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result menuIconPressed(MenuIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result menuDragStarted(MenuDragStarted value),
    @required Result menuDragUpdated(MenuDragUpdated value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return newSeriesIconPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result menuIconPressed(MenuIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result menuDragStarted(MenuDragStarted value),
    Result menuDragUpdated(MenuDragUpdated value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSeriesIconPressed != null) {
      return newSeriesIconPressed(this);
    }
    return orElse();
  }
}

abstract class NewSeriesIconPressed implements HomeNavigationEvent {
  const factory NewSeriesIconPressed({@required bool isNewSeriesPageOpen}) =
      _$NewSeriesIconPressed;

  bool get isNewSeriesPageOpen;
  $NewSeriesIconPressedCopyWith<NewSeriesIconPressed> get copyWith;
}

abstract class $MenuDragStartedCopyWith<$Res> {
  factory $MenuDragStartedCopyWith(
          MenuDragStarted value, $Res Function(MenuDragStarted) then) =
      _$MenuDragStartedCopyWithImpl<$Res>;
  $Res call({double initialPosition});
}

class _$MenuDragStartedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $MenuDragStartedCopyWith<$Res> {
  _$MenuDragStartedCopyWithImpl(
      MenuDragStarted _value, $Res Function(MenuDragStarted) _then)
      : super(_value, (v) => _then(v as MenuDragStarted));

  @override
  MenuDragStarted get _value => super._value as MenuDragStarted;

  @override
  $Res call({
    Object initialPosition = freezed,
  }) {
    return _then(MenuDragStarted(
      initialPosition: initialPosition == freezed
          ? _value.initialPosition
          : initialPosition as double,
    ));
  }
}

class _$MenuDragStarted implements MenuDragStarted {
  const _$MenuDragStarted({@required this.initialPosition})
      : assert(initialPosition != null);

  @override
  final double initialPosition;

  @override
  String toString() {
    return 'HomeNavigationEvent.menuDragStarted(initialPosition: $initialPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuDragStarted &&
            (identical(other.initialPosition, initialPosition) ||
                const DeepCollectionEquality()
                    .equals(other.initialPosition, initialPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialPosition);

  @override
  $MenuDragStartedCopyWith<MenuDragStarted> get copyWith =>
      _$MenuDragStartedCopyWithImpl<MenuDragStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result menuIconPressed(bool isMenuOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result menuDragStarted(double initialPosition),
    @required Result menuDragUpdated(double distance),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return menuDragStarted(initialPosition);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result menuIconPressed(bool isMenuOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result menuDragStarted(double initialPosition),
    Result menuDragUpdated(double distance),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menuDragStarted != null) {
      return menuDragStarted(initialPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result menuIconPressed(MenuIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result menuDragStarted(MenuDragStarted value),
    @required Result menuDragUpdated(MenuDragUpdated value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return menuDragStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result menuIconPressed(MenuIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result menuDragStarted(MenuDragStarted value),
    Result menuDragUpdated(MenuDragUpdated value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menuDragStarted != null) {
      return menuDragStarted(this);
    }
    return orElse();
  }
}

abstract class MenuDragStarted implements HomeNavigationEvent {
  const factory MenuDragStarted({@required double initialPosition}) =
      _$MenuDragStarted;

  double get initialPosition;
  $MenuDragStartedCopyWith<MenuDragStarted> get copyWith;
}

abstract class $MenuDragUpdatedCopyWith<$Res> {
  factory $MenuDragUpdatedCopyWith(
          MenuDragUpdated value, $Res Function(MenuDragUpdated) then) =
      _$MenuDragUpdatedCopyWithImpl<$Res>;
  $Res call({double distance});
}

class _$MenuDragUpdatedCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $MenuDragUpdatedCopyWith<$Res> {
  _$MenuDragUpdatedCopyWithImpl(
      MenuDragUpdated _value, $Res Function(MenuDragUpdated) _then)
      : super(_value, (v) => _then(v as MenuDragUpdated));

  @override
  MenuDragUpdated get _value => super._value as MenuDragUpdated;

  @override
  $Res call({
    Object distance = freezed,
  }) {
    return _then(MenuDragUpdated(
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

class _$MenuDragUpdated implements MenuDragUpdated {
  const _$MenuDragUpdated({@required this.distance}) : assert(distance != null);

  @override
  final double distance;

  @override
  String toString() {
    return 'HomeNavigationEvent.menuDragUpdated(distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MenuDragUpdated &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(distance);

  @override
  $MenuDragUpdatedCopyWith<MenuDragUpdated> get copyWith =>
      _$MenuDragUpdatedCopyWithImpl<MenuDragUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result menuIconPressed(bool isMenuOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result menuDragStarted(double initialPosition),
    @required Result menuDragUpdated(double distance),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return menuDragUpdated(distance);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result menuIconPressed(bool isMenuOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result menuDragStarted(double initialPosition),
    Result menuDragUpdated(double distance),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menuDragUpdated != null) {
      return menuDragUpdated(distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result menuIconPressed(MenuIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result menuDragStarted(MenuDragStarted value),
    @required Result menuDragUpdated(MenuDragUpdated value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return menuDragUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result menuIconPressed(MenuIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result menuDragStarted(MenuDragStarted value),
    Result menuDragUpdated(MenuDragUpdated value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menuDragUpdated != null) {
      return menuDragUpdated(this);
    }
    return orElse();
  }
}

abstract class MenuDragUpdated implements HomeNavigationEvent {
  const factory MenuDragUpdated({@required double distance}) =
      _$MenuDragUpdated;

  double get distance;
  $MenuDragUpdatedCopyWith<MenuDragUpdated> get copyWith;
}

abstract class $ResetHomeNavigationBlocCopyWith<$Res> {
  factory $ResetHomeNavigationBlocCopyWith(ResetHomeNavigationBloc value,
          $Res Function(ResetHomeNavigationBloc) then) =
      _$ResetHomeNavigationBlocCopyWithImpl<$Res>;
}

class _$ResetHomeNavigationBlocCopyWithImpl<$Res>
    extends _$HomeNavigationEventCopyWithImpl<$Res>
    implements $ResetHomeNavigationBlocCopyWith<$Res> {
  _$ResetHomeNavigationBlocCopyWithImpl(ResetHomeNavigationBloc _value,
      $Res Function(ResetHomeNavigationBloc) _then)
      : super(_value, (v) => _then(v as ResetHomeNavigationBloc));

  @override
  ResetHomeNavigationBloc get _value => super._value as ResetHomeNavigationBloc;
}

class _$ResetHomeNavigationBloc implements ResetHomeNavigationBloc {
  const _$ResetHomeNavigationBloc();

  @override
  String toString() {
    return 'HomeNavigationEvent.resetHomeNavigationBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetHomeNavigationBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result menuIconPressed(bool isMenuOpen),
    @required Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    @required Result menuDragStarted(double initialPosition),
    @required Result menuDragUpdated(double distance),
    @required Result resetHomeNavigationBloc(),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return resetHomeNavigationBloc();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result menuIconPressed(bool isMenuOpen),
    Result newSeriesIconPressed(bool isNewSeriesPageOpen),
    Result menuDragStarted(double initialPosition),
    Result menuDragUpdated(double distance),
    Result resetHomeNavigationBloc(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetHomeNavigationBloc != null) {
      return resetHomeNavigationBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result menuIconPressed(MenuIconPressed value),
    @required Result newSeriesIconPressed(NewSeriesIconPressed value),
    @required Result menuDragStarted(MenuDragStarted value),
    @required Result menuDragUpdated(MenuDragUpdated value),
    @required Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
  }) {
    assert(menuIconPressed != null);
    assert(newSeriesIconPressed != null);
    assert(menuDragStarted != null);
    assert(menuDragUpdated != null);
    assert(resetHomeNavigationBloc != null);
    return resetHomeNavigationBloc(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result menuIconPressed(MenuIconPressed value),
    Result newSeriesIconPressed(NewSeriesIconPressed value),
    Result menuDragStarted(MenuDragStarted value),
    Result menuDragUpdated(MenuDragUpdated value),
    Result resetHomeNavigationBloc(ResetHomeNavigationBloc value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetHomeNavigationBloc != null) {
      return resetHomeNavigationBloc(this);
    }
    return orElse();
  }
}

abstract class ResetHomeNavigationBloc implements HomeNavigationEvent {
  const factory ResetHomeNavigationBloc() = _$ResetHomeNavigationBloc;
}

class _$HomeNavigationStateTearOff {
  const _$HomeNavigationStateTearOff();

  _HomeNavigationState call(
      {@required bool isMenuOpen,
      @required bool isNewSeriesPageOpen,
      @required double initialPosition,
      @required double distance}) {
    return _HomeNavigationState(
      isMenuOpen: isMenuOpen,
      isNewSeriesPageOpen: isNewSeriesPageOpen,
      initialPosition: initialPosition,
      distance: distance,
    );
  }
}

// ignore: unused_element
const $HomeNavigationState = _$HomeNavigationStateTearOff();

mixin _$HomeNavigationState {
  bool get isMenuOpen;
  bool get isNewSeriesPageOpen;
  double get initialPosition;
  double get distance;

  $HomeNavigationStateCopyWith<HomeNavigationState> get copyWith;
}

abstract class $HomeNavigationStateCopyWith<$Res> {
  factory $HomeNavigationStateCopyWith(
          HomeNavigationState value, $Res Function(HomeNavigationState) then) =
      _$HomeNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isMenuOpen,
      bool isNewSeriesPageOpen,
      double initialPosition,
      double distance});
}

class _$HomeNavigationStateCopyWithImpl<$Res>
    implements $HomeNavigationStateCopyWith<$Res> {
  _$HomeNavigationStateCopyWithImpl(this._value, this._then);

  final HomeNavigationState _value;
  // ignore: unused_field
  final $Res Function(HomeNavigationState) _then;

  @override
  $Res call({
    Object isMenuOpen = freezed,
    Object isNewSeriesPageOpen = freezed,
    Object initialPosition = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      isMenuOpen:
          isMenuOpen == freezed ? _value.isMenuOpen : isMenuOpen as bool,
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
      initialPosition: initialPosition == freezed
          ? _value.initialPosition
          : initialPosition as double,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

abstract class _$HomeNavigationStateCopyWith<$Res>
    implements $HomeNavigationStateCopyWith<$Res> {
  factory _$HomeNavigationStateCopyWith(_HomeNavigationState value,
          $Res Function(_HomeNavigationState) then) =
      __$HomeNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isMenuOpen,
      bool isNewSeriesPageOpen,
      double initialPosition,
      double distance});
}

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
    Object isMenuOpen = freezed,
    Object isNewSeriesPageOpen = freezed,
    Object initialPosition = freezed,
    Object distance = freezed,
  }) {
    return _then(_HomeNavigationState(
      isMenuOpen:
          isMenuOpen == freezed ? _value.isMenuOpen : isMenuOpen as bool,
      isNewSeriesPageOpen: isNewSeriesPageOpen == freezed
          ? _value.isNewSeriesPageOpen
          : isNewSeriesPageOpen as bool,
      initialPosition: initialPosition == freezed
          ? _value.initialPosition
          : initialPosition as double,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

class _$_HomeNavigationState implements _HomeNavigationState {
  const _$_HomeNavigationState(
      {@required this.isMenuOpen,
      @required this.isNewSeriesPageOpen,
      @required this.initialPosition,
      @required this.distance})
      : assert(isMenuOpen != null),
        assert(isNewSeriesPageOpen != null),
        assert(initialPosition != null),
        assert(distance != null);

  @override
  final bool isMenuOpen;
  @override
  final bool isNewSeriesPageOpen;
  @override
  final double initialPosition;
  @override
  final double distance;

  @override
  String toString() {
    return 'HomeNavigationState(isMenuOpen: $isMenuOpen, isNewSeriesPageOpen: $isNewSeriesPageOpen, initialPosition: $initialPosition, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeNavigationState &&
            (identical(other.isMenuOpen, isMenuOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isMenuOpen, isMenuOpen)) &&
            (identical(other.isNewSeriesPageOpen, isNewSeriesPageOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isNewSeriesPageOpen, isNewSeriesPageOpen)) &&
            (identical(other.initialPosition, initialPosition) ||
                const DeepCollectionEquality()
                    .equals(other.initialPosition, initialPosition)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isMenuOpen) ^
      const DeepCollectionEquality().hash(isNewSeriesPageOpen) ^
      const DeepCollectionEquality().hash(initialPosition) ^
      const DeepCollectionEquality().hash(distance);

  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith =>
      __$HomeNavigationStateCopyWithImpl<_HomeNavigationState>(
          this, _$identity);
}

abstract class _HomeNavigationState implements HomeNavigationState {
  const factory _HomeNavigationState(
      {@required bool isMenuOpen,
      @required bool isNewSeriesPageOpen,
      @required double initialPosition,
      @required double distance}) = _$_HomeNavigationState;

  @override
  bool get isMenuOpen;
  @override
  bool get isNewSeriesPageOpen;
  @override
  double get initialPosition;
  @override
  double get distance;
  @override
  _$HomeNavigationStateCopyWith<_HomeNavigationState> get copyWith;
}
