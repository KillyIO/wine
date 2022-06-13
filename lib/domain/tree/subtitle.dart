import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';

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
