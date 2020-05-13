import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';

import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/constants.dart';

@lazySingleton
@RegisterAs(ILocalSessionDatabaseFacade)
class HiveLocalSessionDatabaseFacade implements ILocalSessionDatabaseFacade {
  final Box<Session> _sessionsBox;

  HiveLocalSessionDatabaseFacade(this._sessionsBox);

  @override
  Future<Either<DatabaseFailure, Unit>> saveSession(Session session) async {
    await _sessionsBox.put(Constants.session, session);

    final Session sessionTest = _sessionsBox.get(Constants.session);
    if (sessionTest != null) {
      return right(unit);
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, Session>> getSession() async {
    final Session session = _sessionsBox.get(Constants.session);

    if (session != null) {
      return right(session);
    }
    return left(const DatabaseFailure.failedToRetrieveLocalData());
  }

  @override
  Future<Either<DatabaseFailure, Unit>> updateSession(Session session) async {
    final Session outdatedSession = _sessionsBox.get(Constants.session);

    await _sessionsBox.put(Constants.session, session);

    final Session currentSession = _sessionsBox.get(Constants.session);
    if (currentSession != outdatedSession) {
      return right(unit);
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, Unit>> deleteSession() async {
    await _sessionsBox.delete(Constants.session);

    final Session session = _sessionsBox.get(Constants.session);
    if (session != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(unit);
  }
}
