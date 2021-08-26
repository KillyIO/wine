import 'package:equatable/equatable.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/core/errors.dart';
import 'package:wine/domain/core/value_failure.dart';

/// @nodoc
abstract class ValueObject<T> extends Equatable {
  /// @nodoc
  const ValueObject();

  /// @nodoc
  Result<T, ValueFailure<T>> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    // ignore: only_throw_errors
    return value.match((ok) => ok, (err) => throw UnexpectedValueError(err));
  }

  /// @nodoc
  Result<Unit, ValueFailure<dynamic>> get failureOrUnit {
    return value.match(
      (_) => const Ok(Unit()),
      (err) => Err(err),
    );
  }

  /// @nodoc
  bool get isValid => value.isOk;

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}
