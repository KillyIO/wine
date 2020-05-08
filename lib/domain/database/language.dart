import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Language extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Language(String input) {
    assert(input != null);
    return Language._(
      validateLanguage(input),
    );
  }

  // NOTE private contructor
  const Language._(this.value);
}
