import 'package:json_annotation/json_annotation.dart';

enum LicenceType {
  @JsonValue('ccBy')
  ccBy,

  @JsonValue('ccBySa')
  ccBySa,

  @JsonValue('ccByNc')
  ccByNc,

  @JsonValue('ccByNcSa')
  ccByNcSa,

  @JsonValue('ccByNd')
  ccByNd,

  @JsonValue('ccByNcBd')
  ccByNcBd,

  @JsonValue('unknown')
  unknown,
}
