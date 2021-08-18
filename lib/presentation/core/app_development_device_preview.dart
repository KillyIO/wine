import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/settings/settings_bloc.dart';
import 'package:wine/flavors.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/routes/guards/auth_guard.dart';
import 'package:wine/presentation/routes/router.dart';

/// @nodoc
class AppDevelopmentDevicePreview extends StatelessWidget {
  /// @nodoc
  AppDevelopmentDevicePreview({Key? key}) : super(key: key);

  final _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.authChanged()),
        ),
        BlocProvider(create: (_) => getIt<HomeBloc>()),
        BlocProvider(create: (_) => getIt<SettingsBloc>()),
      ],
      child: MaterialApp.router(
        builder: (_, router) {
          return DevicePreview(
            plugins: const [
              ScreenshotPlugin(),
            ],
            builder: (context) => router!,
          );
        },
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: F.title,
      ),
    );
  }
}
