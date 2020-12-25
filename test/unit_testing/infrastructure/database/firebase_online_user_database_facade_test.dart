import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/database/firebase_online_user_database_facade.dart';
import 'package:wine/utils/paths.dart';

class MockOnlineUserDatabaseFacade extends Mock
    implements FirebaseOnlineUserDatabaseFacade {
  /// @nodoc
  MockOnlineUserDatabaseFacade(this._firestore);

  final MockFirestoreInstance _firestore;
}

void main() {
  final user = User(
    bio: null,
    createdAt: 1592255973418,
    email: 'oncefilo1@gmail.com',
    name: 'oncefilo',
    profilePictureURL: null,
    uid: 'IhyAvFOnGegIFDBJYmL30nAbWu92',
    updatedAt: 1608137445032,
    username: 'oncefilo',
  );

  MockOnlineUserDatabaseFacade onlineUserDatabaseFacade;

  setUp(() {
    final instance = MockFirestoreInstance();
    instance
        .collection(Paths.usersPath)
        .doc(user.uid)
        .set(user.toMap(), SetOptions(merge: true));

    onlineUserDatabaseFacade = MockOnlineUserDatabaseFacade(instance);
  });

  group(
    'FirebaseOnlineUserDatabaseFacade',
    () {
      test(
        '''
        Given a valid user UID
        When loadUser() is called
        Then userLoadedSuccess() is returned with a User()
        ''',
        () async {
          when(
            onlineUserDatabaseFacade.loadUser(user.uid),
          ).thenAnswer(
            (_) => Future.value(
              right(UserDatabaseSuccess.userLoadedSuccess(user)),
            ),
          );

          expect(
            await onlineUserDatabaseFacade.loadUser(user.uid),
            Right(UserDatabaseSuccess.userLoadedSuccess(user)),
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
          when(
            onlineUserDatabaseFacade.loadUser('123456'),
          ).thenAnswer(
            (_) => Future.value(
              left(const UserDatabaseFailure.userNotFoundFailure()),
            ),
          );

          expect(
            await onlineUserDatabaseFacade.loadUser('123456'),
            const Left(UserDatabaseFailure.userNotFoundFailure()),
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
          when(
            onlineUserDatabaseFacade.loadUser(user.uid),
          ).thenAnswer(
            (_) => Future.value(
              left(const UserDatabaseFailure.serverErrorFailure()),
            ),
          );

          expect(
            await onlineUserDatabaseFacade.loadUser(user.uid),
            const Left(UserDatabaseFailure.serverErrorFailure()),
          );
        },
      );

      test(
        '''
        Given a User()
        When saveDetailsFromUser() is called
        Then userDetailsSavedSuccess() with User().updatedAt == currentTime
        ''',
        () async {
          final currentTime = DateTime.now().millisecondsSinceEpoch;

          when(
            onlineUserDatabaseFacade.saveDetailsFromUser(user),
          ).thenAnswer(
            (_) => Future.value(
              right(
                UserDatabaseSuccess.userDetailsSavedSuccess(
                  user.copyWith(updatedAt: currentTime),
                ),
              ),
            ),
          );

          expect(
            await onlineUserDatabaseFacade.saveDetailsFromUser(user),
            Right(UserDatabaseSuccess.userDetailsSavedSuccess(
              user.copyWith(updatedAt: currentTime),
            )),
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
          when(
            onlineUserDatabaseFacade.saveDetailsFromUser(user),
          ).thenAnswer(
            (_) => Future.value(
              left(const UserDatabaseFailure.serverErrorFailure()),
            ),
          );

          expect(
            await onlineUserDatabaseFacade.saveDetailsFromUser(user),
            const Left(UserDatabaseFailure.serverErrorFailure()),
          );
        },
      );
    },
  );
}
