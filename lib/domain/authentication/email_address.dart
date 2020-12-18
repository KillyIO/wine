import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
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

  // NOTE private contructor
  /// @nodoc
  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
