import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

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
