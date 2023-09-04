import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/presentation/routes/router.dart';

/// @nodoc
@singleton
class AuthGuard extends AutoRouteGuard {
  /// @nodoc
  AuthGuard(this._authBloc);

  /// @nodoc
  final AuthBloc _authBloc;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    _authBloc.state.maybeMap(
      authenticated: (_) {
        resolver.next();
      },
      orElse: () {
        router.push(LogInRoute(navigateTo: resolver.route.toPageRouteInfo()));
      },
    );
  }
}
