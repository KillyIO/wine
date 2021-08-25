import 'package:rustic/result.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class ConfirmPassword extends ValueObject<String> {
  /// @nodoc
  factory ConfirmPassword(String input, String input2) {
    return ConfirmPassword._(
      validatePassword(input)
          .and((String value) => validateConfirmPassword(value, input2)),
    );
  }

  /// @nodoc
  const ConfirmPassword._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
