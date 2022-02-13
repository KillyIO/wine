// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  LoadNewTree loadNewTree() {
    return const LoadNewTree();
  }

  LoadTopTree loadTopTree() {
    return const LoadTopTree();
  }

  LoadTreeByGenre loadTreeByGenre(String key) {
    return LoadTreeByGenre(
      key,
    );
  }

  LoadTreeByLanguage loadTreeByLanguage(String key) {
    return LoadTreeByLanguage(
      key,
    );
  }

  LoadTreeByTime loadTreeByTime(String key) {
    return LoadTreeByTime(
      key,
    );
  }

  PageViewIndexChanged pageViewIndexChanged(int index) {
    return PageViewIndexChanged(
      index,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewTree,
    required TResult Function() loadTopTree,
    required TResult Function(String key) loadTreeByGenre,
    required TResult Function(String key) loadTreeByLanguage,
    required TResult Function(String key) loadTreeByTime,
    required TResult Function(int index) pageViewIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewTree value) loadNewTree,
    required TResult Function(LoadTopTree value) loadTopTree,
    required TResult Function(LoadTreeByGenre value) loadTreeByGenre,
    required TResult Function(LoadTreeByLanguage value) loadTreeByLanguage,
    required TResult Function(LoadTreeByTime value) loadTreeByTime,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $LoadNewTreeCopyWith<$Res> {
  factory $LoadNewTreeCopyWith(
          LoadNewTree value, $Res Function(LoadNewTree) then) =
      _$LoadNewTreeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadNewTreeCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadNewTreeCopyWith<$Res> {
  _$LoadNewTreeCopyWithImpl(
      LoadNewTree _value, $Res Function(LoadNewTree) _then)
      : super(_value, (v) => _then(v as LoadNewTree));

  @override
  LoadNewTree get _value => super._value as LoadNewTree;
}

/// @nodoc

class _$LoadNewTree implements LoadNewTree {
  const _$LoadNewTree();

  @override
  String toString() {
    return 'HomeEvent.loadNewTree()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadNewTree);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewTree,
    required TResult Function() loadTopTree,
    required TResult Function(String key) loadTreeByGenre,
    required TResult Function(String key) loadTreeByLanguage,
    required TResult Function(String key) loadTreeByTime,
    required TResult Function(int index) pageViewIndexChanged,
  }) {
    return loadNewTree();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
  }) {
    return loadNewTree?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadNewTree != null) {
      return loadNewTree();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewTree value) loadNewTree,
    required TResult Function(LoadTopTree value) loadTopTree,
    required TResult Function(LoadTreeByGenre value) loadTreeByGenre,
    required TResult Function(LoadTreeByLanguage value) loadTreeByLanguage,
    required TResult Function(LoadTreeByTime value) loadTreeByTime,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
  }) {
    return loadNewTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
  }) {
    return loadNewTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadNewTree != null) {
      return loadNewTree(this);
    }
    return orElse();
  }
}

abstract class LoadNewTree implements HomeEvent {
  const factory LoadNewTree() = _$LoadNewTree;
}

/// @nodoc
abstract class $LoadTopTreeCopyWith<$Res> {
  factory $LoadTopTreeCopyWith(
          LoadTopTree value, $Res Function(LoadTopTree) then) =
      _$LoadTopTreeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadTopTreeCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadTopTreeCopyWith<$Res> {
  _$LoadTopTreeCopyWithImpl(
      LoadTopTree _value, $Res Function(LoadTopTree) _then)
      : super(_value, (v) => _then(v as LoadTopTree));

  @override
  LoadTopTree get _value => super._value as LoadTopTree;
}

/// @nodoc

class _$LoadTopTree implements LoadTopTree {
  const _$LoadTopTree();

  @override
  String toString() {
    return 'HomeEvent.loadTopTree()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadTopTree);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewTree,
    required TResult Function() loadTopTree,
    required TResult Function(String key) loadTreeByGenre,
    required TResult Function(String key) loadTreeByLanguage,
    required TResult Function(String key) loadTreeByTime,
    required TResult Function(int index) pageViewIndexChanged,
  }) {
    return loadTopTree();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
  }) {
    return loadTopTree?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTopTree != null) {
      return loadTopTree();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewTree value) loadNewTree,
    required TResult Function(LoadTopTree value) loadTopTree,
    required TResult Function(LoadTreeByGenre value) loadTreeByGenre,
    required TResult Function(LoadTreeByLanguage value) loadTreeByLanguage,
    required TResult Function(LoadTreeByTime value) loadTreeByTime,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
  }) {
    return loadTopTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
  }) {
    return loadTopTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTopTree != null) {
      return loadTopTree(this);
    }
    return orElse();
  }
}

