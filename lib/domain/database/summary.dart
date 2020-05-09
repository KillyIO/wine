import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Summary extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Summary(String input) {
    assert(input != null);
    return Summary._(
      validateSummary(input),
    );
  }

  // NOTE private contructor
  const Summary._(this.value);
}
