import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

/// @nodoc
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  /// @nodoc
  const factory ValueFailure.emptyInput(T failedValue) = EmptyInput<T>;

  /// @nodoc
  const factory ValueFailure.emptySelection(T failedValue) = EmptySelection<T>;

  /// @nodoc
  const factory ValueFailure.invalidCoverFile(T failureValue) =
      InvalidCoverFile<T>;

  /// @nodoc
  const factory ValueFailure.invalidCoverURL(T failedValue) =
      InvalidCoverURL<T>;

  /// @nodoc
  const factory ValueFailure.invalidEmailAddress(T failedValue) =
      InvalidEmail<T>;

  /// @nodoc
  const factory ValueFailure.invalidPassword(T failedValue) =
      InvalidPassword<T>;

  /// @nodoc
  const factory ValueFailure.invalidConfirmPassword(T failedValue) =
      InvalidConfirmPassword<T>;

  /// @nodoc
  const factory ValueFailure.invalidUniqueID(T failedValue) =
      InvalidUniqueID<T>;

  /// @nodoc
  const factory ValueFailure.invalidUsername(T failedValue) =
      InvalidUsername<T>;

  /// @nodoc
  const factory ValueFailure.tooLongInput(T failedValue) = TooLongInput<T>;

  /// @nodoc
  const factory ValueFailure.tooShortInput(T failedValue) = TooShortInput<T>;
}
