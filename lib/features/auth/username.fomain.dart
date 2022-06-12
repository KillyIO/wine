import 'package:oxidized/oxidized.dart';
import 'package:wine/features/core/value_failure.domain.dart';
import 'package:wine/features/core/value_object.domain.dart';
import 'package:wine/features/core/value_validators.domain.dart';

/// @nodoc
class Username extends ValueObject<String> {
  /// @nodoc
  factory Username(String input) {
    return Username._(
      validateUsername(input),
    );
  }

  /// @nodoc
  const Username._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
