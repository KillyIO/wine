import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

/// @nodoc
abstract class IUserRepository {
  /// @nodoc
  Future<Result<Unit, UserFailure>> checkUsernameAvailability(
    Username username,
  );

  /// @nodoc
  Future<Result<User, UserFailure>> loadUser(String userUID);

  /// @nodoc
  Future<Result<Unit, UserFailure>> saveDetailsFromUser(User user);

  /// @nodoc
  Future<Result<Unit, UserFailure>> saveUsername(
    String userUID,
    Username username,
  );
}
