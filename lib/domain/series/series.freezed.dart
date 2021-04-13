// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeriesTearOff {
  const _$SeriesTearOff();

// ignore: unused_element
  _Series call(
      {@required bool isDeleted,
      @required bool isNSFW,
      @required UniqueID uid}) {
    return _Series(
      isDeleted: isDeleted,
      isNSFW: isNSFW,
      uid: uid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Series = _$SeriesTearOff();

/// @nodoc
mixin _$Series {
  bool get isDeleted;
  bool get isNSFW;
  UniqueID get uid;

  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res>;
  $Res call({bool isDeleted, bool isNSFW, UniqueID uid});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res> implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  final Series _value;
  // ignore: unused_field
  final $Res Function(Series) _then;

  @override
  $Res call({
    Object isDeleted = freezed,
    Object isNSFW = freezed,
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      uid: uid == freezed ? _value.uid : uid as UniqueID,
    ));
  }
}

/// @nodoc
abstract class _$SeriesCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$SeriesCopyWith(_Series value, $Res Function(_Series) then) =
      __$SeriesCopyWithImpl<$Res>;
  @override
  $Res call({bool isDeleted, bool isNSFW, UniqueID uid});
}

/// @nodoc
class __$SeriesCopyWithImpl<$Res> extends _$SeriesCopyWithImpl<$Res>
    implements _$SeriesCopyWith<$Res> {
  __$SeriesCopyWithImpl(_Series _value, $Res Function(_Series) _then)
      : super(_value, (v) => _then(v as _Series));

  @override
  _Series get _value => super._value as _Series;

  @override
  $Res call({
    Object isDeleted = freezed,
    Object isNSFW = freezed,
    Object uid = freezed,
  }) {
    return _then(_Series(
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      isNSFW: isNSFW == freezed ? _value.isNSFW : isNSFW as bool,
      uid: uid == freezed ? _value.uid : uid as UniqueID,
    ));
  }
}

/// @nodoc
class _$_Series implements _Series {
  _$_Series(
      {@required this.isDeleted, @required this.isNSFW, @required this.uid})
      : assert(isDeleted != null),
        assert(isNSFW != null),
        assert(uid != null);

  @override
  final bool isDeleted;
  @override
  final bool isNSFW;
  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'Series(isDeleted: $isDeleted, isNSFW: $isNSFW, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Series &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.isNSFW, isNSFW) ||
                const DeepCollectionEquality().equals(other.isNSFW, isNSFW)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(isNSFW) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$SeriesCopyWith<_Series> get copyWith =>
      __$SeriesCopyWithImpl<_Series>(this, _$identity);
}

abstract class _Series implements Series {
  factory _Series(
      {@required bool isDeleted,
      @required bool isNSFW,
      @required UniqueID uid}) = _$_Series;

  @override
  bool get isDeleted;
  @override
  bool get isNSFW;
  @override
  UniqueID get uid;
  @override
  @JsonKey(ignore: true)
  _$SeriesCopyWith<_Series> get copyWith;
}
