import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';

class Title extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Title(String input) {
    assert(input != null);
    return Title._(
      validateTitle(input),
    );
  }

  // NOTE private contructor
  const Title._(this.value);
}
