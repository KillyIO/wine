import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Summary extends ValueObject<String> {
  /// @nodoc
  factory Summary(String input) {
    assert(input != null);
    return Summary._(
      validateSummary(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Summary._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
