import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Character extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Character(String input) {
    assert(input != null);
    return Character._(
      validateCharacter(input),
    );
  }

  // NOTE private contructor
  const Character._(this.value);
}
