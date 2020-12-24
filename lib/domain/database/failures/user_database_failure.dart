import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class UserDatabaseFailure with _$UserDatabaseFailure {
  /// @nodoc
  const factory UserDatabaseFailure.serverErrorFLR() = ServerErrorFLR;

  /// @nodoc
  const factory UserDatabaseFailure.userNotFoundFLR() = UserNotFoundFLR;
}
