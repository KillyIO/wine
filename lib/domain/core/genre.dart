import 'package:rustic/result.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Genre extends ValueObject<String> {
  /// @nodoc
  factory Genre(String input) {
    return Genre._(
      validateGenre(input),
    );
  }

  const Genre._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
