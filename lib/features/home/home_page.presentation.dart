import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/features/home/home_layout.presentation.dart';
import 'package:wine/injection.dart';

/// @nodoc
class HomePage extends StatelessWidget {
  /// @nodoc
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
