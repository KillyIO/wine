import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// @nodoc
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  /// @nodoc
  const factory ValueFailure.invalidEmailAddress({
    @required T failedValue,
  }) = InvalidEmail<T>;

  /// @nodoc
  const factory ValueFailure.invalidPassword({
    @required T failedValue,
  }) = InvalidPassword<T>;

  /// @nodoc
  const factory ValueFailure.invalidConfirmPassword({
    @required T failedValue,
  }) = InvalidConfirmPassword<T>;

  /// @nodoc
  const factory ValueFailure.invalidUsername({
    @required T failedValue,
  }) = InvalidUsername<T>;
}
