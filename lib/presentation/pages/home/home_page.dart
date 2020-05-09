import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/home/widgets/home_layout.dart';
import 'package:wine/utils/themes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<HomeDatabaseBloc>(),
          ),
        ],
        child: HomeLayout(),
      ),
    );
  }
}
