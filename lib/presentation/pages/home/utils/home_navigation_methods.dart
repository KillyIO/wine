import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class HomeNavigationMethods {
  final BuildContext context;

  HomeNavigationMethods(this.context);

  void pageViewIndexChanged(int index) =>
      context.bloc<HomeNavigationBloc>().add(HomeNavigationEvent.pageViewIndexChangedEVT(index: index));

  void openDrawer() {
    context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.drawerIconPressedEVT(isDrawerOpen: true));
    sailor(Constants.homeDrawerRoute);
  }

  void closeDrawer({bool pop = false}) {
    context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.drawerIconPressedEVT(isDrawerOpen: false));
    if (pop) {
      Navigator.of(context).pop();
    }
  }

  void newSeriesIconPressed({@required bool isNSOpen}) => context
      .bloc<HomeNavigationBloc>()
      .add(HomeNavigationEvent.newSeriesIconPressedEVT(isNewSeriesPageOpen: isNSOpen));

  void resetBloc() =>
      context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.resetBlocEVT());
}
