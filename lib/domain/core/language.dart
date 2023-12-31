import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class Language extends ValueObject<String> {
  factory Language(String input) {
    return Language._(
      validateSelectionNotEmpty(input),
    );
  }

  factory Language.forSaving(Result<String, ValueFailure<String>> input) {
    return Language._(
      Ok(input.unwrapOr('')),
    );
  }

  const Language._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
