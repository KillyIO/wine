import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';

class HomeListeners {
  BlocListener<HomeNavigationBloc, HomeNavigationState> _navListener() =>
      BlocListener<HomeNavigationBloc, HomeNavigationState>(
        listener: (context, state) {},
      );

  List<BlocListener> get listeners => <BlocListener>[_navListener()];
}
