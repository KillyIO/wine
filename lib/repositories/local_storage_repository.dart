import 'package:wine/models/session.dart';
import 'package:wine/models/session_member.dart';
import 'package:wine/services/local_storage/base_local_storage_service.dart';
import 'package:wine/services/local_storage/local_storage_service.dart';

class LocalStorageRepository {
  final BaseLocalStorageService _localStorageService = LocalStorageService();

  static final LocalStorageRepository _singleton =
      LocalStorageRepository._internal();

  LocalStorageRepository._internal();

  factory LocalStorageRepository() => _singleton;

  Future<void> initLocalStorage() => _localStorageService.initLocalStorage();

  Future<void> setSession(Session session) =>
      _localStorageService.setSession(session);

  Future<void> setSessionData(SessionMember field, dynamic value) =>
      _localStorageService.setSessionData(field, value);

  Future<void> clearSession() => _localStorageService.clearSession();

  dynamic getSession() => _localStorageService.getSession();
}
