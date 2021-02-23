import 'package:mockito/mockito.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';
import 'package:wine/infrastructure/session/hive_session_facade.dart';
import 'package:wine/infrastructure/user/firebase_user_database_facade.dart';

class MockAuthenticationFacade extends Mock
    implements FirebaseAuthenticationFacade {}

class MockSessionFacade extends Mock implements HiveSessionFacade {}

class MockUserFacade extends Mock implements FirebaseUserFacade {}
