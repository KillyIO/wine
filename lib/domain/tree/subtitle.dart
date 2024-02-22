import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class Subtitle extends ValueObject<String> {
  factory Subtitle(String input) {
    return Subtitle._(
      validateSubtitle(input),
    );
  }

  const Subtitle._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
