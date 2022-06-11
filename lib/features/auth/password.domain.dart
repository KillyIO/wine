import 'package:oxidized/oxidized.dart';

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
