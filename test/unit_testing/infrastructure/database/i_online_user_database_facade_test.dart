import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/database/facades/online/i_online_user_database_facade.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/database/firebase_online_user_database_facade.dart';

import '../../../mocks/firebase_firestore_mocks.dart';

void main() {
  User user;

  MockFirestore mockFirestore;
  MockDocumentSnapshot mockDocumentSnapshot;
  MockCollectionReference mockCollectionReference;
  MockDocumentReference mockDocumentReference;

  IOnlineUserDatabaseFacade onlineUserDatabaseFacade;

  setUp(() {
    user = User(
      bio: null,
      createdAt: 1592255973418,
      email: 'hdima.riyal.99@tapiitudulu.com',
      name: 'hdima.riyal.99',
      profilePictureURL: null,
      uid: 'IhyAvFOnGegIFDBJYmL30nAbWu92',
      updatedAt: 1608137445032,
      username: 'hdima.riyal.99',
    );

    mockFirestore = MockFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();

    onlineUserDatabaseFacade = FirebaseOnlineUserDatabaseFacade(mockFirestore);
  });

  group(
    'IOnlineUserDatabaseFacade -',
    () {
      group(
        'loadUser -',
        () {
          test(
            '''
            Scenario: We try to load the use details from the database [SUCCESS CASE]
            Given user UID
            And User() exists inside Database
            When loadUser is called
            Then userLoadedSuccess() returned with User()
            ''',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(true);
              when(mockDocumentSnapshot.data()).thenReturn(user.toMap());

              final result = await onlineUserDatabaseFacade.loadUser(user.uid);

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
            '''
            Given user UID
            When User() not found inside Database
            Then userNotFoundFailure() returned
            ''',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(false);

              final result = await onlineUserDatabaseFacade.loadUser('123456');

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UserNotFoundFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Given user UID
            When Exception thrown
            Then serverFailure() returned
            ''',
            () async {
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result = await onlineUserDatabaseFacade.loadUser(user.uid);

              expect(result.isLeft(), true);
              expect(result, const Left(UserDatabaseFailure.serverFailure()));

              result.fold(
                (failure) => expect(failure, isA<ServerFailure>()),
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
            Given User()
            When User() not found inside Database
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
            Given a User()
            When User() found inside Database
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
            Given a User()
            When Exception is thrown
            Then serverFailure() is returned
            ''',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result =
                  await onlineUserDatabaseFacade.saveDetailsFromUser(user);

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<ServerFailure>()),
                (_) {},
              );
            },
          );
        },
      );

      // SECTION: saveUsername
      group(
        'saveUsername -',
        () {
          test(
            '''
            Given userUID and username
            When username saved inside Database
            Then usernameSavedSuccess() returned with username
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
            Given userUID and username
            When Exception thrown
            Then serverFailure() returned
            ''',
            () async {
              // Create documentReference to user
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

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
        },
      );
    },
  );
}
