import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.emptyInput(T failedValue) = EmptyInput<T>;

  const factory ValueFailure.emptySelection(T failedValue) = EmptySelection<T>;

  const factory ValueFailure.invalidCoverFile(T failureValue) =
      InvalidCoverFile<T>;

  const factory ValueFailure.invalidCoverURL(T failedValue) =
      InvalidCoverURL<T>;

  const factory ValueFailure.invalidEmailAddress(T failedValue) =
      InvalidEmail<T>;

  const factory ValueFailure.invalidLicence(T failedValue) = InvalidLicence<T>;

  const factory ValueFailure.invalidPassword(T failedValue) =
      InvalidPassword<T>;

  const factory ValueFailure.invalidConfirmPassword(T failedValue) =
      InvalidConfirmPassword<T>;

  const factory ValueFailure.invalidUniqueID(T failedValue) =
      InvalidUniqueID<T>;

  const factory ValueFailure.invalidUsername(T failedValue) =
      InvalidUsername<T>;

  const factory ValueFailure.invalidViolation(T failedValue) =
      InvalidViolation<T>;

  const factory ValueFailure.tooLongInput(T failedValue) = TooLongInput<T>;

  const factory ValueFailure.tooShortInput(T failedValue) = TooShortInput<T>;
}
