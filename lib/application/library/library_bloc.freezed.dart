// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
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
abstract class _$$BranchDeletedCopyWith<$Res> {
  factory _$$BranchDeletedCopyWith(
          _$BranchDeleted value, $Res Function(_$BranchDeleted) then) =
      __$$BranchDeletedCopyWithImpl<$Res>;
  $Res call({UniqueID uid});
}

/// @nodoc
class __$$BranchDeletedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$BranchDeletedCopyWith<$Res> {
  __$$BranchDeletedCopyWithImpl(
      _$BranchDeleted _value, $Res Function(_$BranchDeleted) _then)
      : super(_value, (v) => _then(v as _$BranchDeleted));

  @override
  _$BranchDeleted get _value => super._value as _$BranchDeleted;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$BranchDeleted(
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
            other is _$BranchDeleted &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$BranchDeletedCopyWith<_$BranchDeleted> get copyWith =>
      __$$BranchDeletedCopyWithImpl<_$BranchDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return branchDeleted(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return branchDeleted?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
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
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return branchDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return branchDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
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
  const factory BranchDeleted(final UniqueID uid) = _$BranchDeleted;

  UniqueID get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BranchDeletedCopyWith<_$BranchDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BranchUpdatedCopyWith<$Res> {
  factory _$$BranchUpdatedCopyWith(
          _$BranchUpdated value, $Res Function(_$BranchUpdated) then) =
      __$$BranchUpdatedCopyWithImpl<$Res>;
  $Res call({Branch branch});

  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$$BranchUpdatedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$BranchUpdatedCopyWith<$Res> {
  __$$BranchUpdatedCopyWithImpl(
      _$BranchUpdated _value, $Res Function(_$BranchUpdated) _then)
      : super(_value, (v) => _then(v as _$BranchUpdated));

  @override
  _$BranchUpdated get _value => super._value as _$BranchUpdated;

  @override
  $Res call({
    Object? branch = freezed,
  }) {
    return _then(_$BranchUpdated(
      branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ));
  }

  @override
  $BranchCopyWith<$Res> get branch {
    return $BranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }
}

/// @nodoc

class _$BranchUpdated implements BranchUpdated {
  const _$BranchUpdated(this.branch);

  @override
  final Branch branch;

  @override
  String toString() {
    return 'LibraryEvent.branchUpdated(branch: $branch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchUpdated &&
            const DeepCollectionEquality().equals(other.branch, branch));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(branch));

  @JsonKey(ignore: true)
  @override
  _$$BranchUpdatedCopyWith<_$BranchUpdated> get copyWith =>
      __$$BranchUpdatedCopyWithImpl<_$BranchUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return branchUpdated(branch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return branchUpdated?.call(branch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (branchUpdated != null) {
      return branchUpdated(branch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return branchUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return branchUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (branchUpdated != null) {
      return branchUpdated(this);
    }
    return orElse();
  }
}

abstract class BranchUpdated implements LibraryEvent {
  const factory BranchUpdated(final Branch branch) = _$BranchUpdated;

  Branch get branch => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BranchUpdatedCopyWith<_$BranchUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, (v) => _then(v as _$Init));

  @override
  _$Init get _value => super._value as _$Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'LibraryEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements LibraryEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$PageViewIndexChangedCopyWith<$Res> {
  factory _$$PageViewIndexChangedCopyWith(_$PageViewIndexChanged value,
          $Res Function(_$PageViewIndexChanged) then) =
      __$$PageViewIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$PageViewIndexChangedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$PageViewIndexChangedCopyWith<$Res> {
  __$$PageViewIndexChangedCopyWithImpl(_$PageViewIndexChanged _value,
      $Res Function(_$PageViewIndexChanged) _then)
      : super(_value, (v) => _then(v as _$PageViewIndexChanged));

  @override
  _$PageViewIndexChanged get _value => super._value as _$PageViewIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$PageViewIndexChanged(
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
            other is _$PageViewIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$PageViewIndexChangedCopyWith<_$PageViewIndexChanged> get copyWith =>
      __$$PageViewIndexChangedCopyWithImpl<_$PageViewIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
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
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return pageViewIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
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
  const factory PageViewIndexChanged(final int index) = _$PageViewIndexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PageViewIndexChangedCopyWith<_$PageViewIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionFetchedCopyWith<$Res> {
  factory _$$SessionFetchedCopyWith(
          _$SessionFetched value, $Res Function(_$SessionFetched) then) =
      __$$SessionFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionFetchedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$SessionFetchedCopyWith<$Res> {
  __$$SessionFetchedCopyWithImpl(
      _$SessionFetched _value, $Res Function(_$SessionFetched) _then)
      : super(_value, (v) => _then(v as _$SessionFetched));

  @override
  _$SessionFetched get _value => super._value as _$SessionFetched;
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
        (other.runtimeType == runtimeType && other is _$SessionFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
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
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
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
abstract class _$$TreeDeletedCopyWith<$Res> {
  factory _$$TreeDeletedCopyWith(
          _$TreeDeleted value, $Res Function(_$TreeDeleted) then) =
      __$$TreeDeletedCopyWithImpl<$Res>;
  $Res call({UniqueID uid});
}

/// @nodoc
class __$$TreeDeletedCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$TreeDeletedCopyWith<$Res> {
  __$$TreeDeletedCopyWithImpl(
      _$TreeDeleted _value, $Res Function(_$TreeDeleted) _then)
      : super(_value, (v) => _then(v as _$TreeDeleted));

  @override
  _$TreeDeleted get _value => super._value as _$TreeDeleted;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$TreeDeleted(
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
            other is _$TreeDeleted &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$TreeDeletedCopyWith<_$TreeDeleted> get copyWith =>
      __$$TreeDeletedCopyWithImpl<_$TreeDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return treeDeleted(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return treeDeleted?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
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
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return treeDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return treeDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
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
  const factory TreeDeleted(final UniqueID uid) = _$TreeDeleted;

  UniqueID get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TreeDeletedCopyWith<_$TreeDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeUpdatedCopyWith<$Res> {
  factory _$$TreeUpdatedCopyWith(
          _$TreeUpdated value, $Res Function(_$TreeUpdated) then) =
      __$$TreeUpdatedCopyWithImpl<$Res>;
  $Res call({Tree tree});

  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$TreeUpdatedCopyWithImpl<$Res> extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$TreeUpdatedCopyWith<$Res> {
  __$$TreeUpdatedCopyWithImpl(
      _$TreeUpdated _value, $Res Function(_$TreeUpdated) _then)
      : super(_value, (v) => _then(v as _$TreeUpdated));

  @override
  _$TreeUpdated get _value => super._value as _$TreeUpdated;

  @override
  $Res call({
    Object? tree = freezed,
  }) {
    return _then(_$TreeUpdated(
      tree == freezed
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
    ));
  }

  @override
  $TreeCopyWith<$Res> get tree {
    return $TreeCopyWith<$Res>(_value.tree, (value) {
      return _then(_value.copyWith(tree: value));
    });
  }
}

/// @nodoc

class _$TreeUpdated implements TreeUpdated {
  const _$TreeUpdated(this.tree);

  @override
  final Tree tree;

  @override
  String toString() {
    return 'LibraryEvent.treeUpdated(tree: $tree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeUpdated &&
            const DeepCollectionEquality().equals(other.tree, tree));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tree));

  @JsonKey(ignore: true)
  @override
  _$$TreeUpdatedCopyWith<_$TreeUpdated> get copyWith =>
      __$$TreeUpdatedCopyWithImpl<_$TreeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return treeUpdated(tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return treeUpdated?.call(tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (treeUpdated != null) {
      return treeUpdated(tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchDeleted value) branchDeleted,
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return treeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return treeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
    required TResult orElse(),
  }) {
    if (treeUpdated != null) {
      return treeUpdated(this);
    }
    return orElse();
  }
}

abstract class TreeUpdated implements LibraryEvent {
  const factory TreeUpdated(final Tree tree) = _$TreeUpdated;

  Tree get tree => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TreeUpdatedCopyWith<_$TreeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerticalNavbarIndexChangedCopyWith<$Res> {
  factory _$$VerticalNavbarIndexChangedCopyWith(
          _$VerticalNavbarIndexChanged value,
          $Res Function(_$VerticalNavbarIndexChanged) then) =
      __$$VerticalNavbarIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$VerticalNavbarIndexChangedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$VerticalNavbarIndexChangedCopyWith<$Res> {
  __$$VerticalNavbarIndexChangedCopyWithImpl(
      _$VerticalNavbarIndexChanged _value,
      $Res Function(_$VerticalNavbarIndexChanged) _then)
      : super(_value, (v) => _then(v as _$VerticalNavbarIndexChanged));

  @override
  _$VerticalNavbarIndexChanged get _value =>
      super._value as _$VerticalNavbarIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$VerticalNavbarIndexChanged(
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
            other is _$VerticalNavbarIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$VerticalNavbarIndexChangedCopyWith<_$VerticalNavbarIndexChanged>
      get copyWith => __$$VerticalNavbarIndexChangedCopyWithImpl<
          _$VerticalNavbarIndexChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid) branchDeleted,
    required TResult Function(Branch branch) branchUpdated,
    required TResult Function() init,
    required TResult Function(int index) pageViewIndexChanged,
    required TResult Function() sessionFetched,
    required TResult Function(UniqueID uid) treeDeleted,
    required TResult Function(Tree tree) treeUpdated,
    required TResult Function(int index) verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
    TResult Function(int index)? verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid)? branchDeleted,
    TResult Function(Branch branch)? branchUpdated,
    TResult Function()? init,
    TResult Function(int index)? pageViewIndexChanged,
    TResult Function()? sessionFetched,
    TResult Function(UniqueID uid)? treeDeleted,
    TResult Function(Tree tree)? treeUpdated,
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
    required TResult Function(BranchUpdated value) branchUpdated,
    required TResult Function(Init value) init,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(TreeDeleted value) treeDeleted,
    required TResult Function(TreeUpdated value) treeUpdated,
    required TResult Function(VerticalNavbarIndexChanged value)
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
    TResult Function(VerticalNavbarIndexChanged value)?
        verticalNavbarIndexChanged,
  }) {
    return verticalNavbarIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchDeleted value)? branchDeleted,
    TResult Function(BranchUpdated value)? branchUpdated,
    TResult Function(Init value)? init,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(TreeDeleted value)? treeDeleted,
    TResult Function(TreeUpdated value)? treeUpdated,
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
  const factory VerticalNavbarIndexChanged(final int index) =
      _$VerticalNavbarIndexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VerticalNavbarIndexChangedCopyWith<_$VerticalNavbarIndexChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LibraryState {
  List<Branch> get bookmarkedBranches => throw _privateConstructorUsedError;
  List<Tree> get bookmarkedTree => throw _privateConstructorUsedError;
  List<Branch> get branches => throw _privateConstructorUsedError;
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  int get currentVerticalNavbarIdx => throw _privateConstructorUsedError;
  Option<Result<None, CoreFailure>> get failureOption =>
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
      Option<Result<None, CoreFailure>> failureOption,
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
              as Option<Result<None, CoreFailure>>,
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
abstract class _$$_LibraryStateCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$$_LibraryStateCopyWith(
          _$_LibraryState value, $Res Function(_$_LibraryState) then) =
      __$$_LibraryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Branch> bookmarkedBranches,
      List<Tree> bookmarkedTree,
      List<Branch> branches,
      int currentPageViewIdx,
      int currentVerticalNavbarIdx,
      Option<Result<None, CoreFailure>> failureOption,
      bool isProcessing,
      User session,
      List<Tree> trees});

  @override
  $UserCopyWith<$Res> get session;
}

/// @nodoc
class __$$_LibraryStateCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res>
    implements _$$_LibraryStateCopyWith<$Res> {
  __$$_LibraryStateCopyWithImpl(
      _$_LibraryState _value, $Res Function(_$_LibraryState) _then)
      : super(_value, (v) => _then(v as _$_LibraryState));

  @override
  _$_LibraryState get _value => super._value as _$_LibraryState;

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
    return _then(_$_LibraryState(
      bookmarkedBranches: bookmarkedBranches == freezed
          ? _value._bookmarkedBranches
          : bookmarkedBranches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      bookmarkedTree: bookmarkedTree == freezed
          ? _value._bookmarkedTree
          : bookmarkedTree // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
      branches: branches == freezed
          ? _value._branches
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
              as Option<Result<None, CoreFailure>>,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User,
      trees: trees == freezed
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc

class _$_LibraryState implements _LibraryState {
  const _$_LibraryState(
      {required final List<Branch> bookmarkedBranches,
      required final List<Tree> bookmarkedTree,
      required final List<Branch> branches,
      required this.currentPageViewIdx,
      required this.currentVerticalNavbarIdx,
      required this.failureOption,
      required this.isProcessing,
      required this.session,
      required final List<Tree> trees})
      : _bookmarkedBranches = bookmarkedBranches,
        _bookmarkedTree = bookmarkedTree,
        _branches = branches,
        _trees = trees;

  final List<Branch> _bookmarkedBranches;
  @override
  List<Branch> get bookmarkedBranches {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarkedBranches);
  }

  final List<Tree> _bookmarkedTree;
  @override
  List<Tree> get bookmarkedTree {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarkedTree);
  }

  final List<Branch> _branches;
  @override
  List<Branch> get branches {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  final int currentPageViewIdx;
  @override
  final int currentVerticalNavbarIdx;
  @override
  final Option<Result<None, CoreFailure>> failureOption;
  @override
  final bool isProcessing;
  @override
  final User session;
  final List<Tree> _trees;
  @override
  List<Tree> get trees {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'LibraryState(bookmarkedBranches: $bookmarkedBranches, bookmarkedTree: $bookmarkedTree, branches: $branches, currentPageViewIdx: $currentPageViewIdx, currentVerticalNavbarIdx: $currentVerticalNavbarIdx, failureOption: $failureOption, isProcessing: $isProcessing, session: $session, trees: $trees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryState &&
            const DeepCollectionEquality()
                .equals(other._bookmarkedBranches, _bookmarkedBranches) &&
            const DeepCollectionEquality()
                .equals(other._bookmarkedTree, _bookmarkedTree) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            const DeepCollectionEquality()
                .equals(other.currentPageViewIdx, currentPageViewIdx) &&
            const DeepCollectionEquality().equals(
                other.currentVerticalNavbarIdx, currentVerticalNavbarIdx) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bookmarkedBranches),
      const DeepCollectionEquality().hash(_bookmarkedTree),
      const DeepCollectionEquality().hash(_branches),
      const DeepCollectionEquality().hash(currentPageViewIdx),
      const DeepCollectionEquality().hash(currentVerticalNavbarIdx),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(_trees));

  @JsonKey(ignore: true)
  @override
  _$$_LibraryStateCopyWith<_$_LibraryState> get copyWith =>
      __$$_LibraryStateCopyWithImpl<_$_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
      {required final List<Branch> bookmarkedBranches,
      required final List<Tree> bookmarkedTree,
      required final List<Branch> branches,
      required final int currentPageViewIdx,
      required final int currentVerticalNavbarIdx,
      required final Option<Result<None, CoreFailure>> failureOption,
      required final bool isProcessing,
      required final User session,
      required final List<Tree> trees}) = _$_LibraryState;

  @override
  List<Branch> get bookmarkedBranches => throw _privateConstructorUsedError;
  @override
  List<Tree> get bookmarkedTree => throw _privateConstructorUsedError;
  @override
  List<Branch> get branches => throw _privateConstructorUsedError;
  @override
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  @override
  int get currentVerticalNavbarIdx => throw _privateConstructorUsedError;
  @override
  Option<Result<None, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isProcessing => throw _privateConstructorUsedError;
  @override
  User get session => throw _privateConstructorUsedError;
  @override
  List<Tree> get trees => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryStateCopyWith<_$_LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}
