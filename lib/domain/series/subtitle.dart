import 'package:rustic/result.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Subtitle extends ValueObject<String> {
  /// @nodoc
  factory Subtitle(String input) {
    return Subtitle._(
      validateSubtitle(input),
    );
  }

  const Subtitle._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
