import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class ConfirmPassword extends ValueObject<String> {
  /// @nodoc
  factory ConfirmPassword(String input, String input2) {
    assert(input != null);
    assert(input2 != null);
    return ConfirmPassword._(
      validatePassword(input)
          .flatMap((String value) => validateConfirmPassword(value, input2)),
    );
  }

  /// @nodoc
  const ConfirmPassword._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
