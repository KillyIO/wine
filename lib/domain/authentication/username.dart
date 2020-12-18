import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Username extends ValueObject<String> {
  /// @nodoc
  factory Username(String input) {
    assert(input != null);
    return Username._(
      validateUsername(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Username._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
