import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/models/user.dart';

abstract class IOnlineUserDatabaseFacade {
  // SECTION USER
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveDetailsFromUser(User user);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUser(String sessionUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUsersAsMapByUidList(List<String> userUids);
}
