import 'package:wine/domain/core/value_failure.dart';

/// @nodoc
class UnexpectedValueError {
  /// @nodoc
  UnexpectedValueError(this.valueFailure);

  /// @nodoc
  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailre at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
