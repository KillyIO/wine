import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/features/report/description.domain.dart';
import 'package:wine/features/report/report_type.domain.dart';
import 'package:wine/features/report/violation.domain.dart';

part 'report.domain.freezed.dart';

/// @nodoc
@freezed
class Report with _$Report {
  /// @nodoc
  factory Report({
    required Description description,
    required UniqueID reporterUID,
    required Title title,
    required Violation violation,
    required UniqueID uid,
  }) = _Report;

  /// @nodoc
  factory Report.empty() => Report(
        description: Description(''),
        reporterUID: UniqueID(),
        title: Title(''),
        violation: Violation(ReportType.unknown),
        uid: UniqueID(),
      );
}
