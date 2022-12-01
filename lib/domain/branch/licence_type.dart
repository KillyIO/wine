import 'package:json_annotation/json_annotation.dart';

/// @nodoc
enum LicenceType {
  /// @nodoc
  @JsonValue('ccBy')
  ccBy,

  /// @nodoc
  @JsonValue('ccBySa')
  ccBySa,

  /// @nodoc
  @JsonValue('ccByNc')
  ccByNc,

  /// @nodoc
  @JsonValue('ccByNcSa')
  ccByNcSa,

  /// @nodoc
  @JsonValue('ccByNd')
  ccByNd,

  /// @nodoc
  @JsonValue('ccByNcBd')
  ccByNcBd,

  /// @nodoc
  @JsonValue('unknown')
  unknown,
}
