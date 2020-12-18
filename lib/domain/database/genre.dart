import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Genre extends ValueObject<String> {
  /// @nodoc
  factory Genre(String input, {bool isOptional = false}) {
    assert(input != null);
    return Genre._(
      validateGenre(input, isOptional: isOptional),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Genre._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
