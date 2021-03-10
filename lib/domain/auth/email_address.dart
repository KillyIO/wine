import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class EmailAddress extends ValueObject<String> {
  /// @nodoc
  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  /// @nodoc
  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
