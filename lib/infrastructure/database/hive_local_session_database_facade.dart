import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';

import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/constants.dart';

/// @nodoc
@LazySingleton(as: ILocalSessionDatabaseFacade)
class HiveLocalSessionDatabaseFacade implements ILocalSessionDatabaseFacade {
  /// @nodoc
  HiveLocalSessionDatabaseFacade(this._sessionsBox);

  final Box<Session> _sessionsBox;

  @override
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>>
      deleteSession() async {
    await _sessionsBox.delete(Constants.session);

    final session = _sessionsBox.get(Constants.session);
    if (session != null) {
      return left(const DatabaseFailure.failedToDeleteLocalData());
    }
    return right(const SessionDatabaseSuccess.sessionDeletedSCS());
  }

  @override
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> fetchSession() async {
    final session = _sessionsBox.get(Constants.session);

    if (session != null) {
      return right(SessionDatabaseSuccess.sessionFetchedSCS(session));
    }
    return initializeSession();
  }

  @override
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> initializeSession({
    Session session,
  }) async {
    await _sessionsBox.put(Constants.session, session ?? Session());

    final sessionTest = _sessionsBox.get(Constants.session);
    if (sessionTest != null) {
      return right(const SessionDatabaseSuccess.sessionInitializedSCS());
    }
    return left(const DatabaseFailure.failedToCreateLocalData());
  }

  @override
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> updateSession(
    Session session,
  ) async {
    await _sessionsBox.put(Constants.session, session);

    final currentSession = _sessionsBox.get(Constants.session);
    if (currentSession != null) {
      return right(const SessionDatabaseSuccess.sessionUpdatedSCS());
    }
    return left(const DatabaseFailure.failedToUpdateLocalData());
  }
}
