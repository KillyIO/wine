import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
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

  const Summary._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
