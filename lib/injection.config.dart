// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i16;
import 'package:shared_preferences/shared_preferences.dart' as _i18;
import 'package:wine/application/auth/auth_bloc.dart' as _i19;
import 'package:wine/application/auth/dialog/auth_dialog_cubit.dart' as _i3;
import 'package:wine/application/branch/branch_bloc.dart' as _i38;
import 'package:wine/application/home/home_bloc.dart' as _i20;
import 'package:wine/application/library/library_bloc.dart' as _i30;
import 'package:wine/application/log_in/log_in_bloc.dart' as _i31;
import 'package:wine/application/report/report_bloc.dart' as _i17;
import 'package:wine/application/settings/settings_bloc.dart' as _i32;
import 'package:wine/application/setup/setup_bloc.dart' as _i33;
import 'package:wine/application/sign_up/sign_up_bloc.dart' as _i34;
import 'package:wine/application/tree/tree_bloc.dart' as _i35;
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart'
    as _i36;
import 'package:wine/application/typewriter/tree/typewriter_tree_bloc.dart'
    as _i37;
import 'package:wine/domain/auth/i_auth_facade.dart' as _i8;
import 'package:wine/domain/branch/i_branch_repository.dart' as _i10;
import 'package:wine/domain/default_covers/i_default_covers_repository.dart'
    as _i21;
import 'package:wine/domain/sessions/i_sessions_repository.dart' as _i24;
import 'package:wine/domain/settings/i_settings_repository.dart' as _i27;
import 'package:wine/domain/tree/i_tree_repository.dart' as _i12;
import 'package:wine/domain/user/i_user_repository.dart' as _i14;
import 'package:wine/infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'package:wine/infrastructure/branch/branch_repository.dart' as _i11;
import 'package:wine/infrastructure/core/firebase_injectable_module.dart'
    as _i39;
import 'package:wine/infrastructure/core/isar_injectable_module.dart' as _i40;
import 'package:wine/infrastructure/core/shared_preferences_injectable_module.dart'
    as _i41;
import 'package:wine/infrastructure/default_covers/isar_default_covers_repository.dart'
    as _i22;
import 'package:wine/infrastructure/default_covers/shared_preferences_default_covers_repository.dart'
    as _i23;
import 'package:wine/infrastructure/sessions/isar_sessions_repository.dart'
    as _i25;
import 'package:wine/infrastructure/sessions/shared_preferences_sessions_repository.dart'
    as _i26;
import 'package:wine/infrastructure/settings/isar_settings_repository.dart'
    as _i28;
import 'package:wine/infrastructure/settings/shared_preferences_settings_repository.dart'
    as _i29;
import 'package:wine/infrastructure/tree/tree_repository.dart' as _i13;
import 'package:wine/infrastructure/user/user_repository.dart' as _i15;

