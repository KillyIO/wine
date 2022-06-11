import 'package:oxidized/oxidized.dart';
import 'package:wine/features/core/value_failure.domain.dart';
import 'package:wine/features/core/value_object.domain.dart';
import 'package:wine/features/core/value_validators.domain.dart';

/// @nodoc
class CoverURL extends ValueObject<String> {
  /// @nodoc
  factory CoverURL(String input) {
    return CoverURL._(
      validateCoverURL(input),
    );
  }

  /// @nodoc
  factory CoverURL.fromFile(String path) {
    return CoverURL._(
      validateCoverFile(path),
    );
  }

  /// @nodoc
  const CoverURL._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
