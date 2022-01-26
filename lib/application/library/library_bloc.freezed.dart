// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LibraryEventTearOff {
  const _$LibraryEventTearOff();

  BranchDeleted branchDeleted(UniqueID uid) {
    return BranchDeleted(
      uid,
    );
  }

  InitBloc initBloc() {
    return const InitBloc();
  }

  PageViewIndexChanged pageViewIndexChanged(int index) {
    return PageViewIndexChanged(
      index,
    );
  }

  SessionFetched sessionFetched() {
    return const SessionFetched();
  }

  TreeDeleted treeDeleted(UniqueID uid) {
    return TreeDeleted(
      uid,
    );
  }

  VerticalNavbarIndexChanged verticalNavbarIndexChanged(int index) {
    return VerticalNavbarIndexChanged(
      index,
    );
  }
}

/// @nodoc
const $LibraryEvent = _$LibraryEventTearOff();

/// @nodoc
mixin _$LibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryEventCopyWith<$Res> {
  factory $LibraryEventCopyWith(
          LibraryEvent value, $Res Function(LibraryEvent) then) =
      _$LibraryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LibraryEventCopyWithImpl<$Res> implements $LibraryEventCopyWith<$Res> {
  _$LibraryEventCopyWithImpl(this._value, this._then);

  final LibraryEvent _value;
  // ignore: unused_field
  final $Res Function(LibraryEvent) _then;
}

/// @nodoc
abstract class $BranchDeletedCopyWith<$Res> {
  factory $BranchDeletedCopyWith(
          BranchDeleted value, $Res Function(BranchDeleted) then) =
      _$BranchDeletedCopyWithImpl<$Res>;
  $Res call({UniqueID uid});
}

/// @nodoc
class _$BranchDeletedCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements $BranchDeletedCopyWith<$Res> {
  _$BranchDeletedCopyWithImpl(
      BranchDeleted _value, $Res Function(BranchDeleted) _then)
      : super(_value, (v) => _then(v as BranchDeleted));

  @override
  BranchDeleted get _value => super._value as BranchDeleted;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(BranchDeleted(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc

class _$BranchDeleted implements BranchDeleted {
  const _$BranchDeleted(this.uid);

  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'LibraryEvent.branchDeleted(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BranchDeleted &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  $BranchDeletedCopyWith<BranchDeleted> get copyWith =>
      _$BranchDeletedCopyWithImpl<BranchDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return branchDeleted(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return branchDeleted?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (branchDeleted != null) {
      return branchDeleted(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return branchDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return branchDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (branchDeleted != null) {
      return branchDeleted(this);
    }
    return orElse();
  }
}

abstract class BranchDeleted implements LibraryEvent {
  const factory BranchDeleted(UniqueID uid) = _$BranchDeleted;

  UniqueID get uid;
  @JsonKey(ignore: true)
  $BranchDeletedCopyWith<BranchDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitBlocCopyWith<$Res> {
  factory $InitBlocCopyWith(InitBloc value, $Res Function(InitBloc) then) =
      _$InitBlocCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitBlocCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements $InitBlocCopyWith<$Res> {
  _$InitBlocCopyWithImpl(InitBloc _value, $Res Function(InitBloc) _then)
      : super(_value, (v) => _then(v as InitBloc));

  @override
  InitBloc get _value => super._value as InitBloc;
}

/// @nodoc

class _$InitBloc implements InitBloc {
  const _$InitBloc();

  @override
  String toString() {
    return 'LibraryEvent.initBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitBloc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return initBloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return initBloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (initBloc != null) {
      return initBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return initBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return initBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (initBloc != null) {
      return initBloc(this);
    }
    return orElse();
  }
}

abstract class InitBloc implements LibraryEvent {
  const factory InitBloc() = _$InitBloc;
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
    extends _$LibraryEventCopyWithImpl<$Res>
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
    return 'LibraryEvent.pageViewIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageViewIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      _$PageViewIndexChangedCopyWithImpl<PageViewIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
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
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
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

abstract class PageViewIndexChanged implements LibraryEvent {
  const factory PageViewIndexChanged(int index) = _$PageViewIndexChanged;

  int get index;
  @JsonKey(ignore: true)
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionFetchedCopyWith<$Res> {
  factory $SessionFetchedCopyWith(
          SessionFetched value, $Res Function(SessionFetched) then) =
      _$SessionFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionFetchedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements $SessionFetchedCopyWith<$Res> {
  _$SessionFetchedCopyWithImpl(
      SessionFetched _value, $Res Function(SessionFetched) _then)
      : super(_value, (v) => _then(v as SessionFetched));

  @override
  SessionFetched get _value => super._value as SessionFetched;
}

/// @nodoc

class _$SessionFetched implements SessionFetched {
  const _$SessionFetched();

  @override
  String toString() {
    return 'LibraryEvent.sessionFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SessionFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements LibraryEvent {
  const factory SessionFetched() = _$SessionFetched;
}

/// @nodoc
abstract class $TreeDeletedCopyWith<$Res> {
  factory $TreeDeletedCopyWith(
          TreeDeleted value, $Res Function(TreeDeleted) then) =
      _$TreeDeletedCopyWithImpl<$Res>;
  $Res call({UniqueID uid});
}

/// @nodoc
class _$TreeDeletedCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements $TreeDeletedCopyWith<$Res> {
  _$TreeDeletedCopyWithImpl(
      TreeDeleted _value, $Res Function(TreeDeleted) _then)
      : super(_value, (v) => _then(v as TreeDeleted));

  @override
  TreeDeleted get _value => super._value as TreeDeleted;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(TreeDeleted(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc

class _$TreeDeleted implements TreeDeleted {
  const _$TreeDeleted(this.uid);

  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'LibraryEvent.treeDeleted(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TreeDeleted &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  $TreeDeletedCopyWith<TreeDeleted> get copyWith =>
      _$TreeDeletedCopyWithImpl<TreeDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return treeDeleted(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return treeDeleted?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (treeDeleted != null) {
      return treeDeleted(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return treeDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return treeDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (treeDeleted != null) {
      return treeDeleted(this);
    }
    return orElse();
  }
}

abstract class TreeDeleted implements LibraryEvent {
  const factory TreeDeleted(UniqueID uid) = _$TreeDeleted;

  UniqueID get uid;
  @JsonKey(ignore: true)
  $TreeDeletedCopyWith<TreeDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerticalNavbarIndexChangedCopyWith<$Res> {
  factory $VerticalNavbarIndexChangedCopyWith(VerticalNavbarIndexChanged value,
          $Res Function(VerticalNavbarIndexChanged) then) =
      _$VerticalNavbarIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$VerticalNavbarIndexChangedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
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
    return 'LibraryEvent.verticalNavbarIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerticalNavbarIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged>
      get copyWith =>
          _$VerticalNavbarIndexChangedCopyWithImpl<VerticalNavbarIndexChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function() initBloc,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function()? initBloc,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
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
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(InitBloc value) initBloc,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(InitBloc value)? initBloc,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
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

abstract class VerticalNavbarIndexChanged implements LibraryEvent {
  const factory VerticalNavbarIndexChanged(int index) =
      _$VerticalNavbarIndexChanged;

  int get index;
  @JsonKey(ignore: true)
  $VerticalNavbarIndexChangedCopyWith<VerticalNavbarIndexChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LibraryStateTearOff {
  const _$LibraryStateTearOff();

  _LibraryState call(
      {required List<Branch> bookmarkedBranches,
      required List<Tree> bookmarkedTree,
      required List<Branch> branches,
      required int currentPageViewIdx,
      required int currentVerticalNavbarIdx,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isProcessing,
      required User session,
      required List<Tree> trees}) {
    return _LibraryState(
      bookmarkedBranches: bookmarkedBranches,
      bookmarkedTree: bookmarkedTree,
      branches: branches,
      currentPageViewIdx: currentPageViewIdx,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx,
      failureOption: failureOption,
      isProcessing: isProcessing,
      session: session,
      trees: trees,
    );
  }
}

/// @nodoc
const $LibraryState = _$LibraryStateTearOff();

/// @nodoc
mixin _$LibraryState {
  List<Branch> get bookmarkedBranches => throw _privateConstructorUsedError;
  List<Tree> get bookmarkedTree => throw _privateConstructorUsedError;
  List<Branch> get branches => throw _privateConstructorUsedError;
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  int get currentVerticalNavbarIdx => throw _privateConstructorUsedError;
  Option<Result<None<Object>, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  User get session => throw _privateConstructorUsedError;
  List<Tree> get trees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryStateCopyWith<LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Branch> bookmarkedBranches,
      List<Tree> bookmarkedTree,
      List<Branch> branches,
      int currentPageViewIdx,
      int currentVerticalNavbarIdx,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isProcessing,
      User session,
      List<Tree> trees});

  $UserCopyWith<$Res> get session;
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res> implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  final LibraryState _value;
  // ignore: unused_field
  final $Res Function(LibraryState) _then;

  @override
  $Res call({
    Object? bookmarkedBranches = freezed,
    Object? bookmarkedTree = freezed,
    Object? branches = freezed,
    Object? currentPageViewIdx = freezed,
    Object? currentVerticalNavbarIdx = freezed,
    Object? failureOption = freezed,
    Object? isProcessing = freezed,
    Object? session = freezed,
    Object? trees = freezed,
  }) {
    return _then(_value.copyWith(
      bookmarkedBranches: bookmarkedBranches == freezed
          ? _value.bookmarkedBranches
          : bookmarkedBranches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      bookmarkedTree: bookmarkedTree == freezed
          ? _value.bookmarkedTree
          : bookmarkedTree // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
      branches: branches == freezed
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx // ignore: cast_nullable_to_non_nullable
              as int,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
      trees: trees == freezed
          ? _value.trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
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
abstract class _$LibraryStateCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$LibraryStateCopyWith(
          _LibraryState value, $Res Function(_LibraryState) then) =
      __$LibraryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Branch> bookmarkedBranches,
      List<Tree> bookmarkedTree,
      List<Branch> branches,
      int currentPageViewIdx,
      int currentVerticalNavbarIdx,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isProcessing,
      User session,
      List<Tree> trees});

  @override
  $UserCopyWith<$Res> get session;
}

/// @nodoc
class __$LibraryStateCopyWithImpl<$Res> extends _$LibraryStateCopyWithImpl<$Res>
    implements _$LibraryStateCopyWith<$Res> {
  __$LibraryStateCopyWithImpl(
      _LibraryState _value, $Res Function(_LibraryState) _then)
      : super(_value, (v) => _then(v as _LibraryState));

  @override
  _LibraryState get _value => super._value as _LibraryState;

  @override
  $Res call({
    Object? bookmarkedBranches = freezed,
    Object? bookmarkedTree = freezed,
    Object? branches = freezed,
    Object? currentPageViewIdx = freezed,
    Object? currentVerticalNavbarIdx = freezed,
    Object? failureOption = freezed,
    Object? isProcessing = freezed,
    Object? session = freezed,
    Object? trees = freezed,
  }) {
    return _then(_LibraryState(
      bookmarkedBranches: bookmarkedBranches == freezed
          ? _value.bookmarkedBranches
          : bookmarkedBranches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      bookmarkedTree: bookmarkedTree == freezed
          ? _value.bookmarkedTree
          : bookmarkedTree // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
      branches: branches == freezed
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      currentVerticalNavbarIdx: currentVerticalNavbarIdx == freezed
          ? _value.currentVerticalNavbarIdx
          : currentVerticalNavbarIdx // ignore: cast_nullable_to_non_nullable
              as int,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
      trees: trees == freezed
          ? _value.trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc

class _$_LibraryState implements _LibraryState {
  const _$_LibraryState(
      {required this.bookmarkedBranches,
      required this.bookmarkedTree,
      required this.branches,
      required this.currentPageViewIdx,
      required this.currentVerticalNavbarIdx,
      required this.failureOption,
      required this.isProcessing,
      required this.session,
      required this.trees});

  @override
  final List<Branch> bookmarkedBranches;
  @override
  final List<Tree> bookmarkedTree;
  @override
  final List<Branch> branches;
  @override
  final int currentPageViewIdx;
  @override
  final int currentVerticalNavbarIdx;
  @override
  final Option<Result<None<Object>, CoreFailure>> failureOption;
  @override
  final bool isProcessing;
  @override
  final User session;
  @override
  final List<Tree> trees;

  @override
  String toString() {
    return 'LibraryState(bookmarkedBranches: $bookmarkedBranches, bookmarkedTree: $bookmarkedTree, branches: $branches, currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx, failureOption: $failureOption, isProcessing: $isProcessing, session: $session, trees: $trees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LibraryState &&
            const DeepCollectionEquality()
                .equals(other.bookmarkedBranches, bookmarkedBranches) &&
            const DeepCollectionEquality()
                .equals(other.bookmarkedTree, bookmarkedTree) &&
            const DeepCollectionEquality().equals(other.branches, branches) &&
            const DeepCollectionEquality()
                .equals(other.currentPageViewIdx, currentPageViewIdx) &&
            const DeepCollectionEquality().equals(
                other.currentVerticalNavbarIdx, currentVerticalNavbarIdx) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality().equals(other.trees, trees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookmarkedBranches),
      const DeepCollectionEquality().hash(bookmarkedTree),
      const DeepCollectionEquality().hash(branches),
      const DeepCollectionEquality().hash(currentPageViewIdx),
      const DeepCollectionEquality().hash(currentVerticalNavbarIdx),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(trees));

  @JsonKey(ignore: true)
  @override
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      __$LibraryStateCopyWithImpl<_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
      {required List<Branch> bookmarkedBranches,
      required List<Tree> bookmarkedTree,
      required List<Branch> branches,
      required int currentPageViewIdx,
      required int currentVerticalNavbarIdx,
      required Option<Result<None<Object>, CoreFailure>> failureOption,
      required bool isProcessing,
      required User session,
      required List<Tree> trees}) = _$_LibraryState;

  @override
  List<Branch> get bookmarkedBranches;
  @override
  List<Tree> get bookmarkedTree;
  @override
  List<Branch> get branches;
  @override
  int get currentPageViewIdx;
  @override
  int get currentVerticalNavbarIdx;
  @override
  Option<Result<None<Object>, CoreFailure>> get failureOption;
  @override
  bool get isProcessing;
  @override
  User get session;
  @override
  List<Tree> get trees;
  @override
  @JsonKey(ignore: true)
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}
