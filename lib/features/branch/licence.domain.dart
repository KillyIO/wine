import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/core/value_object.domain.dart';
import 'package:wine/core/value_validators.domain.dart';
import 'package:wine/features/branch/licence_type.domain.dart';

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
