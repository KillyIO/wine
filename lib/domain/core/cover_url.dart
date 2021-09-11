import 'package:rustic/result.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class CoverURL extends ValueObject<dynamic> {
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
  final Result<dynamic, ValueFailure<dynamic>> value;
}
