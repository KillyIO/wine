import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/auth/auth_bloc.application.dart';

import 'package:wine/presentation/routes/router.dart';

/// @nodoc
class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;
    final authBloc = context?.read<AuthBloc>();

    authBloc?.state.maybeMap(
      authenticated: (_) {
        resolver.next();
      },
      orElse: () {
        router.root
            .push(LogInRoute(navigateTo: resolver.route.toPageRouteInfo()));
      },
    );
  }
}
