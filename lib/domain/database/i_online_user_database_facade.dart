import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/user.dart';

abstract class IOnlineUserDatabaseFacade {
  // SECTION USER
  Future<Either<DatabaseFailure, User>> saveDetailsFromUser(User user);
  Future<Either<DatabaseFailure, User>> getUser(String sessionUid);
  Future<Either<DatabaseFailure, Map<String, User>>> getUsersAsMapByUidList(
    List<String> userUids,
  );
}
