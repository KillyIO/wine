import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/splash/splash_layout.dart';
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
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocProvider(
          create: (context) => getIt<SplashBloc>(),
          child: SplashLayout(),
        ),
      ),
      value: lightTheme,
    );
  }
}
