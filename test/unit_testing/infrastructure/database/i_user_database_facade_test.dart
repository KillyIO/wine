import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/database/facades/online/i_online_user_database_facade.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/database/firebase_user_database_facade.dart';

import '../../../mocks/firebase_firestore_mocks.dart';

void main() {
  User user;

  MockFirestore mockFirestore;
  MockDocumentSnapshot mockDocumentSnapshot;
  MockCollectionReference mockCollectionReference;
  MockDocumentReference mockDocumentReference;

  IUserDatabaseFacade userDatabaseFacade;

  setUp(() {
    user = User(
      bio: null,
      createdAt: 1592255973418,
      email: 'email@email.com',
      name: 'Name',
      profilePictureURL: null,
      uid: 'uid',
      updatedAt: 1608137445032,
      username: 'username',
    );

    mockFirestore = MockFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();

    userDatabaseFacade = FirebaseUserDatabaseFacade(mockFirestore);
  });

  group(
    'IUserDatabaseFacade -',
    () {
      group(
        'loadUser -',
        () {
          test(
            '''When loading user data successful Then return UserLoadedSuccess''',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(true);
              when(mockDocumentSnapshot.data()).thenReturn(user.toMap());

              final result = await userDatabaseFacade.loadUser(user.uid);

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<UserLoadedSuccess>());

                  if (success is UserLoadedSuccess) {
                    expect(success.user, user);
                  }
                },
              );
            },
          );

          test(
            'When User not found Then return UserNotFoundFailure',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(false);

              final result = await userDatabaseFacade.loadUser('123456');

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UserNotFoundFailure>()),
                (_) {},
              );
            },
          );

          test(
            'When server exception occurs Then return ServerFailure',
            () async {
              when(mockFirestore.collection(any)).thenThrow(
                FirebaseException(
                  code: 'unsufficient-permissions',
                  message: 'An unexpected error occured!',
                  plugin: 'firestore',
                ),
              );

              final result = await userDatabaseFacade.loadUser(user.uid);

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<ServerFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to load the user details from the online database [UNEXPECTED FAILURE CASE]
            Given user UID
            And User() exists inside Database
            When loadUser() is called
            Then unexpectedFailure() returned
            ''',
            () async {
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result = await onlineUserDatabaseFacade.loadUser(user.uid);

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UnexpectedFailure>()),
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
            '''
            Scenario: We trying to save the user's details into the online database [SUCCESS CASE]
            Given a User()
            And User() doesn't exist inside Database
            When saveDetailsFromUser() is called
            Then userDetailsSavedSuccess() returned with User()
            ''',
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

              final result =
                  await onlineUserDatabaseFacade.saveDetailsFromUser(user);

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<UserDetailsSavedSuccess>());

                  if (success is UserDetailsSavedSuccess) {
                    expect(success.user, user);
                  }
                },
              );
            },
          );

          test(
            '''
            Scenario: We trying to save the user's details into the online database [SUCCESS CASE]
            Given a User()
            And User() exists inside Database
            When saveDetailsFromUser() is called
            Then userDetailsSavedSuccess() with User()
            ''',
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

              final result =
                  await onlineUserDatabaseFacade.saveDetailsFromUser(user);

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<UserDetailsSavedSuccess>());

                  if (success is UserDetailsSavedSuccess) {
                    expect(success.user, user);
                  }
                },
              );
            },
          );

          test(
            '''
            Scenario: We trying to save the user's details into the online database [SERVER FAILURE CASE]
            Given a User()
            When saveDetailsFromUser() is called
            Then serverFailure() is returned
            ''',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any)).thenThrow(
                FirebaseException(
                  code: 'unsufficient-permissions',
                  message: 'An unexpected error occured!',
                  plugin: 'firestore',
                ),
              );

              final result =
                  await onlineUserDatabaseFacade.saveDetailsFromUser(user);

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<ServerFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to save the user's details into the online database [UNEXPECTED FAILURE CASE]
            Given a User()
            When saveDetailsFromUser() is called
            Then unexpectedFailure() is returned
            ''',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result =
                  await onlineUserDatabaseFacade.saveDetailsFromUser(user);

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UnexpectedFailure>()),
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
            '''
            Scenario: We trying to save the user's username inside the online database [SUCCESS CASE]
            Given the user uid and a Username()
            When saveUsername() is called
            Then usernameSavedSuccess() returned with the username as a String
            ''',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);

              // Set data in Firestore
              when(mockDocumentReference.set(any))
                  .thenAnswer((_) async => null);

              final result = await onlineUserDatabaseFacade.saveUsername(
                user.uid,
                Username(user.username),
              );

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<UsernameSavedSuccess>());

                  if (success is UsernameSavedSuccess) {
                    expect(success.username, user.username);
                  }
                },
              );
            },
          );

          test(
            '''
            Scenario: We trying to save the user's username inside the online database [SERVER FAILURE CASE]
            Given the user uid and a Username()
            When saveUsername() is called
            Then serverFailure() returned
            ''',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any)).thenThrow(
                FirebaseException(
                  code: 'unsufficient-permissions',
                  message: 'An unexpected error occured!',
                  plugin: 'firestore',
                ),
              );

              final result = await onlineUserDatabaseFacade.saveUsername(
                user.uid,
                Username(user.username),
              );

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<ServerFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to save the user's username inside the online database [UNEXPECTED FAILURE CASE]
            Given the user uid and a Username()
            When saveUsername() is called
            Then unexpectedFailure() returned
            ''',
            () async {
              const invalidUsername = '';

              final result = await onlineUserDatabaseFacade.saveUsername(
                user.uid,
                Username(invalidUsername),
              );

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UnexpectedFailure>()),
                (_) {},
              );
            },
          );
        },
      );
    },
  );
}
