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
    final firestore = MockFirestoreInstance();

    onlineUserDatabaseFacade = MockOnlineUserDatabaseFacade(firestore);
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
          when(
            onlineUserDatabaseFacade.loadUser('123456'),
          ).thenAnswer(
            (_) => Future.value(
              left(const UserDatabaseFailure.userNotFoundFailure()),
            ),
          );

          final result = await onlineUserDatabaseFacade.loadUser('123456');

          expect(result.isLeft(), true);
          expect(result, const Left(UserDatabaseFailure.userNotFoundFailure()));

          result.fold(
            (_) {},
            (success) => expect(success is UserNotFoundFailure, true),
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

          final result = await onlineUserDatabaseFacade.loadUser(user.uid);

          expect(result.isLeft(), true);
          expect(result, const Left(UserDatabaseFailure.serverErrorFailure()));

          result.fold(
            (_) {},
            (success) => expect(success is ServerErrorFailure, true),
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

          final result =
              await onlineUserDatabaseFacade.saveDetailsFromUser(user);

          expect(result.isRight(), true);
          expect(
            result,
            Right(UserDatabaseSuccess.userDetailsSavedSuccess(
              user.copyWith(updatedAt: currentTime),
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
          when(
            onlineUserDatabaseFacade.saveDetailsFromUser(user),
          ).thenAnswer(
            (_) => Future.value(
              left(const UserDatabaseFailure.serverErrorFailure()),
            ),
          );

          final result =
              await onlineUserDatabaseFacade.saveDetailsFromUser(user);

          expect(result.isLeft(), true);
          expect(
            result,
            const Left(UserDatabaseFailure.serverErrorFailure()),
          );

          result.fold(
            (_) {},
            (success) => expect(success is ServerErrorFailure, true),
          );
        },
      );
    },
  );
}
