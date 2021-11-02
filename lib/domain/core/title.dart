import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Title extends ValueObject<String> {
  /// @nodoc
  factory Title(String input) {
    return Title._(
      validateTitle(input),
    );
  }

  const Title._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
