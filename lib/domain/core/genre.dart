import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class Genre extends ValueObject<String> {
  factory Genre(String input) {
    return Genre._(
      validateSelectionNotEmpty(input),
    );
  }

  const Genre._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
