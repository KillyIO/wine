import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

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
