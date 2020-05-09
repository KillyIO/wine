import 'package:flutter/foundation.dart';
import 'package:wine/domain/enums/session_field.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';

abstract class ILocalSessionDatabaseFacade {
  // SECTION Session
  Future<void> setSession(Session session);
  Future<void> setSessionData({
    @required SessionField field,
    @required dynamic value,
  });
  Future<void> clearSession();
  Session getSession();

  // SECTION Series Draft
  Future<void> saveSeriesDraft(SeriesDraft seriesDraft);
  SeriesDraft getSeriesDraft(String uid);
  Future<void> deleteSeriesDraft(String uid);
}
