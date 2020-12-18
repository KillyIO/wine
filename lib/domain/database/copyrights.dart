import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Copyrights extends ValueObject<String> {
  /// @nodoc
  factory Copyrights(String input) {
    assert(input != null);
    return Copyrights._(
      validateCopyrights(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Copyrights._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
