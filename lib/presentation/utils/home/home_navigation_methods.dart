import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';

/// @nodoc
class HomeNavigationMethods {
  /// @nodoc
  HomeNavigationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void pageViewIndexChanged(int index) => context
      .read<HomeNavigationBloc>()
      .add(HomeNavigationEvent.pageViewIndexChangedEVT(index));

  /// @nodoc
  void willPop() {
    context
        .read<HomeNavigationBloc>()
        .add(const HomeNavigationEvent.willPopEVT());
  }

  /// @nodoc
  void toggleDrawer({bool isRight = true}) {
    if (isRight) {
      context
          .read<HomeNavigationBloc>()
          .add(const HomeNavigationEvent.rightDrawerIconPressedEVT());
    } else {
      context
          .read<HomeNavigationBloc>()
          .add(const HomeNavigationEvent.leftDrawerIconPressedEVT());
    }
  }

  /// @nodoc
  void resetBloc() => context
      .read<HomeNavigationBloc>()
      .add(const HomeNavigationEvent.resetBlocEVT());
}
