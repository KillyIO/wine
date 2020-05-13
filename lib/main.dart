import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/app_widget.dart';
import 'package:wine/routes.dart';
import 'package:wine/simple_bloc_delegate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  BlocSupervisor.delegate = SimpleBlocDelegate();

  await configureInjection(Environment.prod);
  createRoutes();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CoreAuthenticationBloc>(
        create: (_) => getIt<CoreAuthenticationBloc>()
          ..add(const CoreAuthenticationEvent.appLaunched()),
      ),
      BlocProvider(
        create: (context) => getIt<HomeNavigationBloc>(),
      ),
    ],
    child: AppWidget(),
  ));
}
