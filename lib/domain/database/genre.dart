import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Genre extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Genre(String input) {
    assert(input != null);
    return Genre._(
      validateGenre(input),
    );
  }

  // NOTE private contructor
  const Genre._(this.value);
}
