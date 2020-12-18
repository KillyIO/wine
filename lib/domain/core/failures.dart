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

  /// @nodoc
  const factory ValueFailure.invalidUsername({
    @required String failedValue,
  }) = InvalidUsername<T>;

  /// @nodoc
  const factory ValueFailure.emptyInput({
    @required String failedValue,
  }) = EmptyInput<T>;

  /// @nodoc
  const factory ValueFailure.shortInput({
    @required String failedValue,
  }) = ShortInput<T>;

  /// @nodoc
  const factory ValueFailure.longInput({
    @required String failedValue,
  }) = LongInput<T>;

  /// @nodoc
  const factory ValueFailure.emptySelection({
    @required String failedValue,
  }) = EmptySelection<T>;
}
