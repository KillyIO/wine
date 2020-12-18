import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/splash/splash_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext context) =>
                  getIt<SplashAuthenticationBloc>()
                    ..add(const SplashAuthenticationEvent.splashLaunchedEVT()),
            ),
            BlocProvider(
              create: (BuildContext context) => getIt<SplashDatabaseBloc>(),
            ),
          ],
          child: SplashLayout(),
        ),
      ),
    );
  }
}
