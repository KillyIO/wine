import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/utils/assets/animations.dart';

/// @nodoc
class SplashLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Stack(
        children: <Widget>[
          FlareLoading(
            name: logoAnimation,
            startAnimation: 'logo',
            loopAnimation: 'logo',
            onError: (error, stacktrace) {},
            onSuccess: (data) {},
          )
        ],
      ),
    );
  }
}
