import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class CoverURL extends ValueObject<String> {
  factory CoverURL(String input) {
    return CoverURL._(
      validateCoverURL(input),
    );
  }

  factory CoverURL.fromFile(String path) {
    return CoverURL._(
      validateCoverFile(path),
    );
  }

  const CoverURL._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
