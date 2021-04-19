import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
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

  const Genre._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