abstract class LoadTopTree implements HomeEvent {
  const factory LoadTopTree() = _$LoadTopTree;
}

/// @nodoc
abstract class $LoadTreeByGenreCopyWith<$Res> {
  factory $LoadTreeByGenreCopyWith(
          LoadTreeByGenre value, $Res Function(LoadTreeByGenre) then) =
      _$LoadTreeByGenreCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class _$LoadTreeByGenreCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadTreeByGenreCopyWith<$Res> {
  _$LoadTreeByGenreCopyWithImpl(
      LoadTreeByGenre _value, $Res Function(LoadTreeByGenre) _then)
      : super(_value, (v) => _then(v as LoadTreeByGenre));

  @override
  LoadTreeByGenre get _value => super._value as LoadTreeByGenre;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(LoadTreeByGenre(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTreeByGenre implements LoadTreeByGenre {
  const _$LoadTreeByGenre(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'HomeEvent.loadTreeByGenre(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadTreeByGenre &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  $LoadTreeByGenreCopyWith<LoadTreeByGenre> get copyWith =>
      _$LoadTreeByGenreCopyWithImpl<LoadTreeByGenre>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewTree,
    required TResult Function() loadTopTree,
    required TResult Function(String key) loadTreeByGenre,
    required TResult Function(String key) loadTreeByLanguage,
    required TResult Function(String key) loadTreeByTime,
    required TResult Function(int index) pageViewIndexChanged,
  }) {
    return loadTreeByGenre(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
  }) {
    return loadTreeByGenre?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTreeByGenre != null) {
      return loadTreeByGenre(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewTree value) loadNewTree,
    required TResult Function(LoadTopTree value) loadTopTree,
    required TResult Function(LoadTreeByGenre value) loadTreeByGenre,
    required TResult Function(LoadTreeByLanguage value) loadTreeByLanguage,
    required TResult Function(LoadTreeByTime value) loadTreeByTime,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
  }) {
    return loadTreeByGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
  }) {
    return loadTreeByGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTreeByGenre != null) {
      return loadTreeByGenre(this);
    }
    return orElse();
  }
}

abstract class LoadTreeByGenre implements HomeEvent {
  const factory LoadTreeByGenre(String key) = _$LoadTreeByGenre;

  String get key;
  @JsonKey(ignore: true)
  $LoadTreeByGenreCopyWith<LoadTreeByGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTreeByLanguageCopyWith<$Res> {
  factory $LoadTreeByLanguageCopyWith(
          LoadTreeByLanguage value, $Res Function(LoadTreeByLanguage) then) =
      _$LoadTreeByLanguageCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class _$LoadTreeByLanguageCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadTreeByLanguageCopyWith<$Res> {
  _$LoadTreeByLanguageCopyWithImpl(
      LoadTreeByLanguage _value, $Res Function(LoadTreeByLanguage) _then)
      : super(_value, (v) => _then(v as LoadTreeByLanguage));

  @override
  LoadTreeByLanguage get _value => super._value as LoadTreeByLanguage;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(LoadTreeByLanguage(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTreeByLanguage implements LoadTreeByLanguage {
  const _$LoadTreeByLanguage(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'HomeEvent.loadTreeByLanguage(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadTreeByLanguage &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  $LoadTreeByLanguageCopyWith<LoadTreeByLanguage> get copyWith =>
      _$LoadTreeByLanguageCopyWithImpl<LoadTreeByLanguage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewTree,
    required TResult Function() loadTopTree,
    required TResult Function(String key) loadTreeByGenre,
    required TResult Function(String key) loadTreeByLanguage,
    required TResult Function(String key) loadTreeByTime,
    required TResult Function(int index) pageViewIndexChanged,
  }) {
    return loadTreeByLanguage(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
  }) {
    return loadTreeByLanguage?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTreeByLanguage != null) {
      return loadTreeByLanguage(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewTree value) loadNewTree,
    required TResult Function(LoadTopTree value) loadTopTree,
    required TResult Function(LoadTreeByGenre value) loadTreeByGenre,
    required TResult Function(LoadTreeByLanguage value) loadTreeByLanguage,
    required TResult Function(LoadTreeByTime value) loadTreeByTime,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
  }) {
    return loadTreeByLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
  }) {
    return loadTreeByLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTreeByLanguage != null) {
      return loadTreeByLanguage(this);
    }
    return orElse();
  }
}

abstract class LoadTreeByLanguage implements HomeEvent {
  const factory LoadTreeByLanguage(String key) = _$LoadTreeByLanguage;

