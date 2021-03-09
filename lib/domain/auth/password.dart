import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Password extends ValueObject<String> {
  /// @nodoc
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  /// @nodoc
  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
