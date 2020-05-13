import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

class Story extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Story(String input) {
    assert(input != null);
    return Story._(
      validateStory(input),
    );
  }

  // NOTE private contructor
  const Story._(this.value);
}
