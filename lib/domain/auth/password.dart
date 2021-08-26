import 'package:rustic/result.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

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
