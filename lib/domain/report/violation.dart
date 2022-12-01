import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';
import 'package:wine/domain/report/report_type.dart';

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
