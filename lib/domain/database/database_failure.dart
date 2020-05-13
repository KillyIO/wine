import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failure.freezed.dart';

@freezed
abstract class DatabaseFailure with _$DatabaseFailure {
  // NOTE ONLINE DATA
  const factory DatabaseFailure.failedToCreateOnlineData() = FailedToCreateOnlineData;
  const factory DatabaseFailure.failedToFetchOnlineData() = FailedToFetchOnlineData;
  const factory DatabaseFailure.failedToUpdateOnlineData() = FailedToUpdateOnlineData;
  const factory DatabaseFailure.failedToDeleteOnlineData() = FailedToDeleteOnlineData;

  // NOTE LOCAL DATA
  const factory DatabaseFailure.failedToCreateLocalData() = FailedToCreateLocalData;
  const factory DatabaseFailure.failedToRetrieveLocalData() = FailedToRetrieveLocalData;
  const factory DatabaseFailure.failedToUpdateLocalData() = FailedToUpdateLocalData;
  const factory DatabaseFailure.failedToDeleteLocalData() = FailedToDeleteLocalData;
}