  String get key;
  @JsonKey(ignore: true)
  $LoadTreeByLanguageCopyWith<LoadTreeByLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTreeByTimeCopyWith<$Res> {
  factory $LoadTreeByTimeCopyWith(
          LoadTreeByTime value, $Res Function(LoadTreeByTime) then) =
      _$LoadTreeByTimeCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class _$LoadTreeByTimeCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadTreeByTimeCopyWith<$Res> {
  _$LoadTreeByTimeCopyWithImpl(
      LoadTreeByTime _value, $Res Function(LoadTreeByTime) _then)
      : super(_value, (v) => _then(v as LoadTreeByTime));

  @override
  LoadTreeByTime get _value => super._value as LoadTreeByTime;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(LoadTreeByTime(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTreeByTime implements LoadTreeByTime {
  const _$LoadTreeByTime(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'HomeEvent.loadTreeByTime(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadTreeByTime &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  $LoadTreeByTimeCopyWith<LoadTreeByTime> get copyWith =>
      _$LoadTreeByTimeCopyWithImpl<LoadTreeByTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewTree,
    required TResult Function() loadTopTree,
    required TResult Function(String key) loadTreeByGenre,
    required TResult Function(String key) loadTreeByLanguage,
    required TResult Function(String key) loadTreeByTime,
    required TResult Function(int index) pageViewIndexChanged,
  }) {
    return loadTreeByTime(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
  }) {
    return loadTreeByTime?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTreeByTime != null) {
      return loadTreeByTime(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewTree value) loadNewTree,
    required TResult Function(LoadTopTree value) loadTopTree,
    required TResult Function(LoadTreeByGenre value) loadTreeByGenre,
    required TResult Function(LoadTreeByLanguage value) loadTreeByLanguage,
    required TResult Function(LoadTreeByTime value) loadTreeByTime,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
  }) {
    return loadTreeByTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
  }) {
    return loadTreeByTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (loadTreeByTime != null) {
      return loadTreeByTime(this);
    }
    return orElse();
  }
}

abstract class LoadTreeByTime implements HomeEvent {
  const factory LoadTreeByTime(String key) = _$LoadTreeByTime;

  String get key;
  @JsonKey(ignore: true)
  $LoadTreeByTimeCopyWith<LoadTreeByTime> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$HomeEventCopyWithImpl<$Res>
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
    return 'HomeEvent.pageViewIndexChanged(index: $index)';
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
    required TResult Function() loadNewTree,
    required TResult Function() loadTopTree,
    required TResult Function(String key) loadTreeByGenre,
    required TResult Function(String key) loadTreeByLanguage,
    required TResult Function(String key) loadTreeByTime,
    required TResult Function(int index) pageViewIndexChanged,
  }) {
    return pageViewIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
  }) {
    return pageViewIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewTree,
    TResult Function()? loadTopTree,
    TResult Function(String key)? loadTreeByGenre,
    TResult Function(String key)? loadTreeByLanguage,
    TResult Function(String key)? loadTreeByTime,
    TResult Function(int index)? pageViewIndexChanged,
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
    required TResult Function(LoadNewTree value) loadNewTree,
    required TResult Function(LoadTopTree value) loadTopTree,
    required TResult Function(LoadTreeByGenre value) loadTreeByGenre,
    required TResult Function(LoadTreeByLanguage value) loadTreeByLanguage,
    required TResult Function(LoadTreeByTime value) loadTreeByTime,
    required TResult Function(PageViewIndexChanged value) pageViewIndexChanged,
  }) {
    return pageViewIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
  }) {
    return pageViewIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewTree value)? loadNewTree,
    TResult Function(LoadTopTree value)? loadTopTree,
    TResult Function(LoadTreeByGenre value)? loadTreeByGenre,
    TResult Function(LoadTreeByLanguage value)? loadTreeByLanguage,
    TResult Function(LoadTreeByTime value)? loadTreeByTime,
    TResult Function(PageViewIndexChanged value)? pageViewIndexChanged,
    required TResult orElse(),
  }) {
    if (pageViewIndexChanged != null) {
      return pageViewIndexChanged(this);
    }
    return orElse();
  }
}

abstract class PageViewIndexChanged implements HomeEvent {
  const factory PageViewIndexChanged(int index) = _$PageViewIndexChanged;

