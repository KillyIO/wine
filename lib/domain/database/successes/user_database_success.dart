import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'user_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class UserDatabaseSuccess with _$UserDatabaseSuccess {
  /// @nodoc
  const factory UserDatabaseSuccess.userDetailsSavedSuccess(User user) =
      UserDetailsSavedSuccess;

  /// @nodoc
  const factory UserDatabaseSuccess.userLoadedSuccess(User user) =
      UserLoadedSuccess;

  /// @nodoc
  const factory UserDatabaseSuccess.usernameSavedSuccess(String username) =
      UsernameSavedSuccess;
}
