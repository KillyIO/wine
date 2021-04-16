import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Subtitle extends ValueObject<String> {
  /// @nodoc
  factory Subtitle(String input) {
    assert(input != null);
    return Subtitle._(
      validateSubtitle(input),
    );
  }

  // NOTE private contructor
  /// @nodoc
  const Subtitle._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
