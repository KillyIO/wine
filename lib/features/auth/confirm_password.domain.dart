import 'package:oxidized/oxidized.dart';
import 'package:wine/features/core/value_failure.domain.dart';
import 'package:wine/features/core/value_object.domain.dart';
import 'package:wine/features/core/value_validators.domain.dart';

/// @nodoc
class ConfirmPassword extends ValueObject<String> {
  /// @nodoc
  factory ConfirmPassword(String input, String input2) {
    return ConfirmPassword._(
      validatePassword(input)
          .andThen((value) => validateConfirmPassword(value, input2)),
    );
  }

  /// @nodoc
  const ConfirmPassword._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
