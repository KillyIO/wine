import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/home/home_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class HomePage extends StatelessWidget {
  /// @nodoc
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                getIt<SetupBloc>()..add(const SetupEvent.appLaunched()),
          ),
        ],
        child: const HomeLayout(),
      ),
    );
  }
}
