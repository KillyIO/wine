// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'library_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LibraryNavigationEventTearOff {
  const _$LibraryNavigationEventTearOff();

// ignore: unused_element
  PageViewIndexChangedEVT pageViewIndexChangedEVT(int index) {
    return PageViewIndexChangedEVT(
      index,
    );
  }

// ignore: unused_element
  ResetBlocEVT resetBlocEVT() {
    return const ResetBlocEVT();
  }

// ignore: unused_element
  VerticalNavbarIndexChangedEVT verticalNavbarIndexChangedEVT(int index) {
    return VerticalNavbarIndexChangedEVT(
      index,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LibraryNavigationEvent = _$LibraryNavigationEventTearOff();

/// @nodoc
mixin _$LibraryNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(int index),
    @required TResult resetBlocEVT(),
    @required TResult verticalNavbarIndexChangedEVT(int index),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pageViewIndexChangedEVT(int index),
    TResult resetBlocEVT(),
    TResult verticalNavbarIndexChangedEVT(int index),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LibraryNavigationEventCopyWith<$Res> {
  factory $LibraryNavigationEventCopyWith(LibraryNavigationEvent value,
          $Res Function(LibraryNavigationEvent) then) =
      _$LibraryNavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LibraryNavigationEventCopyWithImpl<$Res>
    implements $LibraryNavigationEventCopyWith<$Res> {
  _$LibraryNavigationEventCopyWithImpl(this._value, this._then);

  final LibraryNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(LibraryNavigationEvent) _then;
}

/// @nodoc
abstract class $PageViewIndexChangedEVTCopyWith<$Res> {
  factory $PageViewIndexChangedEVTCopyWith(PageViewIndexChangedEVT value,
          $Res Function(PageViewIndexChangedEVT) then) =
      _$PageViewIndexChangedEVTCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$PageViewIndexChangedEVTCopyWithImpl<$Res>
    extends _$LibraryNavigationEventCopyWithImpl<$Res>
    implements $PageViewIndexChangedEVTCopyWith<$Res> {
  _$PageViewIndexChangedEVTCopyWithImpl(PageViewIndexChangedEVT _value,
      $Res Function(PageViewIndexChangedEVT) _then)
      : super(_value, (v) => _then(v as PageViewIndexChangedEVT));

  @override
  PageViewIndexChangedEVT get _value => super._value as PageViewIndexChangedEVT;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(PageViewIndexChangedEVT(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$PageViewIndexChangedEVT
    with DiagnosticableTreeMixin
    implements PageViewIndexChangedEVT {
  const _$PageViewIndexChangedEVT(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LibraryNavigationEvent.pageViewIndexChangedEVT(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LibraryNavigationEvent.pageViewIndexChangedEVT'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageViewIndexChangedEVT &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $PageViewIndexChangedEVTCopyWith<PageViewIndexChangedEVT> get copyWith =>
      _$PageViewIndexChangedEVTCopyWithImpl<PageViewIndexChangedEVT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(int index),
    @required TResult resetBlocEVT(),
    @required TResult verticalNavbarIndexChangedEVT(int index),
  }) {
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return pageViewIndexChangedEVT(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pageViewIndexChangedEVT(int index),
    TResult resetBlocEVT(),
    TResult verticalNavbarIndexChangedEVT(int index),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChangedEVT != null) {
      return pageViewIndexChangedEVT(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  }) {
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return pageViewIndexChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChangedEVT != null) {
      return pageViewIndexChangedEVT(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChangedEVT implements LibraryNavigationEvent {
  const factory PageViewIndexChangedEVT(int index) = _$PageViewIndexChangedEVT;

  int get index;
  @JsonKey(ignore: true)
  $PageViewIndexChangedEVTCopyWith<PageViewIndexChangedEVT> get copyWith;
}

/// @nodoc
abstract class $ResetBlocEVTCopyWith<$Res> {
  factory $ResetBlocEVTCopyWith(
          ResetBlocEVT value, $Res Function(ResetBlocEVT) then) =
      _$ResetBlocEVTCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetBlocEVTCopyWithImpl<$Res>
    extends _$LibraryNavigationEventCopyWithImpl<$Res>
    implements $ResetBlocEVTCopyWith<$Res> {
  _$ResetBlocEVTCopyWithImpl(
      ResetBlocEVT _value, $Res Function(ResetBlocEVT) _then)
      : super(_value, (v) => _then(v as ResetBlocEVT));

  @override
  ResetBlocEVT get _value => super._value as ResetBlocEVT;
}

/// @nodoc
class _$ResetBlocEVT with DiagnosticableTreeMixin implements ResetBlocEVT {
  const _$ResetBlocEVT();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LibraryNavigationEvent.resetBlocEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LibraryNavigationEvent.resetBlocEVT'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetBlocEVT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(int index),
    @required TResult resetBlocEVT(),
    @required TResult verticalNavbarIndexChangedEVT(int index),
  }) {
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return resetBlocEVT();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pageViewIndexChangedEVT(int index),
    TResult resetBlocEVT(),
    TResult verticalNavbarIndexChangedEVT(int index),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  }) {
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return resetBlocEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetBlocEVT != null) {
      return resetBlocEVT(this);
    }
    return orElse();
  }
}

abstract class ResetBlocEVT implements LibraryNavigationEvent {
  const factory ResetBlocEVT() = _$ResetBlocEVT;
}

/// @nodoc
abstract class $VerticalNavbarIndexChangedEVTCopyWith<$Res> {
  factory $VerticalNavbarIndexChangedEVTCopyWith(
          VerticalNavbarIndexChangedEVT value,
          $Res Function(VerticalNavbarIndexChangedEVT) then) =
      _$VerticalNavbarIndexChangedEVTCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$VerticalNavbarIndexChangedEVTCopyWithImpl<$Res>
    extends _$LibraryNavigationEventCopyWithImpl<$Res>
    implements $VerticalNavbarIndexChangedEVTCopyWith<$Res> {
  _$VerticalNavbarIndexChangedEVTCopyWithImpl(
      VerticalNavbarIndexChangedEVT _value,
      $Res Function(VerticalNavbarIndexChangedEVT) _then)
      : super(_value, (v) => _then(v as VerticalNavbarIndexChangedEVT));

  @override
  VerticalNavbarIndexChangedEVT get _value =>
      super._value as VerticalNavbarIndexChangedEVT;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(VerticalNavbarIndexChangedEVT(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$VerticalNavbarIndexChangedEVT
    with DiagnosticableTreeMixin
    implements VerticalNavbarIndexChangedEVT {
  const _$VerticalNavbarIndexChangedEVT(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LibraryNavigationEvent.verticalNavbarIndexChangedEVT(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LibraryNavigationEvent.verticalNavbarIndexChangedEVT'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerticalNavbarIndexChangedEVT &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $VerticalNavbarIndexChangedEVTCopyWith<VerticalNavbarIndexChangedEVT>
      get copyWith => _$VerticalNavbarIndexChangedEVTCopyWithImpl<
          VerticalNavbarIndexChangedEVT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(int index),
    @required TResult resetBlocEVT(),
    @required TResult verticalNavbarIndexChangedEVT(int index),
  }) {
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return verticalNavbarIndexChangedEVT(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pageViewIndexChangedEVT(int index),
    TResult resetBlocEVT(),
    TResult verticalNavbarIndexChangedEVT(int index),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verticalNavbarIndexChangedEVT != null) {
      return verticalNavbarIndexChangedEVT(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required TResult resetBlocEVT(ResetBlocEVT value),
    @required
        TResult verticalNavbarIndexChangedEVT(
            VerticalNavbarIndexChangedEVT value),
  }) {
    assert(pageViewIndexChangedEVT != null);
    assert(resetBlocEVT != null);
    assert(verticalNavbarIndexChangedEVT != null);
    return verticalNavbarIndexChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    TResult resetBlocEVT(ResetBlocEVT value),
    TResult verticalNavbarIndexChangedEVT(VerticalNavbarIndexChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verticalNavbarIndexChangedEVT != null) {
      return verticalNavbarIndexChangedEVT(this);
    }
    return orElse();
  }
}

abstract class VerticalNavbarIndexChangedEVT implements LibraryNavigationEvent {
  const factory VerticalNavbarIndexChangedEVT(int index) =
      _$VerticalNavbarIndexChangedEVT;

  int get index;
  @JsonKey(ignore: true)
  $VerticalNavbarIndexChangedEVTCopyWith<VerticalNavbarIndexChangedEVT>
      get copyWith;
}

/// @nodoc
class _$LibraryNavigationStateTearOff {
  const _$LibraryNavigationStateTearOff();

// ignore: unused_element
  _LibraryNavigationState call(
      {@required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx}) {
    return _LibraryNavigationState(
      currentPageViewIdx: currentPageViewIdx,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LibraryNavigationState = _$LibraryNavigationStateTearOff();

/// @nodoc
mixin _$LibraryNavigationState {
  int get currentPageViewIdx;
  int get currentVerticalNavbarIdx;

  @JsonKey(ignore: true)
  $LibraryNavigationStateCopyWith<LibraryNavigationState> get copyWith;
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
    Object currentPageViewIdx = freezed,
    Object currentVerticalNavbarIdx = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx as int,
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
    Object currentPageViewIdx = freezed,
    Object currentVerticalNavbarIdx = freezed,
  }) {
    return _then(_LibraryNavigationState(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx as int,
    ));
  }
}

/// @nodoc
class _$_LibraryNavigationState
    with DiagnosticableTreeMixin
    implements _LibraryNavigationState {
  const _$_LibraryNavigationState(
      {@required this.currentPageViewIdx,
      @required this.currentVerticalNavbarIdx})
      : assert(currentPageViewIdx != null),
        assert(currentVerticalNavbarIdx != null);

  @override
  final int currentPageViewIdx;
  @override
  final int currentVerticalNavbarIdx;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LibraryNavigationState(currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LibraryNavigationState'))
      ..add(DiagnosticsProperty('currentPageViewIdx', currentPageViewIdx))
      ..add(DiagnosticsProperty(
          'currentVerticalNavbarIdx', currentVerticalNavbarIdx));
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
      {@required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx}) = _$_LibraryNavigationState;

  @override
  int get currentPageViewIdx;
  @override
  int get currentVerticalNavbarIdx;
  @override
  @JsonKey(ignore: true)
  _$LibraryNavigationStateCopyWith<_LibraryNavigationState> get copyWith;
}
