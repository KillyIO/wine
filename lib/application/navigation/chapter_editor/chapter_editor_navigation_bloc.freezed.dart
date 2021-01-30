// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chapter_editor_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChapterEditorNavigationEventTearOff {
  const _$ChapterEditorNavigationEventTearOff();

// ignore: unused_element
  PageViewIndexChangedEVT pageViewIndexChangedEVT(int index) {
    return PageViewIndexChangedEVT(
      index,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChapterEditorNavigationEvent = _$ChapterEditorNavigationEventTearOff();

/// @nodoc
mixin _$ChapterEditorNavigationEvent {
  int get index;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(int index),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pageViewIndexChangedEVT(int index),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ChapterEditorNavigationEventCopyWith<ChapterEditorNavigationEvent>
      get copyWith;
}

/// @nodoc
abstract class $ChapterEditorNavigationEventCopyWith<$Res> {
  factory $ChapterEditorNavigationEventCopyWith(
          ChapterEditorNavigationEvent value,
          $Res Function(ChapterEditorNavigationEvent) then) =
      _$ChapterEditorNavigationEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$ChapterEditorNavigationEventCopyWithImpl<$Res>
    implements $ChapterEditorNavigationEventCopyWith<$Res> {
  _$ChapterEditorNavigationEventCopyWithImpl(this._value, this._then);

  final ChapterEditorNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(ChapterEditorNavigationEvent) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
abstract class $PageViewIndexChangedEVTCopyWith<$Res>
    implements $ChapterEditorNavigationEventCopyWith<$Res> {
  factory $PageViewIndexChangedEVTCopyWith(PageViewIndexChangedEVT value,
          $Res Function(PageViewIndexChangedEVT) then) =
      _$PageViewIndexChangedEVTCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class _$PageViewIndexChangedEVTCopyWithImpl<$Res>
    extends _$ChapterEditorNavigationEventCopyWithImpl<$Res>
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
class _$PageViewIndexChangedEVT implements PageViewIndexChangedEVT {
  const _$PageViewIndexChangedEVT(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'ChapterEditorNavigationEvent.pageViewIndexChangedEVT(index: $index)';
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
  }) {
    assert(pageViewIndexChangedEVT != null);
    return pageViewIndexChangedEVT(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pageViewIndexChangedEVT(int index),
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
  }) {
    assert(pageViewIndexChangedEVT != null);
    return pageViewIndexChangedEVT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pageViewIndexChangedEVT(PageViewIndexChangedEVT value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pageViewIndexChangedEVT != null) {
      return pageViewIndexChangedEVT(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChangedEVT implements ChapterEditorNavigationEvent {
  const factory PageViewIndexChangedEVT(int index) = _$PageViewIndexChangedEVT;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  $PageViewIndexChangedEVTCopyWith<PageViewIndexChangedEVT> get copyWith;
}

/// @nodoc
class _$ChapterEditorNavigationStateTearOff {
  const _$ChapterEditorNavigationStateTearOff();

// ignore: unused_element
  _ChapterEditorNavigationState call({@required int currentPageViewIdx}) {
    return _ChapterEditorNavigationState(
      currentPageViewIdx: currentPageViewIdx,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChapterEditorNavigationState = _$ChapterEditorNavigationStateTearOff();

/// @nodoc
mixin _$ChapterEditorNavigationState {
  int get currentPageViewIdx;

  @JsonKey(ignore: true)
  $ChapterEditorNavigationStateCopyWith<ChapterEditorNavigationState>
      get copyWith;
}

/// @nodoc
abstract class $ChapterEditorNavigationStateCopyWith<$Res> {
  factory $ChapterEditorNavigationStateCopyWith(
          ChapterEditorNavigationState value,
          $Res Function(ChapterEditorNavigationState) then) =
      _$ChapterEditorNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentPageViewIdx});
}

/// @nodoc
class _$ChapterEditorNavigationStateCopyWithImpl<$Res>
    implements $ChapterEditorNavigationStateCopyWith<$Res> {
  _$ChapterEditorNavigationStateCopyWithImpl(this._value, this._then);

  final ChapterEditorNavigationState _value;
  // ignore: unused_field
  final $Res Function(ChapterEditorNavigationState) _then;

  @override
  $Res call({
    Object currentPageViewIdx = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
    ));
  }
}

/// @nodoc
abstract class _$ChapterEditorNavigationStateCopyWith<$Res>
    implements $ChapterEditorNavigationStateCopyWith<$Res> {
  factory _$ChapterEditorNavigationStateCopyWith(
          _ChapterEditorNavigationState value,
          $Res Function(_ChapterEditorNavigationState) then) =
      __$ChapterEditorNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentPageViewIdx});
}

/// @nodoc
class __$ChapterEditorNavigationStateCopyWithImpl<$Res>
    extends _$ChapterEditorNavigationStateCopyWithImpl<$Res>
    implements _$ChapterEditorNavigationStateCopyWith<$Res> {
  __$ChapterEditorNavigationStateCopyWithImpl(
      _ChapterEditorNavigationState _value,
      $Res Function(_ChapterEditorNavigationState) _then)
      : super(_value, (v) => _then(v as _ChapterEditorNavigationState));

  @override
  _ChapterEditorNavigationState get _value =>
      super._value as _ChapterEditorNavigationState;

  @override
  $Res call({
    Object currentPageViewIdx = freezed,
  }) {
    return _then(_ChapterEditorNavigationState(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx as int,
    ));
  }
}

/// @nodoc
class _$_ChapterEditorNavigationState implements _ChapterEditorNavigationState {
  const _$_ChapterEditorNavigationState({@required this.currentPageViewIdx})
      : assert(currentPageViewIdx != null);

  @override
  final int currentPageViewIdx;

  @override
  String toString() {
    return 'ChapterEditorNavigationState(currentPageViewIdx: $currentPageViewIdx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChapterEditorNavigationState &&
            (identical(other.currentPageViewIdx, currentPageViewIdx) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageViewIdx, currentPageViewIdx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPageViewIdx);

  @JsonKey(ignore: true)
  @override
  _$ChapterEditorNavigationStateCopyWith<_ChapterEditorNavigationState>
      get copyWith => __$ChapterEditorNavigationStateCopyWithImpl<
          _ChapterEditorNavigationState>(this, _$identity);
}

abstract class _ChapterEditorNavigationState
    implements ChapterEditorNavigationState {
  const factory _ChapterEditorNavigationState(
      {@required int currentPageViewIdx}) = _$_ChapterEditorNavigationState;

  @override
  int get currentPageViewIdx;
  @override
  @JsonKey(ignore: true)
  _$ChapterEditorNavigationStateCopyWith<_ChapterEditorNavigationState>
      get copyWith;
}
