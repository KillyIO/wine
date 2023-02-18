// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Report {
  Description get description => throw _privateConstructorUsedError;
  UniqueID get reporterUID => throw _privateConstructorUsedError;
  Title get title => throw _privateConstructorUsedError;
  Violation get violation => throw _privateConstructorUsedError;
  UniqueID get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {Description description,
      UniqueID reporterUID,
      Title title,
      Violation violation,
      UniqueID uid});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? reporterUID = null,
    Object? title = null,
    Object? violation = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      reporterUID: null == reporterUID
          ? _value.reporterUID
          : reporterUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      violation: null == violation
          ? _value.violation
          : violation // ignore: cast_nullable_to_non_nullable
              as Violation,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Description description,
      UniqueID reporterUID,
      Title title,
      Violation violation,
      UniqueID uid});
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$_Report>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? reporterUID = null,
    Object? title = null,
    Object? violation = null,
    Object? uid = null,
  }) {
    return _then(_$_Report(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      reporterUID: null == reporterUID
          ? _value.reporterUID
          : reporterUID // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      violation: null == violation
          ? _value.violation
          : violation // ignore: cast_nullable_to_non_nullable
              as Violation,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc

class _$_Report implements _Report {
  _$_Report(
      {required this.description,
      required this.reporterUID,
      required this.title,
      required this.violation,
      required this.uid});

  @override
  final Description description;
  @override
  final UniqueID reporterUID;
  @override
  final Title title;
  @override
  final Violation violation;
  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'Report(description: $description, reporterUID: $reporterUID, title: $title, violation: $violation, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reporterUID, reporterUID) ||
                other.reporterUID == reporterUID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.violation, violation) ||
                other.violation == violation) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, reporterUID, title, violation, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);
}

abstract class _Report implements Report {
  factory _Report(
      {required final Description description,
      required final UniqueID reporterUID,
      required final Title title,
      required final Violation violation,
      required final UniqueID uid}) = _$_Report;

  @override
  Description get description;
  @override
  UniqueID get reporterUID;
  @override
  Title get title;
  @override
  Violation get violation;
  @override
  UniqueID get uid;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}
