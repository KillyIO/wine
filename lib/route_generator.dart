import 'package:flutter/material.dart';
import 'package:wine/models/route_transition.dart';
import 'package:wine/pages/account/account.dart';
import 'package:wine/pages/account/complete.dart';
import 'package:wine/pages/account/sign_in.dart';
import 'package:wine/pages/account/sign_up.dart';
import 'package:wine/pages/home/home.dart';
import 'package:wine/pages/series/new_series.dart';
import 'package:wine/pages/settings/settings.dart';
import 'package:wine/pages/splash/splash.dart';

class WINECustomRoute<T> extends MaterialPageRoute<T> {
  WINECustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    if (settings.arguments is RouteTransition) {
      switch (settings.arguments) {
        case RouteTransition.fade:
          return FadeTransition(child: child, opacity: animation);
          break;
        case RouteTransition.bottomup:
          return SlideTransition(
            transformHitTests: false,
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: new SlideTransition(
              position: new Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(0.0, -1.0),
              ).animate(secondaryAnimation),
              child: child,
            ),
          );
          break;
        default:
          return child;
      }
    }
    return child;
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/splash':
        return WINECustomRoute(builder: (_) => SplashPage());
        break;
      case '/home':
        if (args is RouteTransition)
          return WINECustomRoute(
            builder: (_) => HomePage(),
            settings: settings,
          );
        return WINECustomRoute(builder: (_) => HomePage());
        break;
      case '/settings':
        if (args is RouteTransition)
          return WINECustomRoute(
            builder: (_) => SettingsPage(),
            settings: settings,
          );
        return WINECustomRoute(builder: (_) => SettingsPage());
        break;
      case '/account':
        if (args is RouteTransition)
          return WINECustomRoute(
            builder: (_) => AccountPage(),
            settings: settings,
          );
        return WINECustomRoute(builder: (_) => AccountPage());
        break;
      case '/account/sign-in':
        if (args is RouteTransition)
          return WINECustomRoute(
            builder: (_) => SignInPage(),
            settings: settings,
          );
        return WINECustomRoute(builder: (_) => SignInPage());
        break;
      case '/account/sign-up':
        if (args is RouteTransition)
          return WINECustomRoute(
            builder: (_) => SignUpPage(),
            settings: settings,
          );
        return WINECustomRoute(builder: (_) => SignUpPage());
        break;
      case '/account/complete':
        if (args is RouteTransition)
          return WINECustomRoute(
            builder: (_) => CompletePage(),
            settings: settings,
          );
        return WINECustomRoute(builder: (_) => CompletePage());
        break;
      case '/series/new':
        if (args is RouteTransition)
          return WINECustomRoute(
            builder: (_) => NewSeriesPage(),
            settings: settings,
          );
        return WINECustomRoute(builder: (_) => NewSeriesPage());
        break;
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return WINECustomRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
