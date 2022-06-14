import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';

/// @nodoc
class Language extends ValueObject<String> {
  /// @nodoc
  factory Language(String input) {
    return Language._(
      validateSelectionNotEmpty(input),
    );
  }

  /// @nodoc
  factory Language.forSaving(Result<String, ValueFailure<String>> input) {
    return Language._(
      Ok(input.unwrapOr('')),
    );
  }

  const Language._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
