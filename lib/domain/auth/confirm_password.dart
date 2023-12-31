import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class ConfirmPassword extends ValueObject<String> {
  factory ConfirmPassword(String input, String input2) {
    return ConfirmPassword._(
      validatePassword(input)
          .andThen((value) => validateConfirmPassword(value, input2)),
    );
  }

  const ConfirmPassword._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
