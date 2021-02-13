import 'package:faker/faker.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements auth.FirebaseAuth {}

class MockFirebaseUser extends Mock implements auth.User {
  MockFirebaseUser({bool isAnonymous}) : _isAnonymous = isAnonymous;

  final bool _isAnonymous;

  @override
  String get displayName => const Faker().person.name();

  @override
  String get uid => const Faker().guid.guid();

  @override
  String get email => const Faker().internet.email();

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
