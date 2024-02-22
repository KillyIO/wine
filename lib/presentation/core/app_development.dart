import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/themes.dart';

class AppDevelopment extends StatelessWidget {
  AppDevelopment({super.key});

  final _authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());
  late final _appRouter = AppRouter(_authBloc);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) => _authBloc,
        ),
        BlocProvider(create: (_) => getIt<HomeBloc>()),
        BlocProvider(create: (_) => getIt<LibraryBloc>()),
      ],
      child: MaterialApp.router(
        builder: (_, router) => Banner(
          color: Colors.green.withOpacity(0.6),
          location: BannerLocation.topStart,
          message: '[DEV] Wine',
          textDirection: TextDirection.ltr,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            letterSpacing: 1,
          ),
          child: router,
        ),
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: lightTheme,
        title: '[DEV] Wine',
      ),
    );
  }
}
