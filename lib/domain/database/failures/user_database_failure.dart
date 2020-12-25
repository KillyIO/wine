import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class UserDatabaseFailure with _$UserDatabaseFailure {
  /// @nodoc
  const factory UserDatabaseFailure.serverErrorFailure() = ServerErrorFailure;

  /// @nodoc
  const factory UserDatabaseFailure.userNotFoundFailure() = UserNotFoundFailure;
}
