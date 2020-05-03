import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failure.freezed.dart';

@freezed
abstract class DatabaseFailure with _$DatabaseFailure {
  const factory DatabaseFailure.failedToRetrieveUserData() =
      FailedToRetrieveUserData;
}
