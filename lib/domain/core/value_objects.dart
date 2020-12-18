import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wine/domain/core/errors.dart';
import 'package:wine/domain/core/failures.dart';

/// @nodoc
@immutable
abstract class ValueObject<T> {
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
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
