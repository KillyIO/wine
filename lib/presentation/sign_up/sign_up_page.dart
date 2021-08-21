import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/sign_up/sign_up_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SignUpPage extends StatelessWidget {
  /// @nodoc
  const SignUpPage({Key? key}) : super(key: key);

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
              child: IconButton(
                key: const Key('sign_up_back'),
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                icon: const Icon(
                  Icons.keyboard_backspace_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  context.router.root.pop();
                },
                splashColor: Colors.transparent,
              ),
            ),
            leadingWidth: defaultToolbarItemWidth,
          ),
        ),
        body: BlocProvider(
          create: (_) => getIt<SignUpBloc>(),
          child: const SignUpLayout(),
        ),
      ),
    );
  }
}
