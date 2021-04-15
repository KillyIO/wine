import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class CoverURL extends ValueObject<dynamic> {
  /// @nodoc
  factory CoverURL(String input) {
    assert(input != null);
    return CoverURL._(
      validateCoverURL(input),
    );
  }

  /// @nodoc
  factory CoverURL.fromFile(File file) {
    assert(file != null);
    return CoverURL._(
      validateCoverFile(file),
    );
  }

  /// @nodoc
  const CoverURL._(this.value);

  @override
  final Either<ValueFailure<dynamic>, dynamic> value;
}