const String _dev = 'dev';
const String _prod = 'prod';
const String _devWeb = 'devWeb';
const String _prodWeb = 'prodWeb';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    final iIsarInjectableModule = _$IIsarInjectableModule();
    final iSharedPreferencesInjectableModule =
        _$ISharedPreferencesInjectableModule();
    gh.factory<_i3.AuthDialogCubit>(() => _i3.AuthDialogCubit());
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.FirebaseStorage>(
        () => firebaseInjectableModule.firebaseStorage);
    gh.lazySingleton<_i7.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.FirebaseAuthFacade(
        gh<_i4.FirebaseAuth>(),
        gh<_i7.GoogleSignIn>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i10.IBranchRepository>(
      () => _i11.BranchRepository(
        gh<_i5.FirebaseFirestore>(),
        gh<_i6.FirebaseStorage>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i12.ITreeRepository>(
      () => _i13.TreeRepository(
        gh<_i5.FirebaseFirestore>(),
        gh<_i6.FirebaseStorage>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i14.IUserRepository>(
      () => _i15.UserRepository(gh<_i5.FirebaseFirestore>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.lazySingletonAsync<_i16.Isar>(
      () => iIsarInjectableModule.isar,
      preResolve: true,
    );
    gh.factory<_i17.ReportBloc>(
      () => _i17.ReportBloc(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    await gh.lazySingletonAsync<_i18.SharedPreferences>(
      () => iSharedPreferencesInjectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i20.HomeBloc>(
      () => _i20.HomeBloc(gh<_i12.ITreeRepository>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i21.IDefaultCoversRepository>(
      () => _i22.IsarDefaultCoversRepository(
        gh<_i5.FirebaseFirestore>(),
        gh<_i16.Isar>(),
      ),
      instanceName: 'IsarDefaultCoversRepository',
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i21.IDefaultCoversRepository>(
      () => _i23.SharedPreferencesDefaultCoversRepository(
        gh<_i5.FirebaseFirestore>(),
        gh<_i18.SharedPreferences>(),
      ),
      instanceName: 'SharedPreferencesDefaultCoversRepository',
      registerFor: {
        _devWeb,
        _prodWeb,
      },
    );
    gh.lazySingleton<_i24.ISessionsRepository>(
      () => _i25.IsarSessionsRepository(
        gh<_i4.FirebaseAuth>(),
        gh<_i16.Isar>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i24.ISessionsRepository>(
      () => _i26.SharedPreferencesSessionsRepository(
        gh<_i4.FirebaseAuth>(),
        gh<_i18.SharedPreferences>(),
      ),
      registerFor: {
        _devWeb,
        _prodWeb,
      },
    );
    gh.lazySingleton<_i27.ISettingsRepository>(
      () => _i28.SettingsRepository(gh<_i16.Isar>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i27.ISettingsRepository>(
      () => _i29.SharedPreferencesSettingsRepository(
          gh<_i18.SharedPreferences>()),
      registerFor: {
        _devWeb,
        _prodWeb,
      },
    );
    gh.factory<_i30.LibraryBloc>(() => _i30.LibraryBloc(
          gh<_i10.IBranchRepository>(),
          gh<_i24.ISessionsRepository>(),
          gh<_i12.ITreeRepository>(),
        ));
    gh.factory<_i31.LogInBloc>(() => _i31.LogInBloc(
          gh<_i8.IAuthFacade>(),
          gh<_i21.IDefaultCoversRepository>(),
          gh<_i24.ISessionsRepository>(),
          gh<_i14.IUserRepository>(),
        ));
    gh.factory<_i32.SettingsBloc>(() => _i32.SettingsBloc(
          gh<_i8.IAuthFacade>(),
          gh<_i24.ISessionsRepository>(),
          gh<_i27.ISettingsRepository>(),
        ));
    gh.factory<_i33.SetupBloc>(() => _i33.SetupBloc(
          gh<_i8.IAuthFacade>(),
          gh<_i21.IDefaultCoversRepository>(),
          gh<_i24.ISessionsRepository>(),
          gh<_i27.ISettingsRepository>(),
          gh<_i14.IUserRepository>(),
        ));
    gh.factory<_i34.SignUpBloc>(() => _i34.SignUpBloc(
          gh<_i8.IAuthFacade>(),
          gh<_i21.IDefaultCoversRepository>(),
          gh<_i24.ISessionsRepository>(),
          gh<_i14.IUserRepository>(),
        ));
    gh.factory<_i35.TreeBloc>(() => _i35.TreeBloc(
          gh<_i8.IAuthFacade>(),
          gh<_i10.IBranchRepository>(),
          gh<_i24.ISessionsRepository>(),
          gh<_i27.ISettingsRepository>(),
          gh<_i12.ITreeRepository>(),
          gh<_i14.IUserRepository>(),
        ));
    gh.factory<_i36.TypewriterBranchBloc>(
      () => _i36.TypewriterBranchBloc(
        gh<_i10.IBranchRepository>(),
        gh<_i21.IDefaultCoversRepository>(),
        gh<_i24.ISessionsRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i37.TypewriterTreeBloc>(
      () => _i37.TypewriterTreeBloc(
        gh<_i21.IDefaultCoversRepository>(),
        gh<_i24.ISessionsRepository>(),
        gh<_i12.ITreeRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i38.BranchBloc>(() => _i38.BranchBloc(
          gh<_i8.IAuthFacade>(),
          gh<_i10.IBranchRepository>(),
          gh<_i24.ISessionsRepository>(),
          gh<_i27.ISettingsRepository>(),
          gh<_i14.IUserRepository>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i39.FirebaseInjectableModule {}

class _$IIsarInjectableModule extends _i40.IIsarInjectableModule {}

class _$ISharedPreferencesInjectableModule
    extends _i41.ISharedPreferencesInjectableModule {}
