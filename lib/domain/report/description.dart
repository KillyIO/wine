import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

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
