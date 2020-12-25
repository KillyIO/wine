import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/database/firebase_online_user_database_facade.dart';

class MockFirebaseOnlineUserDatabaseFacade extends Mock
    implements FirebaseOnlineUserDatabaseFacade {}

void main() {
  MockFirebaseOnlineUserDatabaseFacade mockFirebaseOnlineUserDatabaseFacade;

  setUp(() {
    mockFirebaseOnlineUserDatabaseFacade =
        MockFirebaseOnlineUserDatabaseFacade();
  });

  group(
    'FirebaseOnlineUserDatabaseFacade',
    () {
      test(
        '''
        loadUser should return an
        Either<Right<UserDatabaseSuccess.userLoadedSCS(User('123456'))>>
        if a user is found when loadUser('123456') function is called
        ''',
        () async {
          when(
            mockFirebaseOnlineUserDatabaseFacade.loadUser('123456'),
          ).thenAnswer(
            (_) async => right(
              UserDatabaseSuccess.userLoadedSCS(
                User(uid: '123456'),
              ),
            ),
          );

          expect(
            await mockFirebaseOnlineUserDatabaseFacade.loadUser('123456'),
            Right(UserDatabaseSuccess.userLoadedSCS(User(uid: '123456'))),
          );
        },
      );

      test(
        '''
        loadUser should return an
        Either<Left<UserDatabaseFailure.userNotFoundFLR())>>
        if no user is found when loadUser('123456') function is called
        ''',
        () async {
          when(
            mockFirebaseOnlineUserDatabaseFacade.loadUser('123456'),
          ).thenAnswer(
            (_) async => left(const UserDatabaseFailure.userNotFoundFLR()),
          );

          expect(
            await mockFirebaseOnlineUserDatabaseFacade.loadUser('123456'),
            const Left(UserDatabaseFailure.userNotFoundFLR()),
          );
        },
      );

      test(
        '''
        loadUser should return an
        Either<Left<UserDatabaseFailure.serverErrorFLR())>>
        if Firebase throw an error when loadUser('123456') function is called
        ''',
        () async {
          when(
            mockFirebaseOnlineUserDatabaseFacade.loadUser('123456'),
          ).thenAnswer(
            (_) async => left(const UserDatabaseFailure.serverErrorFLR()),
          );

          expect(
            await mockFirebaseOnlineUserDatabaseFacade.loadUser('123456'),
            const Left(UserDatabaseFailure.serverErrorFLR()),
          );
        },
      );
    },
  );
}
