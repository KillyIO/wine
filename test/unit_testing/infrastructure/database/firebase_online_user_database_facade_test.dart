import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/database/firebase_online_user_database_facade.dart';

import '../../../mocks/firebase_firestore_mocks.dart';

void main() {
  final user = User(
    bio: null,
    createdAt: 1592255973418,
    email: 'hdima.riyal.99@tapiitudulu.com',
    name: 'hdima.riyal.99',
    profilePictureURL: null,
    uid: 'IhyAvFOnGegIFDBJYmL30nAbWu92',
    updatedAt: 1608137445032,
    username: 'hdima.riyal.99',
  );

  MockFirestore firestore;
  MockDocumentSnapshot mockDocumentSnapshot;
  MockCollectionReference mockCollectionReference;
  MockDocumentReference mockDocumentReference;

  FirebaseOnlineUserDatabaseFacade onlineUserDatabaseFacade;

  setUp(() {
    firestore = MockFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();

    onlineUserDatabaseFacade = FirebaseOnlineUserDatabaseFacade(firestore);
  });

  group(
    'FirebaseOnlineUserDatabaseFacade',
    () {
      // SECTION: loadUser
      test(
        '''
        Given a valid user UID
        When loadUser() is called
        Then userLoadedSuccess() is returned with a User()
        ''',
        () async {
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);
          when(mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(mockDocumentSnapshot.exists).thenReturn(true);
          when(mockDocumentSnapshot.data()).thenReturn(user.toMap());

          final result = await onlineUserDatabaseFacade.loadUser(user.uid);

          expect(result.isRight(), true);
          expect(result, Right(UserDatabaseSuccess.userLoadedSuccess(user)));

          result.fold(
            (_) {},
            (success) {
              expect(success is UserLoadedSuccess, true);

              if (success is UserLoadedSuccess) {
                expect(success.user, user);
              }
            },
          );
        },
      );

      test(
        '''
        Given an invalid user UID
        When loadUser() is called
        Then userNotFoundFailure() is returned
        ''',
        () async {
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);
          when(mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(mockDocumentSnapshot.exists).thenReturn(false);

          final result = await onlineUserDatabaseFacade.loadUser('123456');

          expect(result.isLeft(), true);
          expect(result, const Left(UserDatabaseFailure.userNotFoundFailure()));

          result.fold(
            (failure) => expect(failure is UserNotFoundFailure, true),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an error is thrown server side
        When loadUser() is called
        Then serverErrorFailure() is returned
        ''',
        () async {
          when(firestore.collection(any)).thenAnswer(
            (_) => throw Exception('An unexpected error occured!'),
          );

          final result = await onlineUserDatabaseFacade.loadUser(user.uid);

          expect(result.isLeft(), true);
          expect(result, const Left(UserDatabaseFailure.serverFailure()));

          result.fold(
            (failure) => expect(failure is ServerFailure, true),
            (_) {},
          );
        },
      );

      // SECTION: saveDetailsFromUser
      test(
        '''
        Given a User() and user doesn't exists
        When saveDetailsFromUser() is called
        Then userDetailsSavedSuccess() with User()
        ''',
        () async {
          // Create documentReference to user
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);

          // Load user document if it exists
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);
          when(mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(mockDocumentSnapshot.exists).thenReturn(false);

          // Set data in Firestore
          when(mockDocumentReference.set(any)).thenAnswer((_) async => null);

          final result =
              await onlineUserDatabaseFacade.saveDetailsFromUser(user);

          expect(result.isRight(), true);
          expect(
            result,
            Right(UserDatabaseSuccess.userDetailsSavedSuccess(
              user.copyWith(updatedAt: DateTime.now().millisecondsSinceEpoch),
            )),
          );

          result.fold(
            (_) {},
            (success) {
              expect(success is UserDetailsSavedSuccess, true);

              if (success is UserDetailsSavedSuccess) {
                expect(success.user, user);
              }
            },
          );
        },
      );

      test(
        '''
        Given a User() and user exists
        When saveDetailsFromUser() is called
        Then userDetailsSavedSuccess() with User()
        ''',
        () async {
          // Create documentReference to user
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);

          // Load user document if it exists
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);
          when(mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(mockDocumentSnapshot.exists).thenReturn(true);
          when(mockDocumentSnapshot.data()).thenReturn(user.toMap());

          // Set data in Firestore
          when(mockDocumentReference.set(any)).thenAnswer((_) async => null);

          final result =
              await onlineUserDatabaseFacade.saveDetailsFromUser(user);

          expect(result.isRight(), true);
          expect(
            result,
            Right(UserDatabaseSuccess.userDetailsSavedSuccess(
              user.copyWith(updatedAt: DateTime.now().millisecondsSinceEpoch),
            )),
          );

          result.fold(
            (_) {},
            (success) {
              expect(success is UserDetailsSavedSuccess, true);

              if (success is UserDetailsSavedSuccess) {
                expect(success.user, user);
              }
            },
          );
        },
      );

      test(
        '''
        Given an error is thrown server side
        When saveDetailsFromUser() is called
        Then serverErrorFailure() is returned
        ''',
        () async {
          // Create documentReference to user
          when(firestore.collection(any)).thenAnswer(
            (_) => throw Exception('An unexpected error occured!'),
          );

          final result =
              await onlineUserDatabaseFacade.saveDetailsFromUser(user);

          expect(result.isLeft(), true);
          expect(
            result,
            const Left(UserDatabaseFailure.serverFailure()),
          );

          result.fold(
            (failure) => expect(failure is ServerFailure, true),
            (_) {},
          );
        },
      );

      // SECTION: saveUsername
      test(
        '''
        Given a userUID and a username
        When saveUsername() is called
        Then usernameSavedSuccess() is returned
        ''',
        () async {
          // Create documentReference to user
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);

          // Set data in Firestore
          when(mockDocumentReference.set(any)).thenAnswer((_) async => null);

          final result = await onlineUserDatabaseFacade.saveUsername(
            user.uid,
            user.username,
          );

          expect(result.isRight(), true);
          expect(
            result,
            Right(UserDatabaseSuccess.usernameSavedSuccess(user.username)),
          );

          result.fold(
            (_) {},
            (success) {
              expect(success is UsernameSavedSuccess, true);

              if (success is UsernameSavedSuccess) {
                expect(success.username, user.username);
              }
            },
          );
        },
      );

      test(
        '''
        Given an error is thrown server side
        When saveUsername() is called
        Then serverErrorFailure() is returned
        ''',
        () async {
          // Create documentReference to user
          when(firestore.collection(any)).thenAnswer(
            (_) => throw Exception('An unexpected error occured!'),
          );

          final result = await onlineUserDatabaseFacade.saveUsername(
            user.uid,
            user.username,
          );

          expect(result.isLeft(), true);
          expect(
            result,
            const Left(UserDatabaseFailure.serverFailure()),
          );

          result.fold(
            (failure) => expect(failure is ServerFailure, true),
            (_) {},
          );
        },
      );
    },
  );
}
