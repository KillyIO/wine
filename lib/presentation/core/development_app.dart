import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:wine/application/outlier/core/core_outlier_bloc.dart';
import 'package:wine/presentation/routes/router.gr.dart';

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
            builder: ExtendedNavigator<Router>(router: Router()),
          ),
        );
      },
    );
  }
}
