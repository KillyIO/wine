import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
import 'package:wine/infrastructure/user/user_repository.dart';

import '../../mocks/cloud_firestore_mocks.dart';
import '../utils/constants.dart';

void main() {
  IUserRepository _userRepository;

  FirebaseFirestore _firestore;

  CollectionReference _collectionReference;
  DocumentReference _documentReference;
  DocumentSnapshot _documentSnapshot;

  setUpAll(() {
    registerFallbackValue<SetOptions>(MockSetOptions());
  });

  setUp(() {
    _firestore = MockFirebaseFirestore();

    _collectionReference = MockCollectionReference();
    _documentReference = MockDocumentReference();
    _documentSnapshot = MockDocumentSnapshot();

    _userRepository = UserRepository(_firestore);

    when(() => _firestore.collection(any())).thenReturn(_collectionReference);
    when(() => _collectionReference.doc(any())).thenReturn(_documentReference);
  });

  group('checkUsernameAvailability -', () {
    test('When username available Then return Unit', () async {
      when(_documentReference.get).thenAnswer((_) async => _documentSnapshot);
      when(() => _documentSnapshot.exists).thenReturn(false);

      final result = await _userRepository
          .checkUsernameAvailability(Username(testUsername));

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When user not available Then return UsernameAlreadyInUse', () async {
      when(_documentReference.get).thenAnswer((_) async => _documentSnapshot);
      when(() => _documentSnapshot.exists).thenReturn(true);

      final result = await _userRepository
          .checkUsernameAvailability(Username(testUsername));

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<UsernameAlreadyInUse>()),
        (_) {},
      );
    });

    test('When server error occurs Then return ServerError', () async {
      when(_documentReference.get).thenThrow(testRandomServerException);

      final result = await _userRepository
          .checkUsernameAvailability(Username(testUsername));

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ServerError>()),
        (_) {},
      );
    });

    test('When unexpected error occurs Then return Unexpected', () async {
      when(_documentReference.get).thenThrow(testUnexpected);

      final result = await _userRepository
          .checkUsernameAvailability(Username(testUsername));

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<Unexpected>()),
        (_) {},
      );
    });
  });

  group('loadUser -', () {
    test('When user loaded Then return User', () async {
      when(_documentReference.get).thenAnswer((_) async => _documentSnapshot);
      when(() => _documentSnapshot.exists).thenReturn(true);
      when(_documentSnapshot.data).thenReturn(testUserAsMap);
      when(() => _documentSnapshot.id).thenReturn(testUserAsMap['uid']);

      final result = await _userRepository.loadUser(testUserAsMap['uid']);

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, testUserAsMap.toDomain()),
      );
    });

    test('When user not loaded Then return UserNotFound', () async {
      when(_documentReference.get).thenAnswer((_) async => _documentSnapshot);
      when(() => _documentSnapshot.exists).thenReturn(false);

      final result = await _userRepository.loadUser(testUserAsMap['uid']);

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<UserNotFound>()),
        (_) {},
      );
    });

    test('When server error occurs Then return ServerError', () async {
      when(_documentReference.get).thenThrow(testRandomServerException);

      final result = await _userRepository.loadUser(testUserAsMap['uid']);

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ServerError>()),
        (_) {},
      );
    });

    test('When unexpected error occurs Then return Unexpected', () async {
      when(_documentReference.get).thenThrow(testUnexpected);

      final result = await _userRepository.loadUser(testUserAsMap['uid']);

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<Unexpected>()),
        (_) {},
      );
    });
  });

  group('saveDetailsFromUser -', () {
    test('When user details saved Then return Unit', () async {
      final result = await _userRepository.saveDetailsFromUser(testUser);

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When server error occurs Then return ServerError', () async {
      when(() => _documentReference.set(any(), any()))
          .thenThrow(testRandomServerException);

      final result = await _userRepository.saveDetailsFromUser(testUser);

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ServerError>()),
        (_) {},
      );
    });

    test('When unexpected error occurs Then return Unexpected', () async {
      when(() => _documentReference.set(any(), any()))
          .thenThrow(testUnexpected);

      final result = await _userRepository.saveDetailsFromUser(testUser);

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<Unexpected>()),
        (_) {},
      );
    });
  });

  group('saveUsername -', () {
    test('When username saved Then return Unit', () async {
      final result =
          await _userRepository.saveUsername(testUid, Username(testUsername));

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When server error occurs Then return ServerError', () async {
      when(() => _documentReference.set(any(), any()))
          .thenThrow(testRandomServerException);

      final result =
          await _userRepository.saveUsername(testUid, Username(testUsername));

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ServerError>()),
        (_) {},
      );
    });

    test('When unexpected error occurs Then return Unexpected', () async {
      when(() => _documentReference.set(any(), any()))
          .thenThrow(testUnexpected);

      final result =
          await _userRepository.saveUsername(testUid, Username(testUsername));

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<Unexpected>()),
        (_) {},
      );
    });
  });
}
