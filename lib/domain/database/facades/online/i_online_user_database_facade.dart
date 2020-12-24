import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
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
  Future<Either<DatabaseFailure, UserDatabaseSuccess>> loadUsersAsMapByUIDList(
    List<String> userUIDs,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, UserDatabaseSuccess>> loadUsers(
    List<String> userUIDs,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, UserDatabaseSuccess>> saveDetailsFromUser(
    User user,
  );
}
