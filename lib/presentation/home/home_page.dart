import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/home/home_layout.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // TODO(SSebigo): replace this for BlocProvider
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<SetupBloc>()..add(const SetupEvent.appLaunched()),
        ),
      ],
      child: const SafeArea(child: HomeLayout()),
    );
  }
}
