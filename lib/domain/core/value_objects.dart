import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wine/domain/core/failures.dart';

/// @nodoc
abstract class ValueObject<T> extends Equatable {
  /// @nodoc
  const ValueObject();

  /// @nodoc
  Either<ValueFailure<T>, T> get value;

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}
