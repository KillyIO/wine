import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Language extends ValueObject<String> {
  /// @nodoc
  factory Language(String input) {
    assert(input != null);
    return Language._(
      validateLanguage(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Language._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
