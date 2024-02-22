import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

class Leaf extends ValueObject<String> {
  factory Leaf(String input, List<dynamic> json) {
    return Leaf._(
      validateLeaf(input, json),
    );
  }

  factory Leaf.forSaving(Result<String, ValueFailure<String>> input) {
    return Leaf._(
      Ok(input.unwrapOr('')),
    );
  }

  const Leaf._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
