import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/enums/session_field.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/constants.dart';

@lazySingleton
@RegisterAs(ILocalSessionDatabaseFacade)
class HiveLocalSessionDatabaseFacade implements ILocalSessionDatabaseFacade {
  final Box<Session> _sessionsBox;
  final Box<SeriesDraft> _seriesDraftBox;

  HiveLocalSessionDatabaseFacade(
    this._sessionsBox,
    this._seriesDraftBox,
  );

  @override
  Future<void> setSession(Session session) async {
    await _sessionsBox.put(Constants.session, session);
  }

  @override
  Future<void> setSessionData({
    @required SessionField field,
    @required dynamic value,
  }) async {
    Session session = _sessionsBox.get(Constants.session);

    if (session == null) {
      await _sessionsBox.put(Constants.session, Session());
      session = _sessionsBox.get(Constants.session);
    }

    switch (field) {
      case SessionField.uid:
        session.uid = value as String;
        break;
      case SessionField.name:
        session.name = value as String;
        break;
      case SessionField.username:
        session.username = value as String;
        break;
      case SessionField.email:
        session.email = value as String;
        break;
      case SessionField.profilePictureUrl:
        session.profilePictureUrl = value as String;
        break;
      case SessionField.createdAt:
        session.createdAt = value as int;
        break;
      case SessionField.updatedAt:
        session.updatedAt = value as int;
        break;
      case SessionField.bio:
        session.bio = value as String;
        break;
      default:
    }
    await session.save();
  }

  @override
  Future<void> clearSession() async {
    await _sessionsBox.delete(Constants.session);
  }

  @override
  Session getSession() {
    return _sessionsBox.get(Constants.session);
  }

  @override
  Future<void> saveSeriesDraft(SeriesDraft seriesDraft) async {
    await _seriesDraftBox.put(seriesDraft.uid, seriesDraft);
  }

  @override
  SeriesDraft getSeriesDraft(String uid) {
    return _seriesDraftBox.get(uid);
  }

  @override
  Future<void> deleteSeriesDraft(String uid) async {
    await _seriesDraftBox.delete(uid);
  }
}
