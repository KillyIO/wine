import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/flavors.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/routes/guards/auth_guard.dart';
import 'package:wine/presentation/routes/router.gr.dart';

/// @nodoc
class AppProduction extends StatelessWidget {
  /// @nodoc
  AppProduction({Key? key}) : super(key: key);

  // /// @nodoc
  // final FirebaseAnalytics analytics = FirebaseAnalytics();
  final _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<HomeBloc>()),
      ],
      child: MaterialApp.router(
        builder: (_, router) => router!,
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: F.title,
      ),
    );
  }
}
