import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';

/// @nodoc
class Title extends ValueObject<String> {
  /// @nodoc
  factory Title(String input) {
    return Title._(
      validateTitle(input),
    );
  }

  /// @nodoc
  factory Title.forSaving(Result<String, ValueFailure<String>> input) {
    return Title._(
      Ok(input.unwrapOr('')),
    );
  }

  const Title._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
