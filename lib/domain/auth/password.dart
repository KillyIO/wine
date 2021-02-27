import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Password extends ValueObject<String> {
  /// @nodoc
  factory Password(String input, [String input2]) {
    assert(input != null);
    return Password._(
      validatePassword(input, input2),
    );
  }

  /// @nodoc
  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
