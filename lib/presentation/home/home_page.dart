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
  /// @nodoc
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: MultiBlocProvider(
        providers: <BlocProvider>[
          BlocProvider(
            create: (_) =>
                getIt<HomeBloc>()..add(const HomeEvent.homePageLaunched()),
          ),
          BlocProvider(
            create: (context) => getIt<HomeNavigationBloc>(),
          ),
        ],
        child: HomeLayout(),
      ),
    );
  }
}
