import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/injection.dart';

Future<void> setupInjection() async {
  await getIt.reset();

  await configureInjection(Environment.test);

  getIt.registerLazySingleton<IAuthFacade>(() => MockAuthFacade());
  getIt.registerLazySingleton<IDefaultCoversRepository>(
      () => MockDefaultCoversRepository());
  getIt.registerLazySingleton<ISessionsRepository>(
      () => MockSessionsRepository());
  getIt.registerLazySingleton<ISettingsRepository>(
      () => MockSettingsRepository());
  getIt.registerLazySingleton<IUserRepository>(() => MockUserRepository());
}

class MockAuthFacade extends Mock implements IAuthFacade {}

class MockDefaultCoversRepository extends Mock
    implements IDefaultCoversRepository {}

class MockSessionsRepository extends Mock implements ISessionsRepository {}

class MockSettingsRepository extends Mock implements ISettingsRepository {}

class MockUserRepository extends Mock implements IUserRepository {}