  int get index;
  @JsonKey(ignore: true)
  $PageViewIndexChangedCopyWith<PageViewIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required int currentPageViewIdx,
      required Option<Result<Unit, CoreFailure>> failure,
      required String genreFilterKey,
      required String languageFilterKey,
      required List<Tree> newTrees,
      required String timeFilterKey,
      required List<Tree> topTrees}) {
    return _HomeState(
      currentPageViewIdx: currentPageViewIdx,
      failure: failure,
      genreFilterKey: genreFilterKey,
      languageFilterKey: languageFilterKey,
      newTrees: newTrees,
      timeFilterKey: timeFilterKey,
      topTrees: topTrees,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get currentPageViewIdx => throw _privateConstructorUsedError;
  Option<Result<Unit, CoreFailure>> get failure =>
      throw _privateConstructorUsedError;
  String get genreFilterKey => throw _privateConstructorUsedError;
  String get languageFilterKey => throw _privateConstructorUsedError;
  List<Tree> get newTrees => throw _privateConstructorUsedError;
  String get timeFilterKey => throw _privateConstructorUsedError;
  List<Tree> get topTrees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {int currentPageViewIdx,
      Option<Result<Unit, CoreFailure>> failure,
      String genreFilterKey,
      String languageFilterKey,
      List<Tree> newTrees,
      String timeFilterKey,
      List<Tree> topTrees});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? currentPageViewIdx = freezed,
    Object? failure = freezed,
    Object? genreFilterKey = freezed,
    Object? languageFilterKey = freezed,
    Object? newTrees = freezed,
    Object? timeFilterKey = freezed,
    Object? topTrees = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Result<Unit, CoreFailure>>,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      newTrees: newTrees == freezed
          ? _value.newTrees
          : newTrees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      topTrees: topTrees == freezed
          ? _value.topTrees
          : topTrees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentPageViewIdx,
      Option<Result<Unit, CoreFailure>> failure,
      String genreFilterKey,
      String languageFilterKey,
      List<Tree> newTrees,
      String timeFilterKey,
      List<Tree> topTrees});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? currentPageViewIdx = freezed,
    Object? failure = freezed,
    Object? genreFilterKey = freezed,
    Object? languageFilterKey = freezed,
    Object? newTrees = freezed,
    Object? timeFilterKey = freezed,
    Object? topTrees = freezed,
  }) {
    return _then(_HomeState(
      currentPageViewIdx: currentPageViewIdx == freezed
          ? _value.currentPageViewIdx
          : currentPageViewIdx // ignore: cast_nullable_to_non_nullable
              as int,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Result<Unit, CoreFailure>>,
      genreFilterKey: genreFilterKey == freezed
          ? _value.genreFilterKey
          : genreFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      languageFilterKey: languageFilterKey == freezed
          ? _value.languageFilterKey
          : languageFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      newTrees: newTrees == freezed
          ? _value.newTrees
          : newTrees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
      timeFilterKey: timeFilterKey == freezed
          ? _value.timeFilterKey
          : timeFilterKey // ignore: cast_nullable_to_non_nullable
              as String,
      topTrees: topTrees == freezed
          ? _value.topTrees
          : topTrees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.currentPageViewIdx,
      required this.failure,
      required this.genreFilterKey,
      required this.languageFilterKey,
      required this.newTrees,
      required this.timeFilterKey,
      required this.topTrees});

  @override
  final int currentPageViewIdx;
  @override
  final Option<Result<Unit, CoreFailure>> failure;
  @override
  final String genreFilterKey;
  @override
  final String languageFilterKey;
  @override
  final List<Tree> newTrees;
  @override
  final String timeFilterKey;
  @override
  final List<Tree> topTrees;

  @override
  String toString() {
    return 'HomeState(currentPageViewIdx: $currentPageViewIdx, failure: $failure, genreFilterKey: $genreFilterKey, languageFilterKey: $languageFilterKey, newTrees: $newTrees, timeFilterKey: $timeFilterKey, topTrees: $topTrees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.currentPageViewIdx, currentPageViewIdx) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality()
                .equals(other.genreFilterKey, genreFilterKey) &&
            const DeepCollectionEquality()
                .equals(other.languageFilterKey, languageFilterKey) &&
            const DeepCollectionEquality().equals(other.newTrees, newTrees) &&
            const DeepCollectionEquality()
                .equals(other.timeFilterKey, timeFilterKey) &&
            const DeepCollectionEquality().equals(other.topTrees, topTrees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPageViewIdx),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(genreFilterKey),
      const DeepCollectionEquality().hash(languageFilterKey),
      const DeepCollectionEquality().hash(newTrees),
      const DeepCollectionEquality().hash(timeFilterKey),
      const DeepCollectionEquality().hash(topTrees));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required int currentPageViewIdx,
      required Option<Result<Unit, CoreFailure>> failure,
      required String genreFilterKey,
      required String languageFilterKey,
      required List<Tree> newTrees,
      required String timeFilterKey,
      required List<Tree> topTrees}) = _$_HomeState;

  @override
  int get currentPageViewIdx;
  @override
  Option<Result<Unit, CoreFailure>> get failure;
  @override
  String get genreFilterKey;
  @override
  String get languageFilterKey;
  @override
  List<Tree> get newTrees;
  @override
  String get timeFilterKey;
  @override
  List<Tree> get topTrees;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
