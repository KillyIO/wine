import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/flavors.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  /// @nodoc
  AppDevelopment({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.authChanged()),
        ),
        BlocProvider(create: (_) => getIt<HomeBloc>()),
        BlocProvider(create: (_) => getIt<LibraryBloc>()),
      ],
      child: MaterialApp.router(
        builder: (_, router) => router!,
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: lightTheme,
        title: F.title,
      ),
    );
  }
}
