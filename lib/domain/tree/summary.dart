import 'package:oxidized/oxidized.dart';
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

  /// @nodoc
  factory Summary.forSaving(Result<String, ValueFailure<String>> input) {
    return Summary._(
      Ok(input.unwrapOr('')),
    );
  }

  const Summary._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
