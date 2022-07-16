import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';

/// @nodoc
class Description extends ValueObject<String> {
  /// @nodoc
  factory Description(String input) {
    return Description._(
      validateDescription(input),
    );
  }

  const Description._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
