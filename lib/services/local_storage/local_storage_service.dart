import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/models/session.dart';
import 'package:wine/models/session_member.dart';
import 'package:wine/services/local_storage/base_local_storage_service.dart';
import 'package:wine/utils/constants.dart';

class LocalStorageService extends BaseLocalStorageService {
  Box sessionBox;

  static final LocalStorageService _singleton = LocalStorageService._internal();

  LocalStorageService._internal();

  factory LocalStorageService() => _singleton;

  @override
  Future<void> initLocalStorage() async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(SessionAdapter());

    Hive.init(dirPath);

    sessionBox = await Hive.openBox('sessionBox');
  }

  @override
  Future<void> setSession(Session session) async {
    await sessionBox.put(Constants.session, session);
  }

  @override
  Future<void> setSessionData(SessionMember field, dynamic value) async {
    Session session = sessionBox.get(Constants.session);

    if (session == null) {
      await sessionBox.put(Constants.session, Session());
      session = sessionBox.get(Constants.session);
    }

    switch (field) {
      case SessionMember.uid:
        session.uid = value;
        break;
      case SessionMember.is_anonymous:
        session.isAnonymous = value;
        break;
      case SessionMember.name:
        session.name = value;
        break;
      case SessionMember.username:
        session.username = value;
        break;
      case SessionMember.email:
        session.email = value;
        break;
      case SessionMember.profile_picture_url:
        session.profilePictureUrl = value;
        break;
      case SessionMember.phone_number:
        session.phoneNumber = value;
        break;
      case SessionMember.is_email_verified:
        session.isEmailVerified = value;
        break;
      default:
    }
    await session.save();
  }

  @override
  Future<void> clearSession() async {
    await sessionBox.delete(Constants.session);
  }

  @override
  dynamic getSession() {
    return sessionBox.get(Constants.session);
  }

  @override
  void dispose() {
    Hive.close();
  }
}
