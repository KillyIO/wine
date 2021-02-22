import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/user/i_user_facade.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/infrastructure/user/firebase_user_database_facade.dart';

import '../../mocks/firebase_firestore_mocks.dart';
import '../../utils/constants.dart';

void main() {
  User user;

  MockFirestore mockFirestore;
  MockDocumentSnapshot mockDocumentSnapshot;
  MockCollectionReference mockCollectionReference;
  MockDocumentReference mockDocumentReference;

  IUserFacade userFacade;

  setUp(() {
    user = User(
      isBanned: false,
      isDeleted: false,
      banDeadline: null,
      createdAt: testTimeStamp,
      updatedAt: testTimeStamp,
      banReason: null,
      bio: null,
      deletionReason: null,
      email: testEmailValid,
      name: testName,
      profilePictureURL: null,
      uid: testUserUID,
      username: testUsernameValid,
    );

    mockFirestore = MockFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();

    userFacade = FirebaseUserFacade(mockFirestore);
  });

  group(
    'IUserDatabaseFacade -',
    () {
      group(
        'loadUser -',
        () {
          test(
            'When user found Then return user',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(true);
              when(mockDocumentSnapshot.data()).thenReturn(user.toMap());

              final result = await userFacade.loadUser(user.uid);

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, user),
              );
            },
          );

          test(
            'When user not found Then return UserNotFound',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(false);

              final result = await userFacade.loadUser('123456');

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<UserNotFound>()),
                (_) {},
              );
            },
          );

          test(
            'When FirebaseException thrown Then return ServerError',
            () async {
              when(mockFirestore.collection(any)).thenThrow(
                FirebaseException(
                  code: 'unsufficient-permissions',
                  message: 'An unexpected error occured!',
                  plugin: 'firestore',
                ),
              );

              final result = await userFacade.loadUser(user.uid);

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<ServerError>()),
                (_) {},
              );
            },
          );

          test(
            'When Exception thrown Then return UnexpectedError',
            () async {
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result = await userFacade.loadUser(user.uid);

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<UnexpectedError>()),
                (_) {},
              );
            },
          );
        },
      );

      group(
        'saveDetailsFromUser -',
        () {
          test(
            'When user created Then return user',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);

              // Load user document if it exists
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(false);

              // Set data in Firestore
              when(mockDocumentReference.set(any))
                  .thenAnswer((_) async => null);

              final result = await userFacade.saveDetailsFromUser(user);

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, user),
              );
            },
          );

          test(
            'When user updated Then return user',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);

              // Load user document if it exists
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(true);
              when(mockDocumentSnapshot.data()).thenReturn(user.toMap());

              // Set data in Firestore
              when(mockDocumentReference.set(any))
                  .thenAnswer((_) async => null);

              final result = await userFacade.saveDetailsFromUser(user);

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(
                  success.updatedAt,
                  isNot(equals(user.updatedAt)),
                ),
              );
            },
          );

          test(
            'When FirebaseException thrown Then return ServerError',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any)).thenThrow(
                FirebaseException(
                  code: 'unsufficient-permissions',
                  message: 'An unexpected error occured!',
                  plugin: 'firestore',
                ),
              );

              final result = await userFacade.saveDetailsFromUser(user);

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<ServerError>()),
                (_) {},
              );
            },
          );

          test(
            'When Exception thrown Then return UnexpectedError',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result = await userFacade.saveDetailsFromUser(user);

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<UnexpectedError>()),
                (_) {},
              );
            },
          );
        },
      );

      group(
        'saveUsername -',
        () {
          test(
            'When username saved Then return unit',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);

              // Set data in Firestore
              when(mockDocumentReference.set(any))
                  .thenAnswer((_) async => null);

              final result = await userFacade.saveUsername(
                user.uid,
                Username(user.username),
              );

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, isA<Unit>()),
              );
            },
          );

          test(
            'When FirebaseException thrown Then return ServerError',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any)).thenThrow(
                FirebaseException(
                  code: 'unsufficient-permissions',
                  message: 'An unexpected error occured!',
                  plugin: 'firestore',
                ),
              );

              final result = await userFacade.saveUsername(
                user.uid,
                Username(user.username),
              );

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<ServerError>()),
                (_) {},
              );
            },
          );

          test(
            'When Exception thrown Then return UnexpectedError',
            () async {
              const invalidUsername = '';

              final result = await userFacade.saveUsername(
                user.uid,
                Username(invalidUsername),
              );

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<UnexpectedError>()),
                (_) {},
              );
            },
          );
        },
      );
    },
  );
}
