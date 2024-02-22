import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/report/description.dart';
import 'package:wine/domain/report/report_type.dart';
import 'package:wine/domain/report/violation.dart';

part 'report.freezed.dart';

@freezed
class Report with _$Report {
  factory Report({
    required Description description,
    required UniqueID reporterUID,
    required Title title,
    required Violation violation,
    required UniqueID uid,
  }) = _Report;

  factory Report.empty() => Report(
        description: Description(''),
        reporterUID: UniqueID(),
        title: Title(''),
        violation: Violation(ReportType.unknown),
        uid: UniqueID(),
      );
}
