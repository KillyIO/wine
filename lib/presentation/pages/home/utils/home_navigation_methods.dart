import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';

class HomeNavigationMethods {
  final BuildContext context;

  HomeNavigationMethods(this.context);

  void pageViewIndexChanged(int index) =>
      context.bloc<HomeNavigationBloc>().add(HomeNavigationEvent.pageViewIndexChangedEVT(index: index));

  void closeDrawer({bool isRight = true}) {
    if (isRight) {
      context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.rightDrawerIconPressedEVT(isDrawerOpen: false));
    } else {
      context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.leftDrawerIconPressedEVT(isDrawerOpen: false));
    }
  }

  void openDrawer({bool isRight = true}) {
    if (isRight) {
      context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.rightDrawerIconPressedEVT(isDrawerOpen: true));
    } else {
      context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.leftDrawerIconPressedEVT(isDrawerOpen: true));
    }
  }

  void resetBloc() => context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.resetBlocEVT());
}
