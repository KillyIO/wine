import 'package:auto_route/auto_route.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/routes/router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._authBloc);

  final AuthBloc _authBloc;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    _authBloc.state.maybeMap(
      authenticated: (_) {
        resolver.next();
      },
      orElse: () {
        final navigateTo = resolver.route.toPageRouteInfo();

        router.push(LogInRoute(navigateTo: navigateTo));
      },
    );
  }
}
