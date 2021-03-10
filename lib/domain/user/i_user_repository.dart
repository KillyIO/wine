import 'package:dartz/dartz.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/user_failure.dart';

/// @nodoc
abstract class IUserRepository {
  /// @nodoc
  Future<Either<UserFailure, Unit>> checkUsernameAvailability(
    Username username,
  );
}
