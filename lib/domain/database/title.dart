import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_objects.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Title extends ValueObject<String> {
  /// @nodoc
  factory Title(String input) {
    assert(input != null);
    return Title._(
      validateTitle(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Title._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
