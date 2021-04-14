import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class CoverURL extends ValueObject<String> {
  /// @nodoc
  factory CoverURL(String input) {
    assert(input != null);
    return CoverURL._(
      validateCoverURL(input),
    );
  }

  /// @nodoc
  const CoverURL._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
