import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/infrastructure/user/user_repository.dart';
import 'package:wine/utils/paths/users.dart';

import '../utils/constants.dart';

// ignore: todo
// TODO uncomment these tests
// ignore: todo
// TODO once fake_cloud_firestore allows throwing exceptions

void main() {
  late IUserRepository _userRepository;

  late FirebaseFirestore _firestore;

  setUp(() {
    _firestore = FakeFirebaseFirestore();

    _userRepository = UserRepository(_firestore);
  });

  group('checkUsernameAvailability -', () {
    test('When username available Then return Unit', () async {
      final result = await _userRepository
          .checkUsernameAvailability(Username(testUsername));

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, const Unit()),
        (_) {},
      );
    });

    test('When user not available Then return UsernameAlreadyInUse', () async {
      await _firestore
          .collection(usernameUIDMapPath)
          .doc(testUsername)
          .set(<String, dynamic>{'uid': testUserUid}, SetOptions(merge: true));

      final result = await _userRepository
          .checkUsernameAvailability(Username(testUsername));

      expect(result.isErr, true);
      result.match(
        (_) {},
        (err) => expect(err, isA<UsernameAlreadyInUse>()),
      );
    });

    // test('When server error occurs Then return ServerError', () async {
    //   when(_documentReference.get).thenThrow(testRandomServerException);

    //   final result = await _userRepository
    //       .checkUsernameAvailability(Username(testUsername));

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<ServerError>()),
    //   );
    // });

    // test('When unexpected error occurs Then return Unexpected', () async {
    //   when(_documentReference.get).thenThrow(testUnexpected);

    //   final result = await _userRepository
    //       .checkUsernameAvailability(Username(testUsername));

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<Unexpected>()),
    //   );
    // });
  });

  group('loadUser -', () {
    test('When user loaded Then return User', () async {
      await _firestore
          .collection(usersPath)
          .doc(testUserUid)
          .set(testUserFirestore, SetOptions(merge: true));

      final result = await _userRepository.loadUser(testUserUid);

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, testUser),
        (_) {},
      );
    });

    test('When user not loaded Then return UserNotFound', () async {
      final result = await _userRepository.loadUser(testHiveUser.uid);

      expect(result.isErr, true);
      result.match(
        (_) {},
        (err) => expect(err, isA<UserNotFound>()),
      );
    });

    // test('When server error occurs Then return ServerError', () async {
    //   when(_documentReference.get).thenThrow(testRandomServerException);

    //   final result = await _userRepository.loadUser(testHiveUser.uid);

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<ServerError>()),
    //   );
    // });

    // test('When unexpected error occurs Then return Unexpected', () async {
    //   when(_documentReference.get).thenThrow(testUnexpected);

    //   final result = await _userRepository.loadUser(testHiveUser.uid);

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<Unexpected>()),
    //   );
    // });
  });

  group('saveDetailsFromUser -', () {
    test('When user details saved Then return Unit', () async {
      final result = await _userRepository.saveDetailsFromUser(testUser);

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, const Unit()),
        (_) {},
      );
    });

    // test('When server error occurs Then return ServerError', () async {
    //   when(() => _documentReference.set(any(), any()))
    //       .thenThrow(testRandomServerException);

    //   final result = await _userRepository.saveDetailsFromUser(testUser);

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<ServerError>()),
    //   );
    // });

    // test('When unexpected error occurs Then return Unexpected', () async {
    //   when(() => _documentReference.set(any(), any()))
    //       .thenThrow(testUnexpected);

    //   final result = await _userRepository.saveDetailsFromUser(testUser);

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<Unexpected>()),
    //   );
    // });
  });

  group('saveUsername -', () {
    test('When username saved Then return Unit', () async {
      final result = await _userRepository.saveUsername(
        UniqueID.fromUniqueString(testUserUid),
        Username(testUsername),
      );

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, const Unit()),
        (_) {},
        (err) => expect(err, isA<ServerError>()),
      );
    });

    // test('When server error occurs Then return ServerError', () async {
    //   when(() => _documentReference.set(any(), any()))
    //       .thenThrow(testRandomServerException);

    //   final result =
    //       await _userRepository
    //.saveUsername(testUid, Username(testUsername));

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<ServerError>()),
    //   );
    // });

    // test('When unexpected error occurs Then return Unexpected', () async {
    //   when(() => _documentReference.set(any(), any()))
    //       .thenThrow(testUnexpected);

    //   final result =
    //       await _userRepository
    //.saveUsername(testUid, Username(testUsername));

    //   expect(result.isErr, true);
    //   result.match(
    //     (_) {},
    //     (err) => expect(err, isA<Unexpected>()),
    //   );
    // });
  });
}
