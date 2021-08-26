import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestRouterWidget extends StatelessWidget {
  const TestRouterWidget({
    Key? key,
    required this.appRouter,
    required this.providers,
  }) : super(key: key);

  final RootStackRouter appRouter;

  final List<BlocProvider> providers;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp.router(
        builder: (_, router) {
          return router!;
        },
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        title: 'TestRouterWidget',
      ),
    );
  }
}
