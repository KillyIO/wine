import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

/// @nodoc
abstract class IUserRepository {
  /// @nodoc
  Future<Result<UserFailure, Unit>> checkUsernameAvailability(
    Username username,
  );

  /// @nodoc
  Future<Result<UserFailure, User>> loadUser(String userUID);

  /// @nodoc
  Future<Result<UserFailure, Unit>> saveDetailsFromUser(User user);

  /// @nodoc
  Future<Result<UserFailure, Unit>> saveUsername(
    String userUID,
    Username username,
  );
}
