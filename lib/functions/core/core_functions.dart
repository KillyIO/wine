import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/routes/router.gr.dart';

/// @nodoc
void pseudoRestart(BuildContext context) {
  ExtendedNavigator.root.pushAndRemoveUntil(Routes.homePage, (route) => false);
  context
      .read<CoreAuthenticationBloc>()
      .add(const CoreAuthenticationEvent.userStatusChanged());
  context
      .read<HomeNavigationBloc>()
      .add(const HomeNavigationEvent.resetBlocEVT());
}
