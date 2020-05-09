import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Copyrights extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Copyrights(String input) {
    assert(input != null);
    return Copyrights._(
      validateCopyrights(input),
    );
  }

  // NOTE private contructor
  const Copyrights._(this.value);
}
