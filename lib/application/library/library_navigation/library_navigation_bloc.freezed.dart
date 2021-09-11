// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LibraryNavigationEventTearOff {
  const _$LibraryNavigationEventTearOff();

  PageViewIndexChanged pageViewIndexChanged(int index) {
    return PageViewIndexChanged(
      index,
    );
  }

  VerticalNavbarIndexChanged verticalNavbarIndexChanged(int index) {
    return VerticalNavbarIndexChanged(
      index,
    );
  }
}

/// @nodoc
const $LibraryNavigationEvent = _$LibraryNavigationEventTearOff();

/// @nodoc
mixin _$LibraryNavigationEvent {
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryNavigationEventCopyWith<LibraryNavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryNavigationEventCopyWith<$Res> {
  factory $LibraryNavigationEventCopyWith(LibraryNavigationEvent value,
          $Res Function(LibraryNavigationEvent) then) =
      _$LibraryNavigationEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$LibraryNavigationEventCopyWithImpl<$Res>
    implements $LibraryNavigationEventCopyWith<$Res> {
  _$LibraryNavigationEventCopyWithImpl(this._value, this._then);

  final LibraryNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(LibraryNavigationEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $PageViewIndexChangedCopyWith<$Res>
    implements $LibraryNavigationEventCopyWith<$Res> {
  factory $PageViewIndexChangedCopyWith(PageViewIndexChanged value,
          $Res Function(PageViewIndexChanged) then) =
      _$PageViewIndexChangedCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class _$PageViewIndexChangedCopyWithImpl<$Res>
    extends _$LibraryNavigationEventCopyWithImpl<$Res>
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
    return 'LibraryNavigationEvent.pageViewIndexChanged(index: $index)';
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
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(int index)? verticalNavbarIndexChanged,
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
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChanged implements LibraryNavigationEvent {
  const factory PageViewIndexChanged(int index) = _$PageViewIndexChanged;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerticalNavbarIndexChangedCopyWith<$Res>
    implements $LibraryNavigationEventCopyWith<$Res> {
  factory $VerticalNavbarIndexChangedCopyWith(VerticalNavbarIndexChanged value,
          $Res Function(VerticalNavbarIndexChanged) then) =
      _$VerticalNavbarIndexChangedCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class _$VerticalNavbarIndexChangedCopyWithImpl<$Res>
    extends _$LibraryNavigationEventCopyWithImpl<$Res>
    implements $VerticalNavbarIndexChangedCopyWith<$Res> {
  _$VerticalNavbarIndexChangedCopyWithImpl(VerticalNavbarIndexChanged _value,
      $Res Function(VerticalNavbarIndexChanged) _then)
      : super(_value, (v) => _then(v as VerticalNavbarIndexChanged));

  @override
  VerticalNavbarIndexChanged get _value =>
      super._value as VerticalNavbarIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(VerticalNavbarIndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VerticalNavbarIndexChanged implements VerticalNavbarIndexChanged {
  const _$VerticalNavbarIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LibraryNavigationEvent.verticalNavbarIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerticalNavbarIndexChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged>
      get copyWith =>
          _$VerticalNavbarIndexChangedCopyWithImpl<VerticalNavbarIndexChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (verticalNavbarIndexChanged != null) {
      return verticalNavbarIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (verticalNavbarIndexChanged != null) {
      return verticalNavbarIndexChanged(this);
    }
    return orElse();
  }
}

abstract class VerticalNavbarIndexChanged implements LibraryNavigationEvent {
  const factory VerticalNavbarIndexChanged(int index) =
      _$VerticalNavbarIndexChanged;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LibraryNavigationStateTearOff {
  const _$LibraryNavigationStateTearOff();

  _LibraryNavigationState call(
      {required int currentPageViewIdx,
      required int currentVerticalNavbarIdx}) {
    return _LibraryNavigationState(
      currentPageViewIdx: currentPageViewIdx,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx,
    );
  }
}

/// @nodoc
const $LibraryNavigationState = _$LibraryNavigationStateTearOff();

/// @nodoc
mixin _$LibraryNavigationState {
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  int get currentVerticalNavbarIdx => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryNavigationStateCopyWith<LibraryNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryNavigationStateCopyWith<$Res> {
  factory $LibraryNavigationStateCopyWith(LibraryNavigationState value,
          $Res Function(LibraryNavigationState) then) =
      _$LibraryNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentPageViewIdx, int currentVerticalNavbarIdx});
}

/// @nodoc
class _$LibraryNavigationStateCopyWithImpl<$Res>
    implements $LibraryNavigationStateCopyWith<$Res> {
  _$LibraryNavigationStateCopyWithImpl(this._value, this._then);

  final LibraryNavigationState _value;
  // ignore: unused_field
  final $Res Function(LibraryNavigationState) _then;

  @override
  $Res call({
    Object? currentPageViewIdx = freezed,
    Object? currentVerticalNavbarIdx = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LibraryNavigationStateCopyWith<$Res>
    implements $LibraryNavigationStateCopyWith<$Res> {
  factory _$LibraryNavigationStateCopyWith(_LibraryNavigationState value,
          $Res Function(_LibraryNavigationState) then) =
      __$LibraryNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentPageViewIdx, int currentVerticalNavbarIdx});
}

/// @nodoc
class __$LibraryNavigationStateCopyWithImpl<$Res>
    extends _$LibraryNavigationStateCopyWithImpl<$Res>
    implements _$LibraryNavigationStateCopyWith<$Res> {
  __$LibraryNavigationStateCopyWithImpl(_LibraryNavigationState _value,
      $Res Function(_LibraryNavigationState) _then)
      : super(_value, (v) => _then(v as _LibraryNavigationState));

  @override
  _LibraryNavigationState get _value => super._value as _LibraryNavigationState;

  @override
  $Res call({
    Object? currentPageViewIdx = freezed,
    Object? currentVerticalNavbarIdx = freezed,
  }) {
    return _then(_LibraryNavigationState(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LibraryNavigationState implements _LibraryNavigationState {
  const _$_LibraryNavigationState(
      {required this.currentPageViewIdx,
      required this.currentVerticalNavbarIdx});

  @override
  final int currentPageViewIdx;
  @override
  final int currentVerticalNavbarIdx;

  @override
  String toString() {
    return 'LibraryNavigationState(currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LibraryNavigationState &&
            (identical(other.currentPageViewIdx, currentPageViewIdx) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageViewIdx, currentPageViewIdx)) &&
            (identical(
                    other.currentVerticalNavbarIdx, currentVerticalNavbarIdx) ||
                const DeepCollectionEquality().equals(
                    other.currentVerticalNavbarIdx, currentVerticalNavbarIdx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageViewIdx) ^
      const DeepCollectionEquality().hash(currentVerticalNavbarIdx);

  @JsonKey(ignore: true)
  @override
  _$LibraryNavigationStateCopyWith<_LibraryNavigationState> get copyWith =>
      __$LibraryNavigationStateCopyWithImpl<_LibraryNavigationState>(
          this, _$identity);
}

abstract class _LibraryNavigationState implements LibraryNavigationState {
  const factory _LibraryNavigationState(
      {required int currentPageViewIdx,
      required int currentVerticalNavbarIdx}) = _$_LibraryNavigationState;

  @override
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  @override
  int get currentVerticalNavbarIdx => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LibraryNavigationStateCopyWith<_LibraryNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
