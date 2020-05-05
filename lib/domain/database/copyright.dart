import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Copyright extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Copyright(String input) {
    assert(input != null);
    return Copyright._(
      validateCopyright(input),
    );
  }

  // NOTE private contructor
  const Copyright._(this.value);
}
