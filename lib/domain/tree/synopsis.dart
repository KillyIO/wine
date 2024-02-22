import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class Synopsis extends ValueObject<String> {
  factory Synopsis(String input) {
    return Synopsis._(
      validateSynopsis(input),
    );
  }

  factory Synopsis.forSaving(Result<String, ValueFailure<String>> input) {
    return Synopsis._(
      Ok(input.unwrapOr('')),
    );
  }

  const Synopsis._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
