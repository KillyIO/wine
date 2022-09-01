import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/core/value_object.dart';
import 'package:wine/domain/core/value_validators.dart';

/// @nodoc
class Leaf extends ValueObject<String> {
  /// @nodoc
  factory Leaf(String input, List<dynamic> json) {
    return Leaf._(
      validateLeaf(input, json),
    );
  }

  /// @nodoc
  factory Leaf.forSaving(Result<String, ValueFailure<String>> input) {
    return Leaf._(
      Ok(input.unwrapOr('')),
    );
  }

  /// @nodoc
  const Leaf._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
