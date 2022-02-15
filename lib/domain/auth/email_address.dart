import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class EmailAddress extends ValueObject<String> {
  /// @nodoc
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  /// @nodoc
  const EmailAddress._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
