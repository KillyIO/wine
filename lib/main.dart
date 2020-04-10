import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/app.dart';
import 'package:wine/blocs/splash/splash_bloc.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SplashBloc>(
          create: (BuildContext context) => SplashBloc(),
        ),
      ],
      child: App(),
    ),
  );
}
