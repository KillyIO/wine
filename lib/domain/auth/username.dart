import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
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

  /// @nodoc
  const Username._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
