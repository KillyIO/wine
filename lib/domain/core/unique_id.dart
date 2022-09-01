import 'package:oxidized/oxidized.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class UniqueID extends ValueObject<String> {
  /// @nodoc
  factory UniqueID() {
    return UniqueID._(
      Ok(const Uuid().v1()),
    );
  }

  /// @nodoc
  factory UniqueID.fromUniqueString(String uidStr) {
    return UniqueID._(
      validateUniqueID(uidStr),
    );
  }

  const UniqueID._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
