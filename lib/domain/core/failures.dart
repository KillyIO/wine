import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmailAddress({
    @required String failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPassword({
    @required String failedValue,
  }) = InvalidPassword<T>;

  const factory ValueFailure.invalidConfirmPassword({
    @required String failedValue,
  }) = InvalidConfirmPassword<T>;

  const factory ValueFailure.invalidUsername({
    @required String failedValue,
  }) = InvalidUsername<T>;

  const factory ValueFailure.emptyInput({
    @required String failedValue,
  }) = EmptyInput<T>;

  const factory ValueFailure.longInput({
    @required String failedValue,
  }) = LongInput<T>;

  const factory ValueFailure.emptySelection({
    @required String failedValue,
  }) = EmptySelection<T>;
}
