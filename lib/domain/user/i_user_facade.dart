import 'package:dartz/dartz.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/user/user_failure.dart';

/// @nodoc
abstract class IUserFacade {
  /// @nodoc
  Future<Either<UserFailure, User>> loadUser(String userUID);

  /// @nodoc
  Future<Either<UserFailure, User>> saveDetailsFromUser(User user);

  /// @nodoc
  Future<Either<UserFailure, Unit>> saveUsername(
    String userUID,
    Username username,
  );
}
