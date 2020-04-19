import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/app.dart';
import 'package:wine/blocs/account/account_bloc.dart';
import 'package:wine/blocs/home/home_bloc.dart';
import 'package:wine/blocs/settings/settings_bloc.dart';
import 'package:wine/blocs/splash/splash_bloc.dart';
import 'package:wine/repositories/local_storage_repository.dart';
import 'package:wine/simple_bloc_delegate.dart';

void main() async {
  BlocSupervisor.delegate = SimpleBlocDelegate();

  WidgetsFlutterBinding.ensureInitialized();

  final LocalStorageRepository _localStorageRepository =
      LocalStorageRepository();
  await _localStorageRepository?.initLocalStorage();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SplashBloc>(
          create: (BuildContext context) => SplashBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(),
        ),
        BlocProvider<SettingsBloc>(
          create: (BuildContext context) => SettingsBloc(),
        ),
        BlocProvider<AccountBloc>(
          create: (BuildContext context) => AccountBloc(),
        ),
      ],
      child: App(),
    ),
  );
}
