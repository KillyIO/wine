import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// @nodoc
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  /// @nodoc
  const factory ValueFailure.invalidEmailAddress({
    @required String failedValue,
  }) = InvalidEmail<T>;

  /// @nodoc
  const factory ValueFailure.invalidPassword({
    @required String failedValue,
  }) = InvalidPassword<T>;

  /// @nodoc
  const factory ValueFailure.invalidConfirmPassword({
    @required String failedValue,
  }) = InvalidConfirmPassword<T>;
}
