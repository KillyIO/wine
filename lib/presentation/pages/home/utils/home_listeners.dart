import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

class HomeListeners {
  BlocListener<HomeNavigationBloc, HomeNavigationState> _navListener() =>
      BlocListener<HomeNavigationBloc, HomeNavigationState>(
        listener: (context, state) {
          if (state.isNewSeriesPageOpen) {
            sailor.navigate(Constants.newSeriesRoute, args: NewSeriesPageArgs());
          }
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_navListener()];
}
