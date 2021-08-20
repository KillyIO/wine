import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';

import 'package:wine/presentation/log_in/log_in_layout.dart';
import 'package:wine/utils/assets/icons.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class LogInPage extends StatelessWidget {
  /// @nodoc
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(defaultAppBarHeight),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                color: Colors.black,
                height: 2,
              ),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0,
            leading: Padding(
              padding: getAssetBackButtonPadding(mediaQuery),
              child: AssetButton(
                key: const Key('plus_layout_back_button'),
                imagePath: backIcon,
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  context.router.root.pop();
                },
              ),
            ),
            leadingWidth: defaultToolbarItemWidth,
          ),
        ),
        body: BlocProvider(
          create: (_) => getIt<LogInBloc>(),
          child: const LogInLayout(),
        ),
      ),
    );
  }
}
