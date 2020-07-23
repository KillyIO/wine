import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';

class HomeListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDbListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, state) {
          if (state.publishedFromHome) {
            context.bloc<HomeDatabaseBloc>().add(const HomeDatabaseEvent.filtersAppliedEVT());
            context.bloc<CoreDatabaseBloc>().add(const CoreDatabaseEvent.publishedFromHomeEVT());
          }
        },
      );

  BlocListener<HomeNavigationBloc, HomeNavigationState> _homeNavListener() =>
      BlocListener<HomeNavigationBloc, HomeNavigationState>(
        listener: (context, state) {},
      );

  List<BlocListener> get listeners => <BlocListener>[_coreDbListener(), _homeNavListener()];
}
