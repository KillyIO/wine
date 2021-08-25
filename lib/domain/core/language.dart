import 'package:rustic/result.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Language extends ValueObject<String> {
  /// @nodoc
  factory Language(String input) {
    return Language._(
      validateLanguage(input),
    );
  }

  const Language._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
