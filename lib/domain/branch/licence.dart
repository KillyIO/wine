import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';
import 'package:wine/domain/branch/licence_type.dart';

/// @nodoc
class Licence extends ValueObject<LicenceType> {
  /// @nodoc
  factory Licence(LicenceType input) {
    return Licence._(
      validateLicence(input),
    );
  }

  /// @nodoc
  factory Licence.forSaving(
    Result<LicenceType, ValueFailure<LicenceType>> input,
  ) {
    return Licence._(
      Ok(input.unwrapOr(LicenceType.unknown)),
    );
  }

  const Licence._(this.value);

  @override
  final Result<LicenceType, ValueFailure<LicenceType>> value;
}