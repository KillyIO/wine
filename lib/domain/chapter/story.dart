import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Story extends ValueObject<String> {
  /// @nodoc
  factory Story(String input) {
    return Story._(
      validateStory(input),
    );
  }

  /// @nodoc
  const Story._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
