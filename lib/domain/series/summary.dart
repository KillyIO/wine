import 'package:rustic/result.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Summary extends ValueObject<String> {
  /// @nodoc
  factory Summary(String input) {
    return Summary._(
      validateSummary(input),
    );
  }

  const Summary._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
