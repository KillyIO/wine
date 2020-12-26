import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements auth.FirebaseAuth {}

class MockFirebaseUser extends Mock implements auth.User {
  MockFirebaseUser({bool isAnonymous}) : _isAnonymous = isAnonymous;

  final bool _isAnonymous;

  @override
  String get displayName => 'hdima.riyal.99';

  @override
  String get uid => 'IhyAvFOnGegIFDBJYmL30nAbWu92';

  @override
  String get email => 'hdima.riyal.99@tapiitudulu.com';

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

class MockAuthCredential extends Mock implements AuthCredential {}
