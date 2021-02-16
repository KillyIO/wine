import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:mockito/mockito.dart';

import '../utils/constants.dart';

class MockFirebaseAuth extends Mock implements auth.FirebaseAuth {}

class MockFirebaseUser extends Mock implements auth.User {
  MockFirebaseUser({bool isAnonymous}) : _isAnonymous = isAnonymous;

  final bool _isAnonymous;

  @override
  String get displayName => testName;

  @override
  String get uid => testUserUID;

  @override
  String get email => testEmail;

  @override
  bool get isAnonymous => _isAnonymous;

  @override
  Future<String> getIdToken([bool forceRefresh = false]) async {
    return Future.value('fake_token');
  }
}

class MockUserCredential extends Mock implements auth.UserCredential {
  MockUserCredential({bool isAnonymous}) : _isAnonymous = isAnonymous;

  final bool _isAnonymous;

  @override
  auth.User get user => MockFirebaseUser(isAnonymous: _isAnonymous);
}
