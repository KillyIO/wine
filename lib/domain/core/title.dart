import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class Title extends ValueObject<String> {
  factory Title(String input) {
    return Title._(
      validateTitle(input),
    );
  }

  factory Title.forSaving(Result<String, ValueFailure<String>> input) {
    return Title._(
      Ok(input.unwrapOr('')),
    );
  }

  const Title._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
