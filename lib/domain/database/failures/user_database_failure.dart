import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class UserDatabaseFailure with _$UserDatabaseFailure {
  /// @nodoc
  const factory UserDatabaseFailure.serverFailure() = ServerFailure;

  /// @nodoc
  const factory UserDatabaseFailure.userNotFoundFailure() = UserNotFoundFailure;
}
