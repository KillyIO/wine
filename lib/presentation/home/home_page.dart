import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/home/home_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class HomePage extends StatefulWidget {
  /// @nodoc
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    context.read<HomeBloc>()..add(const HomeEvent.homePageLaunched());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: BlocProvider<HomeNavigationBloc>(
        create: (_) => getIt<HomeNavigationBloc>(),
        child: HomeLayout(),
      ),
    );
  }
}
