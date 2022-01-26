import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Body extends ValueObject<String> {
  /// @nodoc
  factory Body(String input, List<dynamic> json) {
    return Body._(
      validateBody(input, json),
    );
  }

  /// @nodoc
  factory Body.forSaving(Result<String, ValueFailure<String>> input) {
    return Body._(
      Ok(input.unwrapOr('')),
    );
  }

  /// @nodoc
  const Body._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
