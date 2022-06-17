// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tree_bloc.application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TreeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeEventCopyWith<$Res> {
  factory $TreeEventCopyWith(TreeEvent value, $Res Function(TreeEvent) then) =
      _$TreeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TreeEventCopyWithImpl<$Res> implements $TreeEventCopyWith<$Res> {
  _$TreeEventCopyWithImpl(this._value, this._then);

  final TreeEvent _value;
  // ignore: unused_field
  final $Res Function(TreeEvent) _then;
}

/// @nodoc
abstract class _$$LaunchWithUIDCopyWith<$Res> {
  factory _$$LaunchWithUIDCopyWith(
          _$LaunchWithUID value, $Res Function(_$LaunchWithUID) then) =
      __$$LaunchWithUIDCopyWithImpl<$Res>;
  $Res call({UniqueID uid, Tree? tree});

  $TreeCopyWith<$Res>? get tree;
}

/// @nodoc
class __$$LaunchWithUIDCopyWithImpl<$Res> extends _$TreeEventCopyWithImpl<$Res>
    implements _$$LaunchWithUIDCopyWith<$Res> {
  __$$LaunchWithUIDCopyWithImpl(
      _$LaunchWithUID _value, $Res Function(_$LaunchWithUID) _then)
      : super(_value, (v) => _then(v as _$LaunchWithUID));

  @override
  _$LaunchWithUID get _value => super._value as _$LaunchWithUID;

  @override
  $Res call({
    Object? uid = freezed,
    Object? tree = freezed,
  }) {
    return _then(_$LaunchWithUID(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      tree: tree == freezed
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree?,
    ));
  }

  @override
  $TreeCopyWith<$Res>? get tree {
    if (_value.tree == null) {
      return null;
    }

    return $TreeCopyWith<$Res>(_value.tree!, (value) {
      return _then(_value.copyWith(tree: value));
    });
  }
}

/// @nodoc

class _$LaunchWithUID implements LaunchWithUID {
  const _$LaunchWithUID(this.uid, {this.tree});

  @override
  final UniqueID uid;
  @override
  final Tree? tree;

