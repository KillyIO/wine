import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';
import 'package:wine/features/report/report_type.domain.dart';

/// @nodoc
class Violation extends ValueObject<ReportType> {
  /// @nodoc
  factory Violation(ReportType input) {
    return Violation._(
      validateViolation(input),
    );
  }

  const Violation._(this.value);

  @override
  final Result<ReportType, ValueFailure<ReportType>> value;
}
