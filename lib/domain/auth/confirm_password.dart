import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class ConfirmPassword extends ValueObject<String> {
  /// @nodoc
  factory ConfirmPassword(String input, String input2) {
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
