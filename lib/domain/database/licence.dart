import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Licence extends ValueObject<String> {
  /// @nodoc
  factory Licence(String input) {
    assert(input != null);
    return Licence._(
      validateLicence(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Licence._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
