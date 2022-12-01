import 'package:json_annotation/json_annotation.dart';

/// @nodoc
enum ReportType {
  /// @nodoc
  @JsonValue('spam')
  spam,

  /// @nodoc
  @JsonValue('unknown')
  unknown,
}
