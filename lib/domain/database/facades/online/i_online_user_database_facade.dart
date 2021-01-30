import 'package:dartz/dartz.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';

/// @nodoc
abstract class IOnlineUserDatabaseFacade {
  /// @nodoc
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> loadUser(
    String userUID,
  );

  /// @nodoc
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> saveDetailsFromUser(
    User user,
  );

  /// @nodoc
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> saveUsername(
    String userUID,
    Username username,
  );
}
