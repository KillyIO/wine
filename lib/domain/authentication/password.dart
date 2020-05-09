import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input, [String input2]) {
    assert(input != null);
    return Password._(
      validatePassword(input, input2),
    );
  }

  // NOTE private contructor
  const Password._(this.value);
}
