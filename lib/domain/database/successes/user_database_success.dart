import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/count.dart';
import 'package:wine/domain/models/user.dart';

part 'user_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class UserDatabaseSuccess with _$UserDatabaseSuccess {
  /// @nodoc
  const factory UserDatabaseSuccess.followCountLoadedSCS(Count count) =
      FollowCountLoadedSCS;

  /// @nodoc
  const factory UserDatabaseSuccess.followCountUpdatedSCS() =
      FollowCountUpdatedSCS;

  /// @nodoc
  const factory UserDatabaseSuccess.followingStatusLoadedSCS({
    @required bool status,
  }) = FollowingStatusLoadedSCS;

  /// @nodoc
  const factory UserDatabaseSuccess.userAsMapLoadedSCS(
    Map<String, User> usersMap,
  ) = UserAsMapLoadedSCS;

  /// @nodoc
  const factory UserDatabaseSuccess.userDetailsSavedSCS(User user) =
      UserDetailsSavedSCS;

  /// @nodoc
  const factory UserDatabaseSuccess.userLoadedSCS(User user) = UserLoadedSCS;

  /// @nodoc
  const factory UserDatabaseSuccess.usersLoadedSCS(List<User> users) =
      UsersLoadedSCS;
}