  @override
  String toString() {
    return 'TreeEvent.launchWithUID(uid: $uid, tree: $tree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchWithUID &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.tree, tree));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(tree));

  @JsonKey(ignore: true)
  @override
  _$$LaunchWithUIDCopyWith<_$LaunchWithUID> get copyWith =>
      __$$LaunchWithUIDCopyWithImpl<_$LaunchWithUID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return launchWithUID(uid, tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return launchWithUID?.call(uid, tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (launchWithUID != null) {
      return launchWithUID(uid, tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return launchWithUID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return launchWithUID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (launchWithUID != null) {
      return launchWithUID(this);
    }
    return orElse();
  }
}

abstract class LaunchWithUID implements TreeEvent {
  const factory LaunchWithUID(final UniqueID uid, {final Tree? tree}) =
      _$LaunchWithUID;

  UniqueID get uid => throw _privateConstructorUsedError;
  Tree? get tree => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LaunchWithUIDCopyWith<_$LaunchWithUID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeSetCopyWith<$Res> {
  factory _$$TreeSetCopyWith(_$TreeSet value, $Res Function(_$TreeSet) then) =
      __$$TreeSetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TreeSetCopyWithImpl<$Res> extends _$TreeEventCopyWithImpl<$Res>
    implements _$$TreeSetCopyWith<$Res> {
  __$$TreeSetCopyWithImpl(_$TreeSet _value, $Res Function(_$TreeSet) _then)
      : super(_value, (v) => _then(v as _$TreeSet));

  @override
  _$TreeSet get _value => super._value as _$TreeSet;
}

/// @nodoc

class _$TreeSet implements TreeSet {
  const _$TreeSet();

  @override
  String toString() {
    return 'TreeEvent.treeSet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TreeSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return treeSet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return treeSet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (treeSet != null) {
      return treeSet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return treeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return treeSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (treeSet != null) {
      return treeSet(this);
    }
    return orElse();
  }
}

abstract class TreeSet implements TreeEvent {
  const factory TreeSet() = _$TreeSet;
}

/// @nodoc
abstract class _$$SessionFetchedCopyWith<$Res> {
  factory _$$SessionFetchedCopyWith(
          _$SessionFetched value, $Res Function(_$SessionFetched) then) =
      __$$SessionFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionFetchedCopyWithImpl<$Res> extends _$TreeEventCopyWithImpl<$Res>
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
    return 'TreeEvent.sessionFetched()';
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
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return sessionFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return sessionFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
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
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return sessionFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return sessionFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (sessionFetched != null) {
      return sessionFetched(this);
    }
    return orElse();
  }
}

abstract class SessionFetched implements TreeEvent {
  const factory SessionFetched() = _$SessionFetched;
}

/// @nodoc
abstract class _$$AuthorLoadedCopyWith<$Res> {
  factory _$$AuthorLoadedCopyWith(
          _$AuthorLoaded value, $Res Function(_$AuthorLoaded) then) =
      __$$AuthorLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorLoadedCopyWithImpl<$Res> extends _$TreeEventCopyWithImpl<$Res>
    implements _$$AuthorLoadedCopyWith<$Res> {
  __$$AuthorLoadedCopyWithImpl(
      _$AuthorLoaded _value, $Res Function(_$AuthorLoaded) _then)
      : super(_value, (v) => _then(v as _$AuthorLoaded));

  @override
  _$AuthorLoaded get _value => super._value as _$AuthorLoaded;
}

/// @nodoc

class _$AuthorLoaded implements AuthorLoaded {
  const _$AuthorLoaded();

  @override
  String toString() {
    return 'TreeEvent.authorLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return authorLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return authorLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (authorLoaded != null) {
      return authorLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return authorLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return authorLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (authorLoaded != null) {
      return authorLoaded(this);
    }
    return orElse();
  }
}

abstract class AuthorLoaded implements TreeEvent {
  const factory AuthorLoaded() = _$AuthorLoaded;
}

/// @nodoc
abstract class _$$SettingsFetchedCopyWith<$Res> {
  factory _$$SettingsFetchedCopyWith(
          _$SettingsFetched value, $Res Function(_$SettingsFetched) then) =
      __$$SettingsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsFetchedCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res>
    implements _$$SettingsFetchedCopyWith<$Res> {
  __$$SettingsFetchedCopyWithImpl(
      _$SettingsFetched _value, $Res Function(_$SettingsFetched) _then)
      : super(_value, (v) => _then(v as _$SettingsFetched));

  @override
  _$SettingsFetched get _value => super._value as _$SettingsFetched;
}

/// @nodoc

class _$SettingsFetched implements SettingsFetched {
  const _$SettingsFetched();

  @override
  String toString() {
    return 'TreeEvent.settingsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return settingsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return settingsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (settingsFetched != null) {
      return settingsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return settingsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return settingsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (settingsFetched != null) {
      return settingsFetched(this);
    }
    return orElse();
  }
}

abstract class SettingsFetched implements TreeEvent {
  const factory SettingsFetched() = _$SettingsFetched;
}

/// @nodoc
abstract class _$$BranchOneLoadedCopyWith<$Res> {
  factory _$$BranchOneLoadedCopyWith(
          _$BranchOneLoaded value, $Res Function(_$BranchOneLoaded) then) =
      __$$BranchOneLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchOneLoadedCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res>
    implements _$$BranchOneLoadedCopyWith<$Res> {
  __$$BranchOneLoadedCopyWithImpl(
      _$BranchOneLoaded _value, $Res Function(_$BranchOneLoaded) _then)
      : super(_value, (v) => _then(v as _$BranchOneLoaded));

  @override
  _$BranchOneLoaded get _value => super._value as _$BranchOneLoaded;
}

/// @nodoc

class _$BranchOneLoaded implements BranchOneLoaded {
  const _$BranchOneLoaded();

  @override
  String toString() {
    return 'TreeEvent.branchOneLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchOneLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return branchOneLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return branchOneLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (branchOneLoaded != null) {
      return branchOneLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return branchOneLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return branchOneLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (branchOneLoaded != null) {
      return branchOneLoaded(this);
    }
    return orElse();
  }
}

abstract class BranchOneLoaded implements TreeEvent {
  const factory BranchOneLoaded() = _$BranchOneLoaded;
}

/// @nodoc
abstract class _$$ViewsUpdatedCopyWith<$Res> {
  factory _$$ViewsUpdatedCopyWith(
          _$ViewsUpdated value, $Res Function(_$ViewsUpdated) then) =
      __$$ViewsUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewsUpdatedCopyWithImpl<$Res> extends _$TreeEventCopyWithImpl<$Res>
    implements _$$ViewsUpdatedCopyWith<$Res> {
  __$$ViewsUpdatedCopyWithImpl(
      _$ViewsUpdated _value, $Res Function(_$ViewsUpdated) _then)
      : super(_value, (v) => _then(v as _$ViewsUpdated));

  @override
  _$ViewsUpdated get _value => super._value as _$ViewsUpdated;
}

/// @nodoc

class _$ViewsUpdated implements ViewsUpdated {
  const _$ViewsUpdated();

  @override
  String toString() {
    return 'TreeEvent.viewsUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewsUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return viewsUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return viewsUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (viewsUpdated != null) {
      return viewsUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return viewsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return viewsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (viewsUpdated != null) {
      return viewsUpdated(this);
    }
    return orElse();
  }
}

abstract class ViewsUpdated implements TreeEvent {
  const factory ViewsUpdated() = _$ViewsUpdated;
}

/// @nodoc
abstract class _$$LikeStatusLoadedCopyWith<$Res> {
  factory _$$LikeStatusLoadedCopyWith(
          _$LikeStatusLoaded value, $Res Function(_$LikeStatusLoaded) then) =
      __$$LikeStatusLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikeStatusLoadedCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res>
    implements _$$LikeStatusLoadedCopyWith<$Res> {
  __$$LikeStatusLoadedCopyWithImpl(
      _$LikeStatusLoaded _value, $Res Function(_$LikeStatusLoaded) _then)
      : super(_value, (v) => _then(v as _$LikeStatusLoaded));

  @override
  _$LikeStatusLoaded get _value => super._value as _$LikeStatusLoaded;
}

/// @nodoc

class _$LikeStatusLoaded implements LikeStatusLoaded {
  const _$LikeStatusLoaded();

  @override
  String toString() {
    return 'TreeEvent.likeStatusLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikeStatusLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return likeStatusLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return likeStatusLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (likeStatusLoaded != null) {
      return likeStatusLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return likeStatusLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return likeStatusLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (likeStatusLoaded != null) {
      return likeStatusLoaded(this);
    }
    return orElse();
  }
}

abstract class LikeStatusLoaded implements TreeEvent {
  const factory LikeStatusLoaded() = _$LikeStatusLoaded;
}

/// @nodoc
abstract class _$$BranchOneNotFoundCopyWith<$Res> {
  factory _$$BranchOneNotFoundCopyWith(
          _$BranchOneNotFound value, $Res Function(_$BranchOneNotFound) then) =
      __$$BranchOneNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchOneNotFoundCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res>
    implements _$$BranchOneNotFoundCopyWith<$Res> {
  __$$BranchOneNotFoundCopyWithImpl(
      _$BranchOneNotFound _value, $Res Function(_$BranchOneNotFound) _then)
      : super(_value, (v) => _then(v as _$BranchOneNotFound));

  @override
  _$BranchOneNotFound get _value => super._value as _$BranchOneNotFound;
}

/// @nodoc

class _$BranchOneNotFound implements BranchOneNotFound {
  const _$BranchOneNotFound();

  @override
  String toString() {
    return 'TreeEvent.branchOneNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchOneNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return branchOneNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return branchOneNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (branchOneNotFound != null) {
      return branchOneNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return branchOneNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return branchOneNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (branchOneNotFound != null) {
      return branchOneNotFound(this);
    }
    return orElse();
  }
}

abstract class BranchOneNotFound implements TreeEvent {
  const factory BranchOneNotFound() = _$BranchOneNotFound;
}

/// @nodoc
abstract class _$$BookmarkButtonPressedCopyWith<$Res> {
  factory _$$BookmarkButtonPressedCopyWith(_$BookmarkButtonPressed value,
          $Res Function(_$BookmarkButtonPressed) then) =
      __$$BookmarkButtonPressedCopyWithImpl<$Res>;
  $Res call({bool isBookmarked});
}

/// @nodoc
class __$$BookmarkButtonPressedCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res>
    implements _$$BookmarkButtonPressedCopyWith<$Res> {
  __$$BookmarkButtonPressedCopyWithImpl(_$BookmarkButtonPressed _value,
      $Res Function(_$BookmarkButtonPressed) _then)
      : super(_value, (v) => _then(v as _$BookmarkButtonPressed));

  @override
  _$BookmarkButtonPressed get _value => super._value as _$BookmarkButtonPressed;

  @override
  $Res call({
    Object? isBookmarked = freezed,
  }) {
    return _then(_$BookmarkButtonPressed(
      isBookmarked: isBookmarked == freezed
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookmarkButtonPressed implements BookmarkButtonPressed {
  const _$BookmarkButtonPressed({required this.isBookmarked});

  @override
  final bool isBookmarked;

  @override
  String toString() {
    return 'TreeEvent.bookmarkButtonPressed(isBookmarked: $isBookmarked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkButtonPressed &&
            const DeepCollectionEquality()
                .equals(other.isBookmarked, isBookmarked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isBookmarked));

  @JsonKey(ignore: true)
  @override
  _$$BookmarkButtonPressedCopyWith<_$BookmarkButtonPressed> get copyWith =>
      __$$BookmarkButtonPressedCopyWithImpl<_$BookmarkButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return bookmarkButtonPressed(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return bookmarkButtonPressed?.call(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed(isBookmarked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return bookmarkButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return bookmarkButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (bookmarkButtonPressed != null) {
      return bookmarkButtonPressed(this);
    }
    return orElse();
  }
}

abstract class BookmarkButtonPressed implements TreeEvent {
  const factory BookmarkButtonPressed({required final bool isBookmarked}) =
      _$BookmarkButtonPressed;

  bool get isBookmarked => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BookmarkButtonPressedCopyWith<_$BookmarkButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeButtonPressedCopyWith<$Res> {
  factory _$$LikeButtonPressedCopyWith(
          _$LikeButtonPressed value, $Res Function(_$LikeButtonPressed) then) =
      __$$LikeButtonPressedCopyWithImpl<$Res>;
  $Res call({bool isLiked});
}

/// @nodoc
class __$$LikeButtonPressedCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res>
    implements _$$LikeButtonPressedCopyWith<$Res> {
  __$$LikeButtonPressedCopyWithImpl(
      _$LikeButtonPressed _value, $Res Function(_$LikeButtonPressed) _then)
      : super(_value, (v) => _then(v as _$LikeButtonPressed));

  @override
  _$LikeButtonPressed get _value => super._value as _$LikeButtonPressed;

  @override
  $Res call({
    Object? isLiked = freezed,
  }) {
    return _then(_$LikeButtonPressed(
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LikeButtonPressed implements LikeButtonPressed {
  const _$LikeButtonPressed({required this.isLiked});

  @override
  final bool isLiked;

  @override
  String toString() {
    return 'TreeEvent.likeButtonPressed(isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeButtonPressed &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLiked));

  @JsonKey(ignore: true)
  @override
  _$$LikeButtonPressedCopyWith<_$LikeButtonPressed> get copyWith =>
      __$$LikeButtonPressedCopyWithImpl<_$LikeButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueID uid, Tree? tree) launchWithUID,
    required TResult Function() treeSet,
    required TResult Function() sessionFetched,
    required TResult Function() authorLoaded,
    required TResult Function() settingsFetched,
    required TResult Function() branchOneLoaded,
    required TResult Function() viewsUpdated,
    required TResult Function() likeStatusLoaded,
    required TResult Function() branchOneNotFound,
    required TResult Function(bool isBookmarked) bookmarkButtonPressed,
    required TResult Function(bool isLiked) likeButtonPressed,
  }) {
    return likeButtonPressed(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
  }) {
    return likeButtonPressed?.call(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueID uid, Tree? tree)? launchWithUID,
    TResult Function()? treeSet,
    TResult Function()? sessionFetched,
    TResult Function()? authorLoaded,
    TResult Function()? settingsFetched,
    TResult Function()? branchOneLoaded,
    TResult Function()? viewsUpdated,
    TResult Function()? likeStatusLoaded,
    TResult Function()? branchOneNotFound,
    TResult Function(bool isBookmarked)? bookmarkButtonPressed,
    TResult Function(bool isLiked)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (likeButtonPressed != null) {
      return likeButtonPressed(isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchWithUID value) launchWithUID,
    required TResult Function(TreeSet value) treeSet,
    required TResult Function(SessionFetched value) sessionFetched,
    required TResult Function(AuthorLoaded value) authorLoaded,
    required TResult Function(SettingsFetched value) settingsFetched,
    required TResult Function(BranchOneLoaded value) branchOneLoaded,
    required TResult Function(ViewsUpdated value) viewsUpdated,
    required TResult Function(LikeStatusLoaded value) likeStatusLoaded,
    required TResult Function(BranchOneNotFound value) branchOneNotFound,
    required TResult Function(BookmarkButtonPressed value)
        bookmarkButtonPressed,
    required TResult Function(LikeButtonPressed value) likeButtonPressed,
  }) {
    return likeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
  }) {
    return likeButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchWithUID value)? launchWithUID,
    TResult Function(TreeSet value)? treeSet,
    TResult Function(SessionFetched value)? sessionFetched,
    TResult Function(AuthorLoaded value)? authorLoaded,
    TResult Function(SettingsFetched value)? settingsFetched,
    TResult Function(BranchOneLoaded value)? branchOneLoaded,
    TResult Function(ViewsUpdated value)? viewsUpdated,
    TResult Function(LikeStatusLoaded value)? likeStatusLoaded,
    TResult Function(BranchOneNotFound value)? branchOneNotFound,
    TResult Function(BookmarkButtonPressed value)? bookmarkButtonPressed,
    TResult Function(LikeButtonPressed value)? likeButtonPressed,
    required TResult orElse(),
  }) {
    if (likeButtonPressed != null) {
      return likeButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LikeButtonPressed implements TreeEvent {
  const factory LikeButtonPressed({required final bool isLiked}) =
      _$LikeButtonPressed;

  bool get isLiked => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LikeButtonPressedCopyWith<_$LikeButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreeState {
  bool get authorIsUser => throw _privateConstructorUsedError;
  User? get author => throw _privateConstructorUsedError;
  Branch? get branchOne => throw _privateConstructorUsedError;
  Branch? get branchResume => throw _privateConstructorUsedError;
  Option<Result<None<Object>, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  User? get session => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  Tree get tree => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeStateCopyWith<TreeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeStateCopyWith<$Res> {
  factory $TreeStateCopyWith(TreeState value, $Res Function(TreeState) then) =
      _$TreeStateCopyWithImpl<$Res>;
  $Res call(
      {bool authorIsUser,
      User? author,
      Branch? branchOne,
      Branch? branchResume,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isBookmarked,
      bool isLiked,
      bool isProcessing,
      User? session,
      Settings settings,
      Tree tree});

  $UserCopyWith<$Res>? get author;
  $BranchCopyWith<$Res>? get branchOne;
  $BranchCopyWith<$Res>? get branchResume;
  $UserCopyWith<$Res>? get session;
  $SettingsCopyWith<$Res> get settings;
  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class _$TreeStateCopyWithImpl<$Res> implements $TreeStateCopyWith<$Res> {
  _$TreeStateCopyWithImpl(this._value, this._then);

  final TreeState _value;
  // ignore: unused_field
  final $Res Function(TreeState) _then;

  @override
  $Res call({
    Object? authorIsUser = freezed,
    Object? author = freezed,
    Object? branchOne = freezed,
    Object? branchResume = freezed,
    Object? failureOption = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? isProcessing = freezed,
    Object? session = freezed,
    Object? settings = freezed,
    Object? tree = freezed,
  }) {
    return _then(_value.copyWith(
      authorIsUser: authorIsUser == freezed
          ? _value.authorIsUser
          : authorIsUser // ignore: cast_nullable_to_non_nullable
              as bool,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      branchOne: branchOne == freezed
          ? _value.branchOne
          : branchOne // ignore: cast_nullable_to_non_nullable
              as Branch?,
      branchResume: branchResume == freezed
          ? _value.branchResume
          : branchResume // ignore: cast_nullable_to_non_nullable
              as Branch?,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isBookmarked: isBookmarked == freezed
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User?,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      tree: tree == freezed
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
    ));
  }

  @override
  $UserCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $BranchCopyWith<$Res>? get branchOne {
    if (_value.branchOne == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branchOne!, (value) {
      return _then(_value.copyWith(branchOne: value));
    });
  }

  @override
  $BranchCopyWith<$Res>? get branchResume {
    if (_value.branchResume == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branchResume!, (value) {
      return _then(_value.copyWith(branchResume: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value));
    });
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }

  @override
  $TreeCopyWith<$Res> get tree {
    return $TreeCopyWith<$Res>(_value.tree, (value) {
      return _then(_value.copyWith(tree: value));
    });
  }
}

/// @nodoc
abstract class _$$_TreeStateCopyWith<$Res> implements $TreeStateCopyWith<$Res> {
  factory _$$_TreeStateCopyWith(
          _$_TreeState value, $Res Function(_$_TreeState) then) =
      __$$_TreeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool authorIsUser,
      User? author,
      Branch? branchOne,
      Branch? branchResume,
      Option<Result<None<Object>, CoreFailure>> failureOption,
      bool isBookmarked,
      bool isLiked,
      bool isProcessing,
      User? session,
      Settings settings,
      Tree tree});

  @override
  $UserCopyWith<$Res>? get author;
  @override
  $BranchCopyWith<$Res>? get branchOne;
  @override
  $BranchCopyWith<$Res>? get branchResume;
  @override
  $UserCopyWith<$Res>? get session;
  @override
  $SettingsCopyWith<$Res> get settings;
  @override
  $TreeCopyWith<$Res> get tree;
}

/// @nodoc
class __$$_TreeStateCopyWithImpl<$Res> extends _$TreeStateCopyWithImpl<$Res>
    implements _$$_TreeStateCopyWith<$Res> {
  __$$_TreeStateCopyWithImpl(
      _$_TreeState _value, $Res Function(_$_TreeState) _then)
      : super(_value, (v) => _then(v as _$_TreeState));

  @override
  _$_TreeState get _value => super._value as _$_TreeState;

  @override
  $Res call({
    Object? authorIsUser = freezed,
    Object? author = freezed,
    Object? branchOne = freezed,
    Object? branchResume = freezed,
    Object? failureOption = freezed,
    Object? isBookmarked = freezed,
    Object? isLiked = freezed,
    Object? isProcessing = freezed,
    Object? session = freezed,
    Object? settings = freezed,
    Object? tree = freezed,
  }) {
    return _then(_$_TreeState(
      authorIsUser: authorIsUser == freezed
          ? _value.authorIsUser
          : authorIsUser // ignore: cast_nullable_to_non_nullable
              as bool,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      branchOne: branchOne == freezed
          ? _value.branchOne
          : branchOne // ignore: cast_nullable_to_non_nullable
              as Branch?,
      branchResume: branchResume == freezed
          ? _value.branchResume
          : branchResume // ignore: cast_nullable_to_non_nullable
              as Branch?,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<None<Object>, CoreFailure>>,
      isBookmarked: isBookmarked == freezed
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as User?,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      tree: tree == freezed
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
    ));
  }
}

/// @nodoc

class _$_TreeState implements _TreeState {
  const _$_TreeState(
      {required this.authorIsUser,
      required this.author,
      this.branchOne,
      this.branchResume,
      required this.failureOption,
      required this.isBookmarked,
      required this.isLiked,
      required this.isProcessing,
      required this.session,
      required this.settings,
      required this.tree});

  @override
  final bool authorIsUser;
  @override
  final User? author;
  @override
  final Branch? branchOne;
  @override
  final Branch? branchResume;
  @override
  final Option<Result<None<Object>, CoreFailure>> failureOption;
  @override
  final bool isBookmarked;
  @override
  final bool isLiked;
  @override
  final bool isProcessing;
  @override
  final User? session;
  @override
  final Settings settings;
  @override
  final Tree tree;

  @override
  String toString() {
    return 'TreeState(authorIsUser: $authorIsUser, author: $author, branchOne: $branchOne, branchResume: $branchResume, failureOption: $failureOption, isBookmarked: $isBookmarked, isLiked: $isLiked, isProcessing: $isProcessing, session: $session, settings: $settings, tree: $tree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TreeState &&
            const DeepCollectionEquality()
                .equals(other.authorIsUser, authorIsUser) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.branchOne, branchOne) &&
            const DeepCollectionEquality()
                .equals(other.branchResume, branchResume) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.isBookmarked, isBookmarked) &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked) &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.tree, tree));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authorIsUser),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(branchOne),
      const DeepCollectionEquality().hash(branchResume),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isBookmarked),
      const DeepCollectionEquality().hash(isLiked),
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(tree));

  @JsonKey(ignore: true)
  @override
  _$$_TreeStateCopyWith<_$_TreeState> get copyWith =>
      __$$_TreeStateCopyWithImpl<_$_TreeState>(this, _$identity);
}

abstract class _TreeState implements TreeState {
  const factory _TreeState(
      {required final bool authorIsUser,
      required final User? author,
      final Branch? branchOne,
      final Branch? branchResume,
      required final Option<Result<None<Object>, CoreFailure>> failureOption,
      required final bool isBookmarked,
      required final bool isLiked,
      required final bool isProcessing,
      required final User? session,
      required final Settings settings,
      required final Tree tree}) = _$_TreeState;

  @override
  bool get authorIsUser => throw _privateConstructorUsedError;
  @override
  User? get author => throw _privateConstructorUsedError;
  @override
  Branch? get branchOne => throw _privateConstructorUsedError;
  @override
  Branch? get branchResume => throw _privateConstructorUsedError;
  @override
  Option<Result<None<Object>, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isBookmarked => throw _privateConstructorUsedError;
  @override
  bool get isLiked => throw _privateConstructorUsedError;
  @override
  bool get isProcessing => throw _privateConstructorUsedError;
  @override
  User? get session => throw _privateConstructorUsedError;
  @override
  Settings get settings => throw _privateConstructorUsedError;
  @override
  Tree get tree => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TreeStateCopyWith<_$_TreeState> get copyWith =>
      throw _privateConstructorUsedError;
}
