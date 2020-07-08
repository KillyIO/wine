import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/outlier/core/core_outlier_bloc.dart';
import 'package:wine/presentation/pages/splash/splash_page.dart';
import 'package:wine/routes.dart';

class DevelopmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreOutlierBloc, CoreOutlierState>(
      builder: (context, cOState) {
        final List<String> deviceLocale = cOState.deviceLocale.split('_');

        return StyledToast(
          locale: deviceLocale.length == 2 ? Locale(deviceLocale[0], deviceLocale[1]) : const Locale('en', 'US'),
          child: MaterialApp(
            title: 'WINE Dev',
            home: SplashPage(),
            onGenerateRoute: sailor.generator(),
            navigatorKey: sailor.navigatorKey,
            navigatorObservers: [SailorLoggingObserver()],
          ),
        );
      },
    );
  }
}
