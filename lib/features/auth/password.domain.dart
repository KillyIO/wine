import 'package:oxidized/oxidized.dart';
import 'package:wine/features/core/value_failure.domain.dart';
import 'package:wine/features/core/value_object.domain.dart';
import 'package:wine/features/core/value_validators.domain.dart';

/// @nodoc
class Password extends ValueObject<String> {
  /// @nodoc
  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  /// @nodoc
  const Password._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
