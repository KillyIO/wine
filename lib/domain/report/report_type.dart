import 'package:json_annotation/json_annotation.dart';

enum ReportType {
  @JsonValue('spam')
  spam,

  @JsonValue('unknown')
  unknown,
}
