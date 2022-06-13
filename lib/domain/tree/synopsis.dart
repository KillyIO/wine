import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';

/// @nodoc
class Synopsis extends ValueObject<String> {
  /// @nodoc
  factory Synopsis(String input) {
    return Synopsis._(
      validateSynopsis(input),
    );
  }

  /// @nodoc
  factory Synopsis.forSaving(Result<String, ValueFailure<String>> input) {
    return Synopsis._(
      Ok(input.unwrapOr('')),
    );
  }

  const Synopsis._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
