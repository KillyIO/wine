import 'package:flutter/foundation.dart';
import 'package:wine/domain/enums/session_field.dart';
import 'package:wine/domain/models/hive/session.dart';

abstract class ILocalSessionDatabaseFacade {
  Future<void> setSession({@required Session session});
  Future<void> setSessionData({
    @required SessionField field,
    @required dynamic value,
  });
  Future<void> clearSession();
  Session getSession();
}
