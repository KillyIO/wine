import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/home/home_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: MultiBlocProvider(
        providers: <BlocProvider>[
          BlocProvider(
            create: (_) => getIt<HomeBloc>()..add(HomeEvent.homePageLaunched()),
          ),
          BlocProvider(
            create: (context) => getIt<HomeNavigationBloc>(),
          ),
        ],
        child: HomeLayout(),
      ),
      value: lightTheme,
    );
  }
}
