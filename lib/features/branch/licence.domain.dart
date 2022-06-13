import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';

/// @nodoc
class Licence extends ValueObject<String> {
  /// @nodoc
  factory Licence(String input) {
    return Licence._(
      validateSelectionNotEmpty(input),
    );
  }

  /// @nodoc
  factory Licence.forSaving(Result<String, ValueFailure<String>> input) {
    return Licence._(
      Ok(input.unwrapOr('')),
    );
  }

  const Licence._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
