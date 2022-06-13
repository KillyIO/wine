import 'package:oxidized/oxidized.dart';
import 'package:wine/features/core/value_failure.domain.dart';
import 'package:wine/features/core/value_object.domain.dart';
import 'package:wine/features/core/value_validators.domain.dart';

/// @nodoc
class Genre extends ValueObject<String> {
  /// @nodoc
  factory Genre(String input) {
    return Genre._(
      validateSelectionNotEmpty(input),
    );
  }

  const Genre._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
