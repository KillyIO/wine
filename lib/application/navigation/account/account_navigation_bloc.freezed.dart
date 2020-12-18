// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountNavigationEventTearOff {
  const _$AccountNavigationEventTearOff();

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
const $AccountNavigationEvent = _$AccountNavigationEventTearOff();

/// @nodoc
mixin _$AccountNavigationEvent {
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
abstract class $AccountNavigationEventCopyWith<$Res> {
  factory $AccountNavigationEventCopyWith(AccountNavigationEvent value,
          $Res Function(AccountNavigationEvent) then) =
      _$AccountNavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountNavigationEventCopyWithImpl<$Res>
    implements $AccountNavigationEventCopyWith<$Res> {
  _$AccountNavigationEventCopyWithImpl(this._value, this._then);

  final AccountNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(AccountNavigationEvent) _then;
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
    extends _$AccountNavigationEventCopyWithImpl<$Res>
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
    return 'AccountNavigationEvent.pageViewIndexChangedEVT(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.pageViewIndexChangedEVT'))
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

abstract class PageViewIndexChangedEVT implements AccountNavigationEvent {
  const factory PageViewIndexChangedEVT(int index) = _$PageViewIndexChangedEVT;

  int get index;
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
    extends _$AccountNavigationEventCopyWithImpl<$Res>
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
    return 'AccountNavigationEvent.resetBlocEVT()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountNavigationEvent.resetBlocEVT'));
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

abstract class ResetBlocEVT implements AccountNavigationEvent {
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
    extends _$AccountNavigationEventCopyWithImpl<$Res>
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
    return 'AccountNavigationEvent.verticalNavbarIndexChangedEVT(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AccountNavigationEvent.verticalNavbarIndexChangedEVT'))
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

abstract class VerticalNavbarIndexChangedEVT implements AccountNavigationEvent {
  const factory VerticalNavbarIndexChangedEVT(int index) =
      _$VerticalNavbarIndexChangedEVT;

  int get index;
  $VerticalNavbarIndexChangedEVTCopyWith<VerticalNavbarIndexChangedEVT>
      get copyWith;
}

/// @nodoc
class _$AccountNavigationStateTearOff {
  const _$AccountNavigationStateTearOff();

// ignore: unused_element
  _AccountNavigationState call(
      {@required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx}) {
    return _AccountNavigationState(
      currentPageViewIdx: currentPageViewIdx,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountNavigationState = _$AccountNavigationStateTearOff();

/// @nodoc
mixin _$AccountNavigationState {
  int get currentPageViewIdx;
  int get currentVerticalNavbarIdx;

  $AccountNavigationStateCopyWith<AccountNavigationState> get copyWith;
}

/// @nodoc
abstract class $AccountNavigationStateCopyWith<$Res> {
  factory $AccountNavigationStateCopyWith(AccountNavigationState value,
          $Res Function(AccountNavigationState) then) =
      _$AccountNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentPageViewIdx, int currentVerticalNavbarIdx});
}

/// @nodoc
class _$AccountNavigationStateCopyWithImpl<$Res>
    implements $AccountNavigationStateCopyWith<$Res> {
  _$AccountNavigationStateCopyWithImpl(this._value, this._then);

  final AccountNavigationState _value;
  // ignore: unused_field
  final $Res Function(AccountNavigationState) _then;

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
abstract class _$AccountNavigationStateCopyWith<$Res>
    implements $AccountNavigationStateCopyWith<$Res> {
  factory _$AccountNavigationStateCopyWith(_AccountNavigationState value,
          $Res Function(_AccountNavigationState) then) =
      __$AccountNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentPageViewIdx, int currentVerticalNavbarIdx});
}

/// @nodoc
class __$AccountNavigationStateCopyWithImpl<$Res>
    extends _$AccountNavigationStateCopyWithImpl<$Res>
    implements _$AccountNavigationStateCopyWith<$Res> {
  __$AccountNavigationStateCopyWithImpl(_AccountNavigationState _value,
      $Res Function(_AccountNavigationState) _then)
      : super(_value, (v) => _then(v as _AccountNavigationState));

  @override
  _AccountNavigationState get _value => super._value as _AccountNavigationState;

  @override
  $Res call({
    Object currentPageViewIdx = freezed,
    Object currentVerticalNavbarIdx = freezed,
  }) {
    return _then(_AccountNavigationState(
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
class _$_AccountNavigationState
    with DiagnosticableTreeMixin
    implements _AccountNavigationState {
  const _$_AccountNavigationState(
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
    return 'AccountNavigationState(currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountNavigationState'))
      ..add(DiagnosticsProperty('currentPageViewIdx', currentPageViewIdx))
      ..add(DiagnosticsProperty(
          'currentVerticalNavbarIdx', currentVerticalNavbarIdx));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountNavigationState &&
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

  @override
  _$AccountNavigationStateCopyWith<_AccountNavigationState> get copyWith =>
      __$AccountNavigationStateCopyWithImpl<_AccountNavigationState>(
          this, _$identity);
}

abstract class _AccountNavigationState implements AccountNavigationState {
  const factory _AccountNavigationState(
      {@required int currentPageViewIdx,
      @required int currentVerticalNavbarIdx}) = _$_AccountNavigationState;

  @override
  int get currentPageViewIdx;
  @override
  int get currentVerticalNavbarIdx;
  @override
  _$AccountNavigationStateCopyWith<_AccountNavigationState> get copyWith;
}
