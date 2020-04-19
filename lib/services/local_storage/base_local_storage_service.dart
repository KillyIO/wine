import 'package:wine/models/session.dart';
import 'package:wine/models/session_member.dart';
import 'package:wine/services/base_service.dart';

abstract class BaseLocalStorageService extends BaseService {
  Future<void> initLocalStorage();

  Future<void> setSession(Session session);
  Future<void> setSessionData(SessionMember field, dynamic value);
  Future<void> clearSession();
  dynamic getSession();
}
