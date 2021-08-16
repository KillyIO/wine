import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/injection.dart';

import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/presentation/sign_up/sign_up_layout.dart';
import 'package:wine/utils/assets/icons.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SignUpPage extends StatelessWidget {
  /// @nodoc
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: lightTheme,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(41.5),
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
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: AssetButton(
                key: const Key('plus_layout_back_button'),
                imagePath: backIcon,
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  context.router.root.pop();
                },
              ),
            ),
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
