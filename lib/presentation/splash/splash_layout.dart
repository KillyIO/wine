import 'package:auto_route/auto_route.dart';
import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/presentation/core/dialogs/error_dialog.dart';
import 'package:wine/presentation/splash/widgets/splash_copyright.dart';
import 'package:wine/utils/assets/animations.dart';

/// @nodoc
class SplashLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        state.maybeMap(
          authenticated: (value) => value.authOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                orElse: () {},
                serverError: (_) async {
                  final result = await showDialog(
                    context: context,
                    builder: (_) => ErrorDialog(
                      message: 'An unexpected error occured!',
                      buttonText: 'RESTART',
                      onPressed: () async =>
                          ExtendedNavigator.of(context).pop<bool>(true),
                    ),
                  );

                  if (result) {
                    context
                        .read<SplashBloc>()
                        .add(const SplashEvent.splashPageLaunched());
                  }
                },
              ),
              (_) {},
            ),
          ),
          orElse: null,
        );
      },
      child: Stack(
        children: <Widget>[
          FlareLoading(
            name: logoAnimation,
            startAnimation: 'logo',
            loopAnimation: 'logo',
            onError: (error, stacktrace) {},
            onSuccess: (data) {},
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SplashCopyright(),
            ),
          ),
        ],
      ),
    );
  }
}
