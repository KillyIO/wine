import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Story extends ValueObject<String> {
  /// @nodoc
  factory Story(String input, List<dynamic> json) {
    return Story._(
      validateStory(input, json),
    );
  }

  /// @nodoc
  factory Story.forSaving(Result<String, ValueFailure<String>> input) {
    return Story._(
      Ok(input.unwrapOr('')),
    );
  }

  /// @nodoc
  const Story._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
