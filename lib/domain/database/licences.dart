import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Licences extends ValueObject<String> {
  /// @nodoc
  factory Licences(String input) {
    assert(input != null);
    return Licences._(
      validateLicence(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Licences._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
