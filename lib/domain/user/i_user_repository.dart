import 'package:dartz/dartz.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

/// @nodoc
abstract class IUserRepository {
  /// @nodoc
  Future<Either<UserFailure, Unit>> checkUsernameAvailability(
    Username username,
  );

  /// @nodoc
  Future<Either<UserFailure, User>> loadUser(String userUID);

  /// @nodoc
  Future<Either<UserFailure, Unit>> saveDetailsFromUser(User user);

  /// @nodoc
  Future<Either<UserFailure, Unit>> saveUsername(
    String userUID,
    Username username,
  );
}
