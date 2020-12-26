import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/user.dart';

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
}
