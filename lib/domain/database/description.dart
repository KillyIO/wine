import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Description(String input) {
    assert(input != null);
    return Description._(
      validateDescription(input),
    );
  }

  // NOTE private contructor
  const Description._(this.value);
}
