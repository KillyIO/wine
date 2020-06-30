import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';

import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/constants.dart';

@LazySingleton(as: ILocalSessionDatabaseFacade)
class HiveLocalSessionDatabaseFacade implements ILocalSessionDatabaseFacade {
  final Box<Session> _sessionsBox;

  HiveLocalSessionDatabaseFacade(this._sessionsBox);

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteSession() async {
    await _sessionsBox.delete(Constants.session);

    final Session session = _sessionsBox.get(Constants.session);
    if (session != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(const DatabaseSuccess.sessionDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchSession() async {
    final Session session = _sessionsBox.get(Constants.session);

    if (session != null) {
      return right(DatabaseSuccess.sessionFetchedSCS(session));
    }
    return saveSession(Session());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveSession(
    Session session,
  ) async {
    await _sessionsBox.put(Constants.session, session);

    final Session sessionTest = _sessionsBox.get(Constants.session);
    if (sessionTest != null) {
      return right(const DatabaseSuccess.sessionSavedSCS());
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSession(
    Session session,
  ) async {
    await _sessionsBox.put(Constants.session, session);

    final Session currentSession = _sessionsBox.get(Constants.session);
    if (currentSession != null) {
      return right(const DatabaseSuccess.sessionUpdatedSCS());
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }
}
