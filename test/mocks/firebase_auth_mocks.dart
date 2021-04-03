import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mocktail/mocktail.dart';

import '../unit_tests/utils/constants.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUser extends Mock implements auth.User {
  MockUser({bool isAnonymous = true}) : _isAnonymous = isAnonymous;

  final bool _isAnonymous;

  @override
  String get displayName => testName;

  @override
  String get uid => testUid;

  @override
  String get email => testEmailAddress;

  @override
  bool get isAnonymous => _isAnonymous;

  @override
  Future<String> getIdToken([bool forceRefresh = false]) async {
    return Future.value('fake_token');
  }
}

class MockAuthCredential extends Mock implements AuthCredential {}
