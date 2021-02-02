import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements auth.FirebaseAuth {}

class MockFirebaseUser extends Mock implements auth.User {
  MockFirebaseUser({bool isAnonymous}) : _isAnonymous = isAnonymous;

  final bool _isAnonymous;

  @override
  String get displayName => 'display-name';

  @override
  String get uid => 'uid';

  @override
  String get email => 'email@email.com';

  @override
  bool get isAnonymous => _isAnonymous;

  @override
  Future<String> getIdToken([bool forceRefresh = false]) async {
    return Future.value('fake_token');
  }
}

class MockUserCredential extends Mock implements UserCredential {
  MockUserCredential({bool isAnonymous}) : _isAnonymous = isAnonymous;

  final bool _isAnonymous;

  @override
  User get user => MockFirebaseUser(isAnonymous: _isAnonymous);
}
