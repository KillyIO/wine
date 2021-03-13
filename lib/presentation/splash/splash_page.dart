import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/splash/splash_layout.dart';

/// @nodoc
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return BlocProvider(
      create: (context) => getIt<SplashBloc>(),
      child: SplashLayout(),
    );
  }
}
