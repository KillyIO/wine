import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wine/domain/core/errors.dart';
import 'package:wine/domain/core/value_failure.dart';

/// @nodoc
abstract class ValueObject<T> extends Equatable {
  /// @nodoc
  const ValueObject();

  /// @nodoc
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    // ignore: only_throw_errors
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  /// @nodoc
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  /// @nodoc
  bool isValid() => value.isRight();

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}
