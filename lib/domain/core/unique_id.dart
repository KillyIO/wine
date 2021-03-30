import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class UniqueID extends ValueObject<String> {
  /// @nodoc
  factory UniqueID() {
    return UniqueID._(
      right(Uuid().v1()),
    );
  }

  /// @nodoc
  factory UniqueID.fromUniqueString(String uidStr) {
    assert(uidStr != null);
    return UniqueID._(
      validateUniqueID(uidStr),
    );
  }

  const UniqueID._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
